// release dollar sign for other libraries possible
jQuery.noConflict();
// all docusign front end logic starts from document.loaded event
jQuery(document).ready(function ($) {

  var ngScope = $("#dsContainer").scope();

  /*
   * Hide all pages.
   */
  function hideAll() {
    hideError();
    hideAddSigner();
    hideInstall();
    hideMobileLoading();
    hideEditEnvelope();
  }

  /*
   * Show Mobile Loading page.
   */
  function showMobileLoading() {
    $("#dsMobileLoading").show();
  }

  /*
   * Hide Mobile Loading page.
   */
  function hideMobileLoading() {
    $("#dsMobileLoading").hide();
  }

  /*
   * Show Edit Envelope page.
   */
  function showEditEnvelope() {
    hideAll();
    $('#dsEditEnvelope').show();
  }

  /*
   * Hide Edit Envelope page.
   */
  function hideEditEnvelope() {
    $("#dsEditEnvelope").hide();
  }

  /*
   * Show Add Signer page.
   */
  function showAddSigner() {
    hideAll();
    $("#dsSignerName, #dsSignerEmail").val('');
    $("#dsAddSignerBtn").addClass('inactive');
    $('#dsAddSignerBtn').prop('disabled', true);
    $("#dsAddSignerModal").show();
  }

  /*
   * Hide Add Signer page.
   */
  function hideAddSigner() {
    $("#dsAddSignerModal").hide();
  }

  /*
   * Show Mobile App Install page.
   */
  function showInstall() {
    $('#dsInstall').show();
    $("html, body").animate({scrollTop: $(document).height()}, "slow");
  }

  /*
   * Hide Mobile App Install page.
   */
  function hideInstall() {
    $('#dsInstall').hide();
  }

  /*
   * Show error page.
   * @param errorCode - errorCode from backend
   * @param errorDescription - description of error from backend
   * @param showAtTop - just show error at top of page
   */
  function showError(errorCode, errorDescription, showAtTop) {
    if (!showAtTop) {
      hideAll();
    }
    var code = '';
    if (errorCode && errorCode !== '') {
      code = ' (' + errorCode + ')';
    }
    $("#dsAlert ul").empty().append('<li><p>' + errorDescription + code + '</p></li>');
    $("#dsAlert").show();
    ngScope.scrollTo('dsContainer');
  }

  /*
   * Hide Error page.
   */
  function hideError() {
    $("#dsAlert").hide();
  }

  /*
   * This function to unescape all html special characters
   * @param str  the string to be modified
   */
  function unescapeHTMLSpecialCharacters(str) {
    return str.replace(/&quot;/g, '"').replace(/&amp;/g, "&").replace(/&lt;/g, "<").replace(/&gt;/g, ">");
  }

  /**
   * All action button handlers
   */
  $('#docusignBtn').click(function () {
    $('#docusignBtn').prop('disabled', true);
    $('#docusignBtn').addClass('inactive');
    if (ngScope.newDocOrders) {
      var documents = [];
      for (var i = 0; i < ngScope.newDocOrders.length; i++) {
        var docPos = parseInt(ngScope.newDocOrders[i].replace('doc-', '')) - 1;
        var doc = ngScope.documents[docPos];
        doc.sequence = (i + 1);
        delete doc.$$hashKey;
        documents.push(doc);
      }
      ngScope.documents = documents;
    } else {
      for (var i = 0; i < ngScope.documents.length; i++) {
        delete ngScope.documents[i].$$hashKey;
      }
    }
    if (ngScope.newSignerOrders) {
      var recipients = [];
      for (var i = 0; i < ngScope.newSignerOrders.length; i++) {
        var signerPos = parseInt(ngScope.newSignerOrders[i].replace('signer-', '')) - 1;
        var signer = ngScope.recipients[signerPos];
        delete signer.$$hashKey;
        recipients.push(signer);
      }
      ngScope.recipients = recipients;
    } else {
      for (var i = 0; i < ngScope.recipients.length; i++) {
        delete ngScope.recipients[i].$$hashKey;
      }
    }
    for (var i = 0; i < ngScope.recipients.length; i++) {
      if (ngScope.recipients[i].selected === true) {
        ngScope.recipients[i].routingOrder = i + 1;
        if (ngScope.recipients[i].type === 'InPersonSigner') {
          ngScope.recipients[i].signNow = true;
          ngScope.recipients[i].hostName = CurrentUser.name;
          ngScope.recipients[i].hostEmail = CurrentUser.email;
        } else {
          ngScope.recipients[i].signNow = false;
        }
      }
    }

    showMobileLoading();
    try {
      var selectedDocuments = [];
      for (var i = 0; i < ngScope.documents.length; i++) {
        var doc = ngScope.documents[i];
        if (doc.selected) {
          delete doc.selected;
          selectedDocuments.push(doc);
        }
      }
      ngScope.envelope.documents = selectedDocuments;
      var selectedRecipients = [];
      var roleSequence = 0;
      for (var i = 0; i < ngScope.recipients.length; i++) {
        var recipient = ngScope.recipients[i];
        if (recipient.selected) {
            //Set the recipient role and value for Mobile recipients
            //Available default roles and values are set for mobile recipients in the order they appear on the edit envelope page
            if (DSUtil.isDefined(DefaultRoles[roleSequence])) {
                    recipient.role.name = DefaultRoles[roleSequence].name;
                    recipient.role.value = DefaultRoles[roleSequence].value;
                    roleSequence++;
                }
          delete recipient.selected;
          selectedRecipients.push(recipient);
        }
      }
      ngScope.envelope.recipients = selectedRecipients;

      Visualforce.remoting.Manager.invokeAction(Envelope.updateEnvelope, ngScope.envelope, function (result, event) {
        if (isSuccessfulResult(event, result)) {
          submitEnvelope(result.envelope);
        }
      });
    } catch (err) {
      showRemoteActionError(err.message);
    }
  });

  function isSuccessfulResult(event, result) {
    var status = true;
    if (event.status && result) {
      if (!result.success && DSUtil.isNotEmpty(result.messages)) {
        showRemoteActionError(result.messages[0]);
        status = false;
      } else if (!result.success) {
        showRemoteActionError(Label.unknownError);
        status = false;
      }
    } else {
      showRemoteActionError(event.message);
      status = false;
    }
    return status;
  }

  function submitEnvelope(envelope) {
    Visualforce.remoting.Manager.invokeAction(Envelope.sendEnvelope, envelope, navigator.userAgent, function (result, event) {
      if (isSuccessfulResult(event, result)) {
        if (DSUtil.isBlank(result.url)) {
          DSUtil.navigateToSObject(Envelope.sourceId);
        } else if (result.url.substring(0, 11) === 'docusign-v1') { // mobile tagger
          DSUtil.navigateToURL(result.url, true);
          setTimeout(function () {
            hideMobileLoading();
            showInstall();
          }, 10000);
        } else {
          showIframe(result.url);
        }
      }
    }, {escape: false});
  }

  /**
   *
   */
  function showRemoteActionError(message) {
    $j("#errorDialog").bind({
      popupafterclose: function (event, ui) {
        DSUtil.navigateToSObject(Envelope.sourceId);
      }
    });
    $j('#errorMessge').html(message);
    $j("#errorDialog").show();
  }

  /**
   * Show embedded signing or tagging page.
   */
  function showIframe(url) {
    hideAll();

    var dsIFrame = $j('#ds-iframe');
    dsIFrame.attr('src', url);
    $j('#ds-dialog').show();
  }

  $('#addSignerBtn').click(function () {
    showAddSigner();
  });

  $('#dsCancelBtn').click(function () {
    showEditEnvelope();
  });

  $('#dsSignerName, #dsSignerEmail').bind('keyup change', function () {
    if ($('#dsSignerName').val() && $('#dsSignerEmail').val()) {
      $('#dsAddSignerBtn').removeClass('inactive');
      $('#dsAddSignerBtn').prop('disabled', false);
    } else {
      $('#dsAddSignerBtn').addClass('inactive');
      $('#dsAddSignerBtn').prop('disabled', true);
    }
  });

  $("#dsAddSignerBtn").click(function () {
    if (!/^(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$/.test($('#dsSignerEmail').val().toLowerCase())) {
      showError('', Label.invalidEmailError, true);
      return;
    }
    //Add empty role value and names for recipients created from the mobile UI
    var roleMapping = {name: '', value: 0};
    ngScope.recipients.push({
      name: $('#dsSignerName').val(),
      email: $('#dsSignerEmail').val(),
      routingOrder: (ngScope.recipients.length + 1),
      role: roleMapping,
      type: 'Signer',
      selected: true
    });
    ngScope.$apply();
    ngScope.updateUI(ngScope.recipients[ngScope.recipients.length - 1]);
    showEditEnvelope();
  });

  $('#dsInstallInkBtn').click(function () {
    hideInstall();
    $('#docusignBtn').removeClass('inactive');
    $('#docusignBtn').prop('disabled', false);
    if (DSConfiguration.currentDevice.os.toLowerCase() === 'ios') {
      DSUtil.navigateToURL(Download.ios);
    } else {
      DSUtil.navigateToURL(Download.android);
    }
  });

  $('#dsDocsList').sortable({
    axis: 'y',
    opacity: 0.6,
    items: '> li',
    containment: 'document',
    placeholder: 'ui-placeholder',
    stop: function (event, ui) {
      ngScope.newDocOrders = $('#dsDocsList').sortable('toArray');
    }
  });

  $('#dsSingersList').sortable({
    axis: 'y',
    opacity: 0.6,
    items: '> li',
    containment: 'document',
    placeholder: 'ui-placeholder',
    stop: function (event, ui) {
      ngScope.newSignerOrders = $('#dsSingersList').sortable('toArray');
    }
  });

  $('#dsDocsList, #dsSingersList').sortable('disable');
  $('#dsDocsList, #dsSingersList').disableSelection();

  $('#docusignBtn, #dsAddSignerBtn').prop('disabled', true);

  /* instantiate FastClick on the body */

  window.addEventListener('load', function () {
    new FastClick(document.body);
  }, false);

  /* Unscape HTML Special Characters for Doc and Signer name */

  for (var i = 0; i < ngScope.documents.length; i++) {
    ngScope.documents[i].name = unescapeHTMLSpecialCharacters(ngScope.documents[i].name);
  }

  for (var i = 0; i < ngScope.recipients.length; i++) {
    ngScope.recipients[i].name = unescapeHTMLSpecialCharacters(ngScope.recipients[i].name);
  }

  showEditEnvelope();
});
