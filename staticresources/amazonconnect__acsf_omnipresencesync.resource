/**

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

(function(ctx) {
  if (ctx.ACSFIntegration === undefined) {
    ctx.ACSFIntegration = {};
  }

  if (!sforce.console.isInConsole()) {
    ctx.ACSFIntegration.OmniPresenceSync = {
      onAgentHandler: function() {
        connect.getLog().info("ACSFIntegration:OmniPresenceSync:onAgentHandler not in console");
      }
    };

    return;
  }

  var _namespacePrefix;
  var _ccSettings;

  var _stateChangeInProgress = false;

  var _stateChangeSource;
  var _stateSyncConfig;
  var _connectStates;
  var _omniStates;
  var _context;

  var _connectAgentStateSubscription;

  ctx.ACSFIntegration.OmniPresenceSync = {
    onAgentHandler: function(namespacePrefix, ccSettings) {
      connect.getLog().info("ACSFIntegration:OmniPresenceSync:onAgentHandler invoked");

      _namespacePrefix = namespacePrefix;
      _ccSettings = ccSettings;

      initContext();

      var agentStateSyncEnabled = _ccSettings["/reqConnectSFCCPOptions/reqAgentStateSyncEnabled"] === 'true';

      if (agentStateSyncEnabled) {
        var _callCenterInternalName = _ccSettings["/reqGeneralInfo/reqInternalName"] || '';

        Promise.all( [loadRules(_callCenterInternalName), loadConnectStates(), loadOmniStates()]).then(function(results) {
          _stateSyncConfig = results[0];
          _connectStates = results[1];
          _omniStates = results[2];

          /*
          connect.agent(function (agent) {
            agent.onStateChange(handleConnectStateChange);
          });
           */

          enableAllEvents();
        });
      }
    }
  };

  function loadRules (callCenter) {
    return new Promise(function (resolve) {
      try {
        var presenceSyncConfigSO = new SObjectModel.Presence_Sync_Configuration();

        var query = {
          where: {
            'Call_Center': {'eq': callCenter}
          }
        };

        presenceSyncConfigSO.retrieve(
          query, function (err, records, event) {
            if (err) {
              connect.getLog().info('ACSFIntegration:OmniPresenceSync:loadRules:Error: %s', err.message);
              resolve(err.message);
            } else {
              if (records != null && records.length !== 1) {
                connect.getLog().info('ACSFIntegration:OmniPresenceSync:loadRules:Records: %s', JSON.stringify(records));
                resolve([]);
              } else {
                var safe = records[0].get('Rule').replace(/&quot;/g, "\"");
                resolve(JSON.parse(safe));
              }
            }
          });
      }
      catch (err) {
        connect.getLog().info('ACSFIntegration:OmniPresenceSync:loadRules:Error: %s', JSON.stringify(err));
        resolve([]);
      }
    });
  }

  function loadConnectStates() {
    return new Promise((resolve, reject) => {
      try {
        connect.agent(function (agent) {
          var states = new Map();
          agent.getAgentStates().forEach(function(record) {
            var key = record.name;
            var value = record;
            states.set(key, value);
          });
          resolve(states);
        });
      }
      catch (err) {
        reject();
      }
    });
  }

  function loadOmniStates() {
    return new Promise((resolve, reject) => {
      try {
        Visualforce.remoting.Manager.invokeAction(
          _namespacePrefix + "ACSFCCP_CallInformationController.getServicePresenceStatuses",
          function (result, event) {
            if (event.status && result) {
              var states = new Map();
              result.forEach(function (record) {
                var key = record.developerName;
                var value = record.id.substr(0, 15);
                states.set(key, value);
              });

              states.set('Offline', 'Offline');
              resolve(states);
            } else {
              reject();
            }
          }
        );
      }
      catch (err) {
        reject();
      }
    });
  }

  const handleConnectStateChange = function (state) {
    connect.getLog().info('ACSFIntegration:OmniPresenceSync:handleConnectStateChange: %s', JSON.stringify(state));

    disableAllEvents();

    var stateChangeInProgress = isStateChangeInProgress(['omni', 'work']);

    if (!stateChangeInProgress) {
      setStateChangeInProgress('connect', true);
      _context['connect']['agentState'] = state.newState;

      var actions = getStatusActionsBySource('connect.stateChange');
      processActions(actions);
      setStateChangeInProgress(null, false);
    }

    enableAllEvents();
  };

  const handleOmniStateChange = function (state) {
    disableAllEvents();

    var stateChangeInProgress = isStateChangeInProgress(['connect', 'work']);

    if (!stateChangeInProgress) {
      setStateChangeInProgress('omni', true);
      _context['omni']['agentState'] = state.statusApiName;

      var actions = getStatusActionsBySource('omni.stateChange');
      processActions(actions);
      setStateChangeInProgress(null, false);
    }

    enableAllEvents();
  };

 const handleOmniLogout = function () {
   var stateChangeInProgress = isStateChangeInProgress(['connect', 'work']);

   if (!stateChangeInProgress) {
     setStateChangeInProgress('omni', true);
     _context['omni']['agentState'] = 'Offline';

     var actions = getStatusActionsBySource('omni.stateChange');
     processActions(actions);
     setStateChangeInProgress(null, false);
   }
  };

  const handleOmniWorkloadChanged = function (workload) {
    var stateChangeInProgress = isStateChangeInProgress(['connect', 'omni']);

    if (!stateChangeInProgress) {
      setStateChangeInProgress('work', true);
      _context['omni']['configuredCapacity'] = workload.configuredCapacity;
      _context['omni']['previousWorkload'] = workload.previousWorkload;
      _context['omni']['newWorkload'] = workload.newWorkload;
      _context['omni']['previousWorkloadPct'] = workload.configuredCapacity === 0 ? 1 : workload.previousWorkload / workload.configuredCapacity;
      _context['omni']['newWorkloadPct'] = workload.configuredCapacity === 0 ? 1 : workload.newWorkload / workload.configuredCapacity;

      var actions = getStatusActionsBySource('omni.workloadChanged');
      processActions(actions);
      setStateChangeInProgress(null, false);
    }
  };

  const handleOmniWorkAccepted = function(work) {
    var stateChangeInProgress = isStateChangeInProgress(['connect', 'omni']);

    if (!stateChangeInProgress) {
      setStateChangeInProgress('work', true);
      getServiceChannelForWork(work.workId)
        .then(function (result) {
          _context['omni']['serviceChannel'] = result;

          var actions = getStatusActionsBySource('omni.workAccepted');
          processActions(actions);
          setStateChangeInProgress(null, false);
        })
        .catch(function () {
          _context['omni']['serviceChannel'] = null;
          setStateChangeInProgress(null, false);
        });
    }
  };

  function setConnectAgentState(state) {
    connect.getLog().info('ACSFIntegration:OmniPresenceSync:setConnectAgentState: %s', state);

    var newState = _connectStates.get(state);

    return new Promise((resolve) => {
      if (newState) {
        connect.agent(function (agent) {
          var currentState = agent.getState().name;

          if (canProcessStateChange('connect', currentState, newState.name)) {
            agent.setState(newState, {
              success: function () {
                resolve('success');
              },
              failure: function () {
                resolve('failure');
              }
            });
          }
          else {
            resolve('Unable to change from [' + currentState + '] to [' + newState + ']');
          }
        });
      }
      else {
        resolve('No matching state found.');
      }
    });
  }

  function setOmniAgentState(state) {
    connect.getLog().info('ACSFIntegration:OmniPresenceSync:setOmniAgentState: %s', state);

    var newState = _omniStates.get(state);

    return new Promise((resolve) => {
      if (newState) {
        if (state === 'Offline') {
          sforce.console.presence.logout(function (result) {
            if (result.success) {
              resolve('success');
            } else {
              resolve('failed');
            }
          });
        }
        else {
          sforce.console.presence.getServicePresenceStatusId(function (result) {
            if (result.success) {
              var currentState = result.statusId;

              if (canProcessStateChange('salesforce', currentState, newState)) {
                sforce.console.presence.setServicePresenceStatus(
                  newState,
                  function (result) {
                    if (result.success) {
                      resolve('success');
                    } else {
                      resolve('failed');
                    }
                  }
                );
              }
            }
            else {
              sforce.console.presence.login(
                newState,
                function(result) {
                  if (result.success) {
                    resolve('success');
                  } else {
                    resolve('failed');
                  }
                }
              );
            }
          });
        }
      }
      else {
        resolve('No matching state found.');
      }
    });
  }

  function getServiceChannelForWork(workId) {
    return new Promise((resolve, reject) => {
      Visualforce.remoting.Manager.invokeAction(
        _namespacePrefix + "ACSFCCP_CallInformationController.getWorkHolder",
        workId,
        function (result, event) {
          if (event.status && result) {
            connect.getLog().info("ACSFIntegration:OmniPresenceSync.getServiceChannelForWork: %s", JSON.stringify(result));
            resolve(result.serviceChannel);
          }
          else {
            reject();
          }
        }
      );
    });
  }

  function getStatusActionsBySource(source) {
    if (_stateSyncConfig && _stateSyncConfig.length > 0) {
      return _stateSyncConfig.filter(function (action) {
        return action.source === source;
      });
    }
    else {
      return [];
    }
  }

  function processActions(actions) {
     var promises = [];

    actions.forEach(action => {
      if (evaluateCriteria(action.criteria)) {
        if (action.destination === 'connect') {
          promises.push(setConnectAgentState(action.state));
        } else if (action.destination === 'salesforce') {
          promises.push(setOmniAgentState(action.state));
        }
      }
    });

    Promise.all(promises)
      .then((results) => {
        //connect.getLog().info("Actions complete: %s", JSON.stringify(results));
      })
      .catch((error) => {
        //connect.getLog().info("Actions failed: %s", JSON.stringify(error));
      });
  }

  function evaluateCriteria(criteria) {
    var operandA = expandOperand(criteria.operandA);
    var comparator = criteria.comparator;
    var operandB = expandOperand(criteria.operandB);

    var comparison = processComparison(operandA, comparator, operandB);

    return comparison;
  }

  function expandOperand(operand) {
    var value;

    switch (operand) {
      case 'connect.agentState':
        value = _context.connect.agentState; break;
      case 'omni.agentState':
        value = _context.omni.agentState; break;
      case 'omni.serviceChannel':
        value = _context.omni.serviceChannel; break;
      case 'omni.previousWorkload':
        value = parseInt(_context.omni.previousWorkload, 10); break;
      case 'omni.previousWorkloadPct':
        value = parseFloat(_context.omni.previousWorkloadPct); break;
      case 'omni.newWorkload':
        value = parseInt(_context.omni.newWorkload, 10); break;
      case 'omni.newWorkloadPct':
        value = parseFloat(_context.omni.newWorkloadPct); break;
      case 'omni.configuredCapacity':
        value = parseInt(_context.omni.configuredCapacity, 10); break;
      default: // Literal value without expansion
        value = operand;
    }

    return value;
  }

  function processComparison(operandA, comparator, operandB) {
    var result = false;

    comparator = comparator.replace('&lt;','<').replace('&gt;', '>');

    switch (comparator) {
      case '===':
        result = operandA === operandB; break;
      case '!==':
        result = operandA !== operandB; break;
      case '>':
        result = operandA > operandB; break;
      case '>=':
        result = operandA >= operandB; break;
      case '<':
        result = operandA < operandB; break;
      case '<=':
        result = operandA <= operandB; break;
      default:
        result = false;
    }

    return result;
  }

  function enableAllEvents() {
    console.log('!!!!!!!!!! Enabling All Events');
    enableConnectEvents();
    enableSalesforceEvents();
  }

  function disableAllEvents() {
    disableConnectEvents();
    disableSalesforceEvents();
  }

  function enableConnectEvents() {
    var bus = connect.core.getEventBus();

    _connectAgentStateSubscription = bus.subscribe(connect.AgentEvents.STATE_CHANGE, e => {
      handleConnectStateChange(e);
    });
  }

  function disableConnectEvents() {
    _connectAgentStateSubscription.unsubscribe();
  }

  function enableSalesforceEvents() {
    sforce.console.addEventListener(
      sforce.console.ConsoleEvent.PRESENCE.STATUS_CHANGED,
      handleOmniStateChange
    );

    sforce.console.addEventListener(
      sforce.console.ConsoleEvent.PRESENCE.LOGOUT,
      handleOmniLogout
    );

    sforce.console.addEventListener(
      sforce.console.ConsoleEvent.PRESENCE.WORKLOAD_CHANGED,
      handleOmniWorkloadChanged
    );

    sforce.console.addEventListener(
      sforce.console.ConsoleEvent.PRESENCE.WORK_ACCEPTED,
      handleOmniWorkAccepted
    );
  }

  function disableSalesforceEvents() {
    sforce.console.removeEventListener(
      sforce.console.ConsoleEvent.PRESENCE.STATUS_CHANGED,
      handleOmniStateChange
    );

    sforce.console.removeEventListener(
      sforce.console.ConsoleEvent.PRESENCE.LOGOUT,
      handleOmniLogout
    );

    sforce.console.removeEventListener(
      sforce.console.ConsoleEvent.PRESENCE.WORKLOAD_CHANGED,
      handleOmniWorkloadChanged
    );

    sforce.console.removeEventListener(
      sforce.console.ConsoleEvent.PRESENCE.WORK_ACCEPTED,
      handleOmniWorkAccepted
    );
  }

  function setStateChangeInProgress(stateChangeSource, stateChangeInProgress) {
    _stateChangeSource = stateChangeSource;
    _stateChangeInProgress = stateChangeInProgress;
  }

  function isStateChangeInProgress(stateChangeSources) {
     return _stateChangeInProgress && _stateChangeSource && stateChangeSources.includes(_stateChangeSource);;
  }

  function initContext() {
    _context = {
      'connect': {},
      'omni': {}
    };
  }

  function sleep(milliseconds) {
    var start = new Date().getTime();
    for (var i = 0; i < 1e7; i++) {
      if ((new Date().getTime() - start) > milliseconds){
        break;
      }
    }
  }

  function canProcessStateChange(destination, currentState, newState) {
    var canProcessStateChange = true;

    console.log('^^^^^^^^^^ canProcessStateChange currentState: ' + currentState + ', newState: ' + newState);

    if (destination === 'connect') {
      if (currentState === 'Busy' || newState === 'Busy') {
        canProcessStateChange = false;
      }
      else if (currentState === 'Pending' || newState === 'Pending') {
        canProcessStateChange = false;
      }
      else if (currentState === 'PendingBusy' || newState === 'PendingBusy') {
        canProcessStateChange = false;
      }
      else if (currentState === 'CallingCustomer' || newState === 'CallingCustomer') {
        canProcessStateChange = false;
      }
      else if (currentState === 'BusyPhone' || newState === 'BusyPhone') {
        canProcessStateChange = false;
      }
      else if (newState === currentState) {
        canProcessStateChange = false;
      }
    }
    else if (destination === 'salesforce') {
      if (newState === currentState) {
        canProcessStateChange = false;
      }
    }

    return canProcessStateChange;
  }

  const getCircularReplacer = () => {
    const seen = new WeakSet();
    return (key, value) => {
      if (typeof value === "object" && value !== null) {
        if (seen.has(value)) {
          return;
        }
        seen.add(value);
      }
      return value;
    };
  };
})(this);
