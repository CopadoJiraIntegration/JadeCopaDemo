// THIS CHECKS THE STATUS OF A SINGLE JOB.
var QueuableJobChecker = function(remote, recordId, key, jobId, start, finish, changed, status) {

    var checker = (function() {
        var successStatus = {Completed: true};
        var failureStatus = {Aborted: true, Failed: true};

        function isFinished(status) {
            return status && (successStatus[status] || isFailure(status));
        }

        function isFailure(status) {
            return status && failureStatus[status];
        }

        function getStatus(callback) {
            Visualforce.remoting.Manager.invokeAction(remote, recordId, key, jobId, function(results, event) {
                if(!event.status)
                   results = {job: {Status:'Completed'}};
                else if(event.status && event.result && event.result.redirectUrl != null) {
                    results = {job: {Status: 'Completed'}, redirectUrl: event.result.redirectUrl};
                }
                callback(results);
            }, {escape: false});
        }
        return {
            isFinished: isFinished,
            isFailure: isFailure,
            getStatus: getStatus
        };
    })();

    var checkTimeout, currentStatus, lastStatus = 0;
    var checkStatus = function() {
        checker.getStatus(function(results) {
            if(changed && results.job.Status !== currentStatus || Date.now() - lastStatus > 3000) {
                changed(results);
                lastStatus = Date.now();
            }

            if(checker.isFinished(results.job.Status)) {
                if(checkTimeout)
                    clearTimeout(checkTimeout);

                var success = !checker.isFailure(results.job.Status);
                if(!success)
                    console.log('Job ' + jobId + ': ' + results.job.Status);

                finish(success, results);
                return;
            }
            currentStatus = results.job.Status;
            checkTimeout = setTimeout(checkStatus, 200);
        });
    };

    if(!checker.isFinished(status)) {
        start()
        checkStatus();
    }
};

// THIS CHECKS THE STATUS OF MULTIPLE JOBS.
var QueueableJobsChecker = function(remote, recordIds, key, asyncJobId, startCallback, finishCallback, changeCallback, initialResults) {
	// We need to instantiate an object that can track the statuses of multiple jobs.
	let statusChecker = (function() {
		// Create an object to let us store the types of statuses that count as successful or failed statuses.
		let successStatusMap = {Completed: true};
		let failureStatusMap = {Aborted: true, Failed: true};

		// The checker must be able to identify whether a given set of jobs are finished.
		function isFinished(jobList) {
			// If every status in the list is non-null, and its value is in one of the finished status maps, we're done.
			return jobList.every((job) => {return job.Status && (successStatusMap[job.Status] || failureStatusMap[job.Status])});
		}

		// The checker must be able to identify all indexes in a given job list that are failures.
		function findFailureIndexes(jobList) {
			let failedIndexes = [];
			jobList.forEach((job, index) => {
				if (job.Status && failureStatusMap[job.Status]) {
					failedIndexes.push(index);
				}
			});
			return failedIndexes;
		}

		// The checker must be able to determine whether anything changed since the last time we received an update.
		function hasStatusChanges(previousJobList, currentJobList) {
			// Iterate over the indexes of the lists until we find a pair that aren't the same.
			for (let i = 0; i < previousJobList.length; i++) {
				// If we find a pair that don't match, return true because something's changed.
				if (previousJobList[i].Status !== currentJobList[i].Status) {
					return true;
				}
			}
			// If we went through all of the results without finding any changes, return false.
			return false;
		}

		// The checker must be able to make a callout to check the status of all jobs under its purview.
		function getStatuses(callback) {
			let attemptsMade = 0;
			let calloutResponseHandler = function(results, event) {
				// The event parameter indicates whether the callout was a success or failure.
				if (!event.status) {
					// A false-y value for event.status indicates a failure. We'll make a total of three attempts before
					// giving up.
					if (attemptsMade++ < 3) {
						Visualforce.remoting.Manager.invokeAction(remote, recordIds, key, asyncJobId, calloutResponseHandler, {escape: false});
					} else {
						// After our third consecutive failure, we'll just return a string indicating that we were unable
						// to get the job statuses, and we'll include the returned error message.
						callback('Unable to retrieve status of job ' + asyncJobId + '. Error: ' + event.message);
					}
				} else {
					// A truthy value for event.status indicates success, and we can return the results.
					callback(results);
				}
			};
			Visualforce.remoting.Manager.invokeAction(remote, recordIds, key, asyncJobId, calloutResponseHandler, {escape: false});
		}

		return {
			isFinished: isFinished,
			findFailureIndexes: findFailureIndexes,
			hasStatusChanges: hasStatusChanges,
			getStatuses: getStatuses
		};
	})();

	// Now that we've instantiated this checker object, we need to define a function that can repeatedly use it to poll
	// the jobs' statuses.
	// We'll want the ID of the next recursive call, the results from the last call, and when the last call happened
	// to all be stored outside of the method.
	let nextTimeoutId = null;
	let previousResults = initialResults;
	let timeOfLastUpdate = Date.now();
	let checkStatusesUntilResolved = function() {
		// Have the checker check the statuses.
		statusChecker.getStatuses(function(results) {
			// If the results are just a string, that means we couldn't retrieve the statuses of the jobs. So call the
			// finish callback.
			if (typeof results === 'string') {
				finishCallback(null, results);
			}
			// A changeCallback can be provided to output status changes to the console log. If such a callback was provided,
			// then invoke the callback if anything's changed or it's been 3 seconds since we last called it.
			if (changeCallback && (statusChecker.hasStatusChanges(previousResults.jobs, results.jobs) || Date.now() - timeOfLastUpdate > 3000)) {
				changeCallback(previousResults, results);
				timeOfLastUpdate = Date.now();
			}

			// If the checker is finished, we need to stop doing the recursive calling and invoke any handlers we were given.
			if (statusChecker.isFinished(results.jobs)) {
				// If there's another callout set to happen, cancel it.
				if (nextTimeoutId) {
					clearTimeout(nextTimeoutId);
				}

				// Get the indexes of any record jobs that failed.
				let failureIndexes = statusChecker.findFailureIndexes(results.jobs);
				// Depending on whether there were any failures, we might want to make a console log.
				switch (failureIndexes.length) {
					case 0:
						// If no record jobs failed, we're fine.
						break;
					case recordIds.length:
						// If all record jobs failed, log it as a complete failure.
						console.log('Job ' + asyncJobId + ': All jobs failed.');
						break;
					default:
						// If only some of the jobs failed, it's still a failure, but it might be helpful from a debugging
						// perspective to output that only some of the jobs failed.
						console.log('Job ' + asyncJobId + ': Some jobs failed.');
						break;
				}

				// Call the provided finish handler.
				finishCallback(failureIndexes, results);
			} else {
				// If we're not done, we need to set up the next recursive call.
				previousResults = results;
				nextTimeoutId = setTimeout(checkStatusesUntilResolved, 200);
			}
		});
	};

	// Finally, make sure that the jobs aren't already done, then start the polling process.
	if (!statusChecker.isFinished(initialResults.jobs)) {
		startCallback();
		checkStatusesUntilResolved();
	}
};