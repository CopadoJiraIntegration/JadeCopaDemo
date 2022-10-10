jQuery.noConflict();
   jQuery(document).ready(function ($) {
       //Click handler for Confirm button
       $('#docusign_launch').click(function () {
           DSUtil.navigateToURL(DocuSignUrl.createEnvelope, false);
       });
       //Click handler for Cancel button
       $('#docusign_launch_cancel').click(function () {
           var quoteDocumentId = DocuSignUrl.quoteDocumentId;
           var quoteDocumentIdList = [ quoteDocumentId ];
           Visualforce.remoting.Manager.invokeAction(DocuSignUrl.deleteQuoteDocuments, quoteDocumentIdList, function (result, event) {});
           window.history.back();
       });
   });
