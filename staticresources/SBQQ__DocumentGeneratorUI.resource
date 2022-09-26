function QuoteDocumentGeneratorCtrl(scope, sce, controllerManager, metaDataService, quoteDocumentService) {
	controllerManager.register('QuoteDocumentGenerator', this);

	this.scope = scope;
	this.scope.sce = sce;
	this.scope.active = false;
	this.scope.controller = this;
	this.scope.controllerManager = controllerManager;
	this.scope.quoteDocumentService = quoteDocumentService;
	this.scope.metaDataService = metaDataService;
	this.scope.initialized = false;
	this.scope.blockingOperationInProgress = false;

	this.scope.onLoad = this.onLoad;
	this.scope.onCancel = this.onCancel;
	this.scope.onPreview = this.onPreview;
	this.scope.waitForGenerator = this.waitForGenerator;
	this.scope.onSave = this.onSave;
	this.scope.onSaveAndEmail = this.onSaveAndEmail;
	this.scope.onSaveAndSendESignature = this.onSaveAndSendESignature;
	this.scope.onTemplateChanged = this.onTemplateChanged;
	this.scope.onEmailMe = this.onEmailMe;
	this.scope.mobilePreview = false;
	this.scope.zoomIn = this.zoomIn;
	this.scope.zoomOut = this.zoomOut;

	this.mobilePreviewScale = 1;
	this.previewDlg = null;
	this.scope.namespacePrefix = this.scope.metaDataService.namespace;
	if (this.scope.namespacePrefix !== '') {
		this.scope.namespacePrefix += '.';
	}

}
QuoteDocumentGeneratorCtrl.$inject = ['$scope', '$sce', 'controllerManager', 'metaDataService', 'quoteDocumentServiceProxy'];
QuoteDocumentGeneratorCtrl.prototype = new Controller();


QuoteDocumentGeneratorCtrl.prototype.onPreview = function() {
	var scope = this;
	scope.blockingOperationInProgress = true;
	scope.errors = null;

	var qid = scope.documentModel.quoteId;
	var tid = scope.documentModel.templateId;
	var dn = scope.documentModel.documentName;
	var of = scope.documentModel.outputFormat;
	var os = scope.documentModel.paperSize;
	var docIds = scope.relatedContentSelectionModel.getSelectedValues();
	var language = scope.documentModel.language;
	var quoteDocIdx = 0;
	for (var i=0;i<docIds.length;i++) {
		if (docIds[i] == qid) {
			quoteDocIdx = i;
		}
	}

	var successHandler = function(/*String*/ jobId) {

		function loadPreview(/*String*/ parts) {
			scope.blockingOperationInProgress = false;
			var iframe;

			if (Controller.isMobileDevice()) {
				scope.mobilePreview = true;
				scope.showZoom = true;
			} else {
				scope.controller.previewDlg.show();
				iframe = document.getElementById(scope.controller.previewDlg.getPreviewFrameId());
			}
			if (!Controller.isMobileContext() && Controller.isMobileDevice()) {
				scope.showZoom = false;
				document.getElementById('mobilePreviewButtons').style.textAlign = 'center';
				document.getElementById('mobilePreviewButtons').style.marginTop = '15px';
			}
			if (Controller.isMobileDevice()) {
				loadMobilePreview(parts);
			} else {
				scope.controller.loadPreview(iframe, parts);
			}
			scope.$apply();
		}

		scope.waitForGenerator(jobId, loadPreview);
	};
	if (Controller.isMobileDevice()) {
		scope.quoteDocumentService.generateProposal(language, qid, tid, dn, of, os, docIds, true, successHandler, this.controller.createErrorHandler());
	} else {
		scope.quoteDocumentService.generateDocument(language, qid, tid, dn, of, os, docIds, successHandler, this.controller.createErrorHandler());
	}
}

QuoteDocumentGeneratorCtrl.prototype.waitForGenerator = function(/*String*/ jobId, /*function*/ callback) {
	var scope = this;
	var qid = scope.documentModel.quoteId;

	var s1 = Date.now();
	// Background job.  So spin
	function startChecking() {
		scope.blockingOperationInProgress = true;
	}

	function statusChanged(results) {
		console.log('Document Generator - ' + results.job.Status + ' - ' + ((Date.now() - s1)/1000) + ' seconds');
	}

	function finishChecking(success, results) {
		var payload = results.payload == null ? null : angular.fromJson(results.payload);
		if (success) {
			callback(payload);
		} else {
			scope.messages = [{severity:'error',summary:scope.sce.trustAsHtml(results.job.ExtendedStatus)}];
			scope.blockingOperationInProgress = false;
			scope.$apply();
			scope.controller.refocus();
		}
	}

	QueuableJobChecker(scope.namespacePrefix + 'QueueableJobCheckerExt.getJobStatus', qid, 'QuoteDocumentService', jobId, startChecking, finishChecking, statusChanged, null);
}

/**
 * Helper function to alert the user when generating a document for an uncalculated Quote
 */

confirmOnUncalculatedQuote = (scope, language, qid, tid, dn, of, os, docIds, successHandler, errorHandler, operation) => {

	Visualforce.remoting.Manager.invokeAction(
		`${scope.namespacePrefix}QueueableJobCheckerExt.getUncalculatedWithSetting`, qid,
		(result) => {
			if (result) {
				sb.dialog.confirm(
					(scope.documentModel.resources['msg_uncalculated_quote_on_doc_gen']),
					{
						ok: scope.documentModel.resources['ok'],
						cancel: scope.documentModel.resources['cancel']
					},
					(confirmed) => {
						if (confirmed) {
							processProposal(scope, language, qid, tid, dn, of, os, docIds, successHandler, errorHandler, operation);
							return;
						}
						else {
							scope.blockingOperationInProgress = false;
							scope.$apply();
							return;
						}
					}
				);
			}
			else {
				processProposal(scope, language, qid, tid, dn, of, os, docIds, successHandler, errorHandler, operation);
			}
			
		}
	);
};

/**
 * Helper function to either save/save and email the document
 */
processProposal = (scope, language, qid, tid, dn, of, os, docIds, successHandler, errorHandler, operation) => {

	if (operation === 'save') {
		scope.quoteDocumentService.saveProposal(language, qid, tid, dn, of, os, docIds, successHandler, errorHandler);
	}
	else if (operation === 'saveAndEmail') {
		scope.quoteDocumentService.saveAndEmailProposal(language, qid, tid, dn, of, os, docIds, successHandler, errorHandler);
	}
}

QuoteDocumentGeneratorCtrl.prototype.onSave = function() {
	var scope = this;
	scope.blockingOperationInProgress = true;
	scope.errors = null;

	var qid = scope.documentModel.quoteId;
	var tid = scope.documentModel.templateId;
	var dn = scope.documentModel.documentName;
	var of = scope.documentModel.outputFormat;
	var os = scope.documentModel.paperSize;
	var language = scope.documentModel.language;
	var docIds = scope.relatedContentSelectionModel.getSelectedValues();
	const operation = 'save';

	var successHandler = function(/*Id*/ jobId) {
		function loadDocDetails(/*QuoteDocument__c*/ quoteDocument) {
			if (sforce && sforce.console && sforce.console.isInConsole()) {
				// If we're in a console app, the specific behavior depends on whether we're in lighting or classic.
				if (sforce.one) {
					// In Lightning, we want to close this tab and then open a new tab pointing to the quote document.
					sforce.console.getEnclosingTabId((result) => {
						sforce.console.closeTab(result.id);
					});
					sforce.one.navigateToSObject(quoteDocument.Id, 'chatter');
				} else {
					// In Classic, we want to redirect the current tab back to the Quote detail page, and open a new tab
					// containing the Quote Document detail page.
					sforce.console.getEnclosingTabId((subTabResult) => {
						let subTabId = subTabResult.id;
						sforce.console.getEnclosingPrimaryTabId((primaryTabResult) => {
							let primaryTabId = primaryTabResult.id;
							sforce.console.getPageInfo(subTabId, (pageInfoResponse) => {
								sforce.console.openSubtab(primaryTabId, quoteDocument.Id, true, quoteDocument.Name, null, () => {
									sforce.console.openSubtab(primaryTabId, qid, false, pageInfoResponse.pageInfo.objectName, subTabId, null);
								});
							});
						});
					});
				}
			} else if (sforce && sforce.one) {
				sforce.one.navigateToSObject(quoteDocument.Id, 'chatter');
			} else {
				document.location.assign(scope.controller.getCommunityPrefix() + '/' + quoteDocument.Id);
			}
		}

		scope.waitForGenerator(jobId, loadDocDetails);
	};

	confirmOnUncalculatedQuote(scope, language, qid, tid, dn, of, os, docIds, successHandler, this.controller.createErrorHandler(),operation);
}




QuoteDocumentGeneratorCtrl.prototype.onSaveAndEmail = function() {
	var scope = this;
	scope.blockingOperationInProgress = true;
	scope.errors = null;

	var qid = scope.documentModel.quoteId;
	var tid = scope.documentModel.templateId;
	var dn = scope.documentModel.documentName;
	var of = scope.documentModel.outputFormat;
	var os = scope.documentModel.paperSize;
	var language = scope.documentModel.language;
	var docIds = scope.relatedContentSelectionModel.getSelectedValues();
	const operation = 'saveAndEmail';

	var successHandler = function(/*Id*/ jobId) {
		function loadEmailLink(resp) {
			if (typeof sforce != 'undefined' && sforce && sforce.one) {
				var url = document.location.origin + resp.emailLink + '&isdtp=nv';
				var w = 800, h = 600;
				var y = window.outerHeight / 2 + window.screenY - ( h / 2)
				var x = window.outerWidth / 2 + window.screenX - ( w / 2)
				window.open(url, 'Email Author', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=no, copyhistory=no, width='+w+', height='+h+', top='+y+', left='+x);
				sforce.one.navigateToSObject(resp.recordId);
			} else {
				document.location.assign(resp.emailLink);
			}
		}

		scope.waitForGenerator(jobId, loadEmailLink);
	};

	confirmOnUncalculatedQuote(scope, language, qid, tid, dn, of, os, docIds, successHandler, this.controller.createErrorHandler(), operation);
}


QuoteDocumentGeneratorCtrl.prototype.onSaveAndSendESignature = function() {
	var scope = this;
	scope.blockingOperationInProgress = true;
	scope.errors = null;

	var qid = scope.documentModel.quoteId;
	var tid = scope.documentModel.templateId;
	var dn = scope.documentModel.documentName;
	var of = scope.documentModel.outputFormat;
	var os = scope.documentModel.paperSize;
	var language = scope.documentModel.language;
	var docIds = scope.relatedContentSelectionModel.getSelectedValues();

	var successHandler = function(/*String*/ jobId) {

		function loadForESignature(/*String*/ resp) {
			if (resp.redirectURL) {
				if (sforce && sforce.one) {
					var redirectUrl = resp.redirectURL;
					// if the scope is not inside a community page, redirectUrl keeps same
					if (scope && scope.controller && scope.controller.getCommunityPrefix() &&
					    redirectUrl.startsWith('/') && !redirectUrl.startsWith('//')) {
						redirectUrl = scope.controller.getCommunityPrefix() + redirectUrl;
					}
					sforce.one.navigateToURL(redirectUrl);
				} else {
					document.location.assign(resp.redirectURL);
				}
			} else {
				if (sforce && sforce.console && sforce.console.isInConsole()) {
					var closeTheTab = function closeTheTab(result) {
						sforce.console.closeTab(result.id);
					};

					sforce.console.getEnclosingTabId(closeTheTab);
					sforce.one.navigateToSObject(resp.quoteDocument.Id, 'chatter');
				} else if (sforce && sforce.one) {
					sforce.one.navigateToSObject(resp.quoteDocument.Id, 'chatter');
				} else {
					document.location.assign(scope.controller.getCommunityPrefix() + '/' + resp.quoteDocument.Id);
				}
			}
		}

		scope.waitForGenerator(jobId, loadForESignature);
	};

	scope.quoteDocumentService.saveAndSendProposalForESignature(language, qid, tid, dn, of, os, docIds, successHandler, this.controller.createErrorHandler());
}

QuoteDocumentGeneratorCtrl.prototype.onEmailMe = function() {
	var scope = this;
	var language = scope.documentModel.language;
	scope.blockingOperationInProgress = true;
	scope.errors = null;

	var qid = scope.documentModel.quoteId;
	var tid = scope.documentModel.templateId;
	var dn = scope.documentModel.documentName;
	var of = scope.documentModel.outputFormat;
	var os = scope.documentModel.paperSize;
	var docIds = scope.relatedContentSelectionModel.getSelectedValues();

	var successHandler = function(/*String*/ jobId) {
		function loadEmailMe(/*String*/ ignore) {
			if (sforce && sforce.one) {
				sforce.one.navigateToSObject(qid, 'chatter');
			} else {
				document.location.assign(scope.controller.getCommunityPrefix() + '/' + qid);
			}
		}

		scope.waitForGenerator(jobId, loadEmailMe);
	};

	scope.quoteDocumentService.emailMeProposal(language, qid, tid, dn, of, os, docIds, successHandler, this.controller.createErrorHandler());
};

QuoteDocumentGeneratorCtrl.prototype.onCancel = function() {
	var scope = this;
	var qid = scope.documentModel.quoteId;
	if (sforce && sforce.one) {
		sforce.one.navigateToSObject(qid, 'detail');
	} else {
		document.location.assign(scope.controller.getCommunityPrefix() + '/' + qid);
	}
}

QuoteDocumentGeneratorCtrl.prototype.onLoad = function(/*String*/ quoteId, /*String*/ actionName) {
	var controller = this.controller;
	var scope = this;
	scope.currentAction = actionName;
	scope.blockingOperationInProgress = true;

	var successHandler = function(/*String*/ result) {
		scope.documentModel = angular.fromJson(result);
		scope.relatedContentSelectionModel = scope.controller.createRelatedContentSelectionModel();
		scope.controllerManager.activateController(controller);

		var model = scope.documentModel;
		if (!Controller.isMobileDevice()) {
			scope.controller.previewDlg = new QuoteDocumentPreviewDialog(model.resources['lbl_quote_preview'], model.previewInFullPage);
			scope.controller.previewDlg.register();
		}

		scope.controller.checkOptionalRelatedContent.apply(scope.documentModel, arguments);
		if (scope.currentAction === 'preview' && !model.hasOptionalRelatedContent && !model.templateSelectorShown && model.autoOnPreview) {
			scope.blockingOperationInProgress = true;
			scope.controller.executeApply();
			scope.onPreview();
		}
	};

	scope.quoteDocumentService.loadModel(quoteId, actionName, successHandler, controller.createErrorHandler());
}

QuoteDocumentGeneratorCtrl.prototype.checkOptionalRelatedContent = function() {
	this.hasOptionalRelatedContent = false;
	angular.forEach(this.relatedContent, function(item) {
		if (!item.required) {
			this.hasOptionalRelatedContent = true;
		}
	}, this);
}

QuoteDocumentGeneratorCtrl.prototype.onTemplateChanged = function() {
	var scope = this;
	var controller = scope.controller;
	scope.blockingOperationInProgress = true;
	scope.errors = null;

  $('#qq > div > .message').remove(); // remove any error messages

	var successHandler = function(/*String*/ result) {
		scope.documentModel.relatedContent = angular.fromJson(result);
		scope.relatedContentSelectionModel = scope.controller.createRelatedContentSelectionModel();
		scope.controllerManager.activateController(controller);
	};
	var quoteId = scope.documentModel.quoteId;
	var templateId = scope.documentModel.templateId;
	scope.quoteDocumentService.listRelatedContent(quoteId, templateId, successHandler, controller.createErrorHandler());
}

QuoteDocumentGeneratorCtrl.prototype.createRelatedContentSelectionModel = function() {
	var model = new SelectionModel();
	model.addSelected({value:this.scope.documentModel.quoteId,label:'Quote Document',required:true});
	angular.forEach(this.scope.documentModel.relatedContent, function(/*RelatedContentVO*/ rc) {
		if (rc.required) {
			model.addSelected({value:rc.documentId,label:rc.displayName,required:rc.required,title:rc.metaDataSummary});
		} else {
			model.addAvailable({value:rc.documentId,label:rc.displayName,required:rc.required,title:rc.metaDataSummary});
		}
	}, this);
	return model;
}

QuoteDocumentGeneratorCtrl.prototype.loadPreview = function(/*Element*/ parent, /*String[]*/ documentParts) {
	var blob = 'data:application/pdf;base64,' + documentParts;
	// Convert Base64 to binary
	var pdfAsArray = convertDataURIToBinary(blob);
	// Create temporary file
	var file = new Blob([pdfAsArray], {type: "application/pdf"});
	// Create URL to temporary file
	var url = URL.createObjectURL(file);

	// Now, make the iframe src use the temporary file URL
	var att =  document.createAttribute("src");
	att.value = url;
	parent.setAttributeNode(att);
}

function QuoteDocumentPreviewDialog(title, fullScreen) {
    this.id = 'QuoteDocumentPreviewDialog';
    this.fullScreen = fullScreen;
    if (fullScreen) {
    	this.width = ((window.innerWidth || document.documentElement.clientWidth) - 40) + 'px';
    } else {
    	this.width = '910px';
    }

    this.title = title;
    this.buttons = [];
    this.addEvents();
}

QuoteDocumentGeneratorCtrl.prototype.zoomIn = function() {
	if (this.controller.mobilePreviewScale <= 2.75) {
		this.controller.mobilePreviewScale += .25;
		adjustCanvasDimension(this.controller.mobilePreviewScale);
	}
}

QuoteDocumentGeneratorCtrl.prototype.zoomOut = function() {
	if (this.controller.mobilePreviewScale >= .75) {
		this.controller.mobilePreviewScale -= .25;
		adjustCanvasDimension(this.controller.mobilePreviewScale);
	}
}

function adjustCanvasDimension(scale) {
	var children = $('.documentPreviewContainer').children();
	for (var i = 0; i < children.length; i ++) {
		$(children[i]).css('width', scale * $('.documentPreviewContainer').width());
	}
}

function loadMobilePreview(parts) {
	var blob = 'data:application/pdf;base64,' + parts;
	var pdfAsArray = convertDataURIToBinary(blob);

	var currPage = 1; //Pages are 1-based not 0-based
	var numPages = 0;
	var thePDF = null;
	//This is where you start
	PDFJS.getDocument(pdfAsArray).then(function(pdf) {
        //Set PDFJS global object (so we can easily access in our page functions
        thePDF = pdf;
        //How many pages it has
        numPages = pdf.numPages;
        //Start with first page
        pdf.getPage( 1 ).then( handlePages );
	});

	function handlePages(page) {
		if (currPage == 1) {
			$('.documentPreviewContainer').empty();
		}
	    //This gives us the page's dimensions at one and a half scale
    	var viewport = page.getViewport( 1.5 );
	    //We'll create a canvas for each page to draw it on
	    var canvas = document.createElement( "canvas" );
	    canvas.style.display = "block";
	    canvas.className = "pdfPage";
	    var context = canvas.getContext('2d');
	    canvas.height = viewport.height;
	    canvas.width = viewport.width;
	    canvas.style.border = "1px solid #000000";
	    canvas.style.marginLeft = 'auto';
	    canvas.style.marginRight = 'auto';
	    if (currPage == 1) {
			canvas.style.marginTop = '20px';
	    }
		if (currPage == numPages) {
			canvas.style.marginBottom = '20px';
		}
	    //Draw it on the canvas
	    page.render({canvasContext: context, viewport: viewport});

	    //Add it to the web page
	    document.getElementById('previewContainer').appendChild( canvas );

	    //Move to next page
	    currPage++;
	    if ( thePDF !== null && currPage <= numPages ) {
	        thePDF.getPage( currPage ).then( handlePages );
	    }
	}
}

function convertDataURIToBinary(dataURI) {
	var BASE64_MARKER = ';base64,';
	var base64Index = dataURI.indexOf(BASE64_MARKER) + BASE64_MARKER.length;
	var base64 = dataURI.substring(base64Index);
	var raw = atob(base64);
	var rawLength = raw.length;
	var array = new Uint8Array(new ArrayBuffer(rawLength));

	for(var i = 0; i < rawLength; i++) {
		array[i] = raw.charCodeAt(i);
	}
	return array;
}

if (!Controller.isMobileDevice()) {
	QuoteDocumentPreviewDialog.prototype = new SBDialog();
}

QuoteDocumentPreviewDialog.prototype.hide = function() {
	// Clear out the source; otherwise, the inline PDF viewer doesn't go away. Maybe a FF bug.
	var iframe = document.getElementById(this.getPreviewFrameId());
	if (iframe != null) {
		iframe.src = '';
	}
	SBDialog.prototype.hide.call(this);
}

QuoteDocumentPreviewDialog.prototype.createContent = function() {
    var content = document.getElementById(this.getContentId());
    var loadingHtml = '<div class="sbLoading sb-icon-loading" style="opacity: 0.99"><div class="sb-icon-bounce1"></div><div class="sb-icon-bounce2"></div><div class="sb-icon-bounce3"></div></div>';

    var height = 425;
    if (this.fullScreen) {
    	height = (window.innerHeight || document.documentElement.clientHeight);
		// Occasionally, this may return a value so small the window isn't usable.
		// In that case, revert to the standard height.
		if (height < 425 || height == null) {
			height = 425;
		}
    }
    var html = [];
    html.push('<div style="padding: 10px; text-align: center; font-weight: bold; width: 100%; color: rgb(204, 0, 0); display: none;" id="' + this.id + '_errorElement"></div>');
    html.push('<div id="' + this.id + '_quotePDFEmbed_parent">');
    html.push(loadingHtml);
    html.push('<iframe width="100%" allowTransparency="true" style="position: relative; border: 0px solid black; height: ' + height + 'px;" type="application/pdf" src="" id="' + this.getPreviewFrameId() + '" name="' + this.getPreviewFrameId() + '"></iframe></div>');
    this.createButtons(html);
    var div = document.createElement("div");
    div.innerHTML = html.join('');
    content.appendChild(div);
};

QuoteDocumentPreviewDialog.prototype.getPreviewFrameId = function() {
	return this.id + '_quotePDFEmbed';
};
