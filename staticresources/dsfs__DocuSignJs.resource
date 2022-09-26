// release dollar sign for other libraries possible
jQuery.noConflict();
// all docusign front end logic starts from document.loaded event
var firstTimeLoad = true;

jQuery(document).ready(function ($) {

  /*------------------------------ Globals ---------------------------*/
  var _currentRecipient = null;
  var _emailRegex = null;
  var _saving = false;

  /*------------------------------ Init ------------------------------*/
  hideAll(true);
  showFullScreenLoading();
  try {
    // Populate all html and show it
    populateAllDocumentHTML(Result.envelope.documents);
    initRecipient();
    if (DSConfiguration.envelope.isChatterEnabled === false) {
      $("#add-feed-items").parent().remove();
    }
    if (!Modernizr.svg) {
      // Browser doesnt support SVG (eg. IE 8).  Replace all SVG with PNG.
      $('.logo').attr('src', Resource.docusignPNG);
      $('#docIcon').attr('src', Resource.DocumentIconPNG);
      $('#recipientIcon').attr('src', Resource.RecipientIconPNG);
      $('#messageIcon').attr('src', Resource.MessageIconPNG);
      $('#settingIcon').attr('src', Resource.SettingIconPNG);
      $('#envelopecustomfieldIcon').attr('src', Resource.EnvelopecustomfieldIconPNG);
      $('.ds-recipient-close-icon, .ds-document-close-icon').attr('src', Resource.deleteIconPNG);
      $('#ds-recipient-search-btn').css("background-image", "url(" + Resource.searchIconPNG + ")");
      $('.docusignlogo').attr('src', Resource.DocuSignLoadingLogoPNG);
    }
    showEditEnvelope(splitCustomFields(Result.envelope.customFields));
  } catch (err) {
    handleError(err, true);
  } finally {
    hideFullScreenLoading();
  }

  /*------------------------------ Helper functions ------------------------------*/

  function handleError(err, showBackButton) {
    console.log(err);
    if (DSUtil.isDefined(err) && DSUtil.isNotBlank(err.message)) {
      showErrors([err.message], showBackButton);
    } else {
      showErrors([Label.unknownError], showBackButton);
    }
  }

  /*
   * Hide all pages.
   */
  function hideAll(hideEdit) {
    hideRecipientModalLoading();
    hideFullScreenLoading();
    hideAddRecipientModal();
    hideEditRecipientModal();
    hideDocumentsModalLoading();
    hideDocumentsModal();
    if (hideEdit === true) {
      hideEditEnvelope();
    }
  }

  /*
   * Hide Recipient Modal Loading
   */
  function hideRecipientModalLoading() {
    $('.ds-edit-recipient-modal .modal .ds-edit-recipient-modal-content').css('opacity', '1.0');
    $(".modal-loading").hide();
  }

  /*
   * Show Recipient Modal Loading
   */
  function showRecipientModalLoading() {
    $('.ds-edit-recipient-modal .modal .ds-edit-recipient-modal-content').css('opacity', '0');
    $(".modal-loading").show();
  }

  function hideFullScreenLoading() {
    $('.fullscreenload').hide();
  }

  function showFullScreenLoading() {
    $('.fullscreenload').show();
  }

  function showDocumentModal() {
    $('.ds-add-document-modal').show();
  }

  /*
   * Hide Documents Modal Dialog
   */
  function hideDocumentsModal() {
    $(".ds-add-document-modal-content .content ").html('');
    $("#ds_docmodal_folder_select").html('');
    $("#ds_docmodal_header").html('');
    $("#ds_docmodal_folder").hide();
    $("#ds_docmodal_add_attachment").hide();
    $('#ds_docmodal_file_upload').hide();
    $('.ds-add-document-modal').hide();
    $("#ds-template-search-form").hide();
  }

  /*
   * Show Documents Modal Loading
   */
  function showDocumentsModalLoading(type) {
    // If type is template show search text box with search button also clear search text value
    if (type === 'add-docusign-template') {
      showDocumentModal();
      $("#ds-template-search-form").show();
      $('#ds-template-search-text').val('');
    } else {
      showDocumentModal();
      $("#ds-template-search-form").hide();
    }
    $('.ds-add-document-modal .modal .ds-add-document-modal-content').css('opacity', '0');
    $(".modal-loading").show();
  }

  /*
   * Hide Documents Modal Loading
   */
  function hideDocumentsModalLoading() {
    $('.ds-add-document-modal .modal .ds-add-document-modal-content').css('opacity', '1.0');
    $(".modal-loading").hide();
  }

  /*
   * Hide Edit Envelope
   */
  function hideEditEnvelope() {
    $("#ds-edit-envelope").hide();
  }

  /*
   * Load Account Envelope custom fields
   */
  function loadAccountEnvelopeCustomFields(customFields) {
    if (firstTimeLoad === true) {
      var textFieldFlagShow = false;
      var listFieldFlagShow = false;
      var id;

      //display textfield envelope custom fields
      if (DSUtil.isNotEmpty(customFields.textCustomFields)) {
        customFields.textCustomFields.forEach(function (textField) {
          id = getCustomFieldId(textField);
          if (textField.show) {
            var newTextBoxDiv = $(document.createElement('div')).attr('id', 'tcfDiv_' + id);
            newTextBoxDiv.addClass('four col');

            var textFieldVal = '<label><span>' + textField.name + '</span></label>';
            if (textField.required) textFieldVal = '<label><span class="text-alert">* </span><span>' + textField.name + '</span></label>';

            newTextBoxDiv.after().html(textFieldVal + '<input type="text" maxlength="100" name="textbox_' + id + '" id="' + id + '" >');
            newTextBoxDiv.appendTo('#envelopeCustomFieldsGridRow');
            textFieldFlagShow = true;
          }
        });
      }

      //display dropdown envelope custom fields
      if (DSUtil.isNotEmpty(customFields.listCustomFields)) {
        customFields.listCustomFields.forEach(function (listField) {
          id = getCustomFieldId(listField);
          if (listField.show) {
            var newListDiv = $(document.createElement('div')).attr('id', 'lcfDiv_' + id);
            newListDiv.addClass('four col');

            var listFieldVal = '<label><span>' + listField.name + '</span></label>';
            if (listField.required) listFieldVal = '<label><span class="text-alert">* </span><span>' + listField.name + '</span></label>';
            newListDiv.after().html(listFieldVal);
            var s = $('<select/>', {id: id});
            $('<option />', {value: '', text: ''}).appendTo(s);
            if (DSUtil.isNotEmpty(listField.items)) {
              for (var j = 0; j < listField.items.length; j++) {
                $('<option />', {
                  value: listField.items[j], text: listField.items[j]
                }).appendTo(s);
              }
            }
            s.appendTo(newListDiv); // or wherever it should be
            newListDiv.appendTo("#envelopeCustomFieldsGridRow");
            listFieldFlagShow = true;
          }
        });
      }

      if (textFieldFlagShow || listFieldFlagShow) {
        $('#envelopeCustomFields').show();
        getAccountECFforPageRedirect();
      } else {
        $('#envelopeCustomFields').hide();
      }

      firstTimeLoad = false;
    } else {
      $('#envelopeCustomFields').show();
      getAccountECFforPageRedirect();
    }
  }

  function getAccountECFforPageRedirect() {
    //Special handling for attachments and documents where we redirect page.
    if (typeof (Storage) !== 'undefined') {
      // Code for localStorage/sessionStorage.
      if (DSUtil.isNotEmpty(Result.envelope.customFields)) {
        for (var i = 0; i < Result.envelope.customFields.length; i++) {
          var customField = Result.envelope.customFields[i];
          if (customField.show && firstTimeLoad) {
            if (typeof (Storage) !== 'undefined') {
              // Code for localStorage/sessionStorage.
              var id = '#' + getCustomFieldId(customField);
              var value = localStorage.getItem(id);
              localStorage.removeItem(id);
              $(id).val(value);
            }
          }
        }
      }
    }
  }

  /*
   * Retrieve account level ECF and save it in local storage
   */
  function retrieveAccountEnvelopeCustomFields() {
    //retrieve data for Envelope Custom Fields and populating envelope custom fields object
    if ($("#envelopeCustomFields").is(':visible') && DSUtil.isNotEmpty(Result.envelope.customFields)) {
      for (var i = 0; i < Result.envelope.customFields.length; i++) {
        var customField = Result.envelope.customFields[i];
        if (customField.show) {
          var id = '#' + getCustomFieldId(customField);
          var value = $(id).val();
          Result.envelope.customFields[i].value = value;
          if (typeof (Storage) !== 'undefined') {
            // Code for localStorage/sessionStorage.
            localStorage.setItem(id, value);
          }
        }
      }
    }
  }

  /*
   * Load Template Envelope custom fields
   */
  function loadTemplateEnvelopeCustomFields(customFields) {
    var textFieldFlagShow = false;
    var listFieldFlagShow = false;
    var id;

    Result.envelope.customFields = customFields.textCustomFields.concat(customFields.listCustomFields);
    //display textfield envelope custom fields
    if (DSUtil.isNotEmpty(customFields.textCustomFields)) {
      customFields.textCustomFields.forEach(function (textField) {
        id = getCustomFieldId(textField);
        var newTextBoxDiv = $('#tcfDiv_' + id);

        if (!newTextBoxDiv.length) {
          newTextBoxDiv = $(document.createElement('div')).attr('id', 'tcfDiv_' + id);
          newTextBoxDiv.addClass('four col');

          var textFieldVal = '<label><span>' + textField.name + '</span></label>';
          if (textField.required) textFieldVal = '<label><span class="text-alert">* </span><span>' + textField.name + '</span></label>';

          newTextBoxDiv.after().html(textFieldVal + '<input type="text" maxlength="100" name="textbox_' + id + '" id="' + id + '" >');
          newTextBoxDiv.appendTo('#envelopeCustomFieldsGridRow');
        }

        $('#' + id).val(textField.value);
        textFieldFlagShow = true;
      });
    }

    //display dropdown envelope custom fields
    if (DSUtil.isNotEmpty(customFields.listCustomFields)) {
      customFields.listCustomFields.forEach(function (listField) {
        id = getCustomFieldId(listField);
        var newListDiv = $('#lcfDiv_' + id);

        if (!newListDiv.length) {
          newListDiv = $(document.createElement('div')).attr('id', 'lcfDiv_' + id);
          newListDiv.addClass('four col');

          var listFieldVal = '<label><span>' + listField.name + '</span></label>';
          if (listField.required) listFieldVal = '<label><span class="text-alert">* </span><span>' + listField.name + '</span></label>';

          newListDiv.after().html(listFieldVal);
          var s = $('<select/>', {id: id});
          $('<option />', {value: '', text: ''}).appendTo(s);
          if (DSUtil.isNotEmpty(listField.items)) {
            for (var j = 0; j < listField.items.length; j++) {
              $('<option />', {
                value: listField.items[j], text: listField.items[j]
              }).appendTo(s);
            }
          }
          s.appendTo(newListDiv); // or wherever it should be
          newListDiv.appendTo('#envelopeCustomFieldsGridRow');
        }

        if (DSUtil.isNotBlank(listField.value)) {
          $('#' + id).find('option[value="' + listField.value + '"]').prop('selected', true);
        }
        listFieldFlagShow = true;
      });
    }

    if (textFieldFlagShow || listFieldFlagShow) {
      $('#envelopeCustomFields').show();
    } else {
      $('#envelopeCustomFields').hide();
    }
  }

  /*
   * Show Edit Envelope
   */

  //Envelope Custom Fields
  function showEditEnvelope(customFields) {
    hideAll(true);
    if (DSUtil.isNotEmpty(Result.messages)) {
      showErrors(Result.messages, false);
    } else {
      $("#ds-edit-envelope").show();
      if (DSConfiguration.envelope.allowRecipientLanguageSelection !== true && (DSConfiguration.envelope.allowEditEmailSubject || DSConfiguration.envelope.allowEditEmailMessage )) {
        $('#message').show();
        if (!DSConfiguration.envelope.allowEditEmailSubject) {          
          $('#subjectDiv').hide();
        }
        if (!DSConfiguration.envelope.allowEditEmailMessage) {
          $('#messageDiv').hide();
        }
      }
      if (DSConfiguration.envelope.showRemindAndExpireSettings) {
        $('#settings').show();
        $('#remindSignersFields').show();
        $('#expireEnvelopeFields').show();
      }
      if (DSConfiguration.envelope.isChatterEnabled) {
        $('#settings').show();
        $('#enableChatterFields').show();
        if (DSConfiguration.envelope.isChatterAlwaysOn) {
          $('#enableChatterUpdates').prop('disabled', true);
        }
      }
      if (Result.envelope.options.remind === true) {
        $('#remindSigners').prop('checked', true);
        $('#reminders').show();
      } else {
        $('#reminders').hide();
      }
      if (Result.envelope.options.expires === true) {
        $('#expireEnvelope').prop('checked', true);
        $('#expirations').show();
      } else {
        $('#expirations').hide();
      }
      if (Result.envelope.options.updateChatter) {
        $('#enableChatterUpdates').prop('checked', true);
      }
      if (DSUtil.isNotEmpty(customFields.listCustomFields) || DSUtil.isNotEmpty(customFields.textCustomFields)) {
        loadAccountEnvelopeCustomFields(customFields);
        loadTemplateEnvelopeCustomFields(customFields);
      } else {
        $('#envelopeCustomFields').hide();
      }
      if (DSConfiguration.envelope.showTagButton) {
        $('#nextButton').show();
      }
      if (DSConfiguration.envelope.showSendButton) {
        $('#sendNowButton').show();
      }
    }
  }

  $('#remindSigners').click(function () {
    hideErrors();
    if ($('#remindSigners').prop('checked') === true) {
      $('#reminders').show();
    } else {
      $('#reminders').hide();
    }
  });

  $('#expireEnvelope').click(function () {
    hideErrors();
    if ($('#expireEnvelope').prop('checked') === true) {
      $('#expirations').show();
    } else {
      $('#expirations').hide();
    }
  });

  $('#emailSubject').keyup(function () {
    hideErrors();
  });

  $('#emailMessage').keyup(function () {
    hideErrors();
  });

  /*
   * Hide Add Recipient Modal
   */
  function hideAddRecipientModal() {
    $(".ds-add-recipient-modal").hide();
  }

  var $searchResult = $('#ds-recipient-search-result');
  var $searchResultList = $searchResult.find('ul');

  // Search results -> Next
  $('#ds-recipient-next-btn').click(function () {
    var selectedValue = $searchResultList.find('li.selected').attr('value');
    if (DSUtil.isDefined(selectedValue)) {
      var recipientInfo = selectedValue.split('|');
      if (recipientInfo && recipientInfo.length >= 3) {
        var recipient = newRecipient(null, _currentRecipient);
        var type = DSUtil.htmlDecode(recipientInfo[0]);
        var id = DSUtil.htmlDecode(recipientInfo[1]);
        var name = DSUtil.htmlDecode(recipientInfo[2]);
        if (type === Label.signingGroup) {
          recipient.name = name;
          recipient.email = type;
          recipient.signingGroupId = id;
        } else {
          recipient.related = {
            type: type, id: id
          };
          recipient.name = name;
          recipient.email = DSUtil.htmlDecode(recipientInfo[3]);
          recipient.phone = DSUtil.htmlDecode(recipientInfo[4]);
        }
        showEditRecipientModal(recipient);
      }
    }
  });

  function isSigningGroup(recipient) {
    return DSUtil.isDefined(recipient) && (!!recipient.signingGroupId);
  }

  function hasSMS(recipient) {
    return DSUtil.isDefined(recipient) && (!!recipient.authentication) && recipient.authentication.idCheckRequired === true && DSUtil.isNotEmpty(recipient.authentication.smsPhoneNumbers);
  }

  function hasAccessCode(recipient) {
    return DSUtil.isDefined(recipient) && (!!recipient.authentication) && DSUtil.isNotBlank(recipient.authentication.accessCode);
  }

  /**
   * Constructs a new recipient.
   * @param action {string} UI action taken.
   * @param recipientTemplate {object} Optional recipient to partially clone (id, type, role, note, emailSettings).
   * @returns {{id: *, type: null, name: null, email: null, hostName: null, hostEmail: null, routingOrder: null, countryCode: null, phone: null, role: null, signingGroupId: null, note: null, emailSettings: null, signNow: boolean, authentication: null, related: null, action: *, searchAction: null}}
   */
  function newRecipient(action, recipientTemplate) {
    var recipient = {
      id: recipientTemplate ? recipientTemplate.id : null,
      type: recipientTemplate ? recipientTemplate.type : null,
      name: null,
      email: null,
      hostName: null,
      hostEmail: null,
      routingOrder: recipientTemplate ? recipientTemplate.routingOrder : null,
      countryCode: null,
      phone: null,
      role: recipientTemplate ? recipientTemplate.role : null,
      signingGroupId: null,
      note: recipientTemplate ? recipientTemplate.note : null,
      emailSettings: recipientTemplate ? recipientTemplate.emailSettings : null,
      signNow: recipientTemplate ? recipientTemplate.signNow : false,
      authentication: null,
      related: null,
      action: action,
      searchAction: null
    };

    var searchTitle = null;
    var searchPlaceholder = null;
    var modalTitle = null;
    switch (action) {
      case undefined:
      case null:
        break;

      case 'add-contact':
      case 'edit-contact':
        searchTitle = action === 'add-contact' ? Label.addContact : Label.selectContact;
        searchPlaceholder = Label.searchContacts;
        $('#ds-add-new-contact-link').show();
        recipient.related = {
          type: 'Contact'
        };
        recipient.searchAction = Recipient.searchContacts;
        break;

      case 'add-lead':
      case 'edit-lead':
        searchTitle = action === 'add-lead' ? Label.addLead : Label.selectLead;
        searchPlaceholder = Label.searchLeads;
        recipient.related = {
          type: 'Lead'
        };
        recipient.searchAction = Recipient.searchLeads;
        break;

      case 'add-user':
      case 'edit-user':
        searchTitle = action === 'add-user' ? Label.addUser : Label.selectUser;
        searchPlaceholder = Label.searchUsers;
        recipient.related = {
          type: 'User'
        };
        recipient.searchAction = Recipient.searchUsers;
        break;

      case 'add-me':
      case 'edit-me':
        recipient.name = CurrentUser.name;
        recipient.email = CurrentUser.email;
        recipient.related = {
          id: CurrentUser.id, type: 'User'
        };
        modalTitle = Label.addMe;
        recipient.signNow = true;
        $('#ds-recipient-signer-name').val(recipient.name);
        $("#ds-recipient-sign-now").prop('checked', recipient.signNow);
        $('#ds-recipient-signer-name-div').show();
        break;

      case 'add-quick':
        modalTitle = Label.addRecipient;
        $('#quick-add-name').val('').removeClass('error');
        $('#quick-add-email').val('').removeClass('error');
        $('#ds-quickadd-form').show();
        $('#ds-recipient-info').hide();
        $('#ds-edit-recipient-btn').hide();
        $('#ds-recipient-name').attr('class', '');
        $('#ds-change-recipient').attr('class', '');
        recipient.related = {
          type: 'Custom'
        };
        break;

      case 'add-signingGroup':
      case 'edit-signingGroup':
        searchTitle = Label.addSigningGroup;
        searchPlaceholder = Label.addSigningGroup;
        recipient.related = {
          type: 'Custom'
        };
        recipient.searchAction = loadAvailableSigningGroups(null);
        break;
    }

    if (DSUtil.isNotBlank(searchTitle)) {
      $('#ds-search-recipient-modal-title').text(searchTitle);
      $('#ds-recipient-search-text').attr('placeholder', searchPlaceholder);
    }

    if (DSUtil.isNotBlank(modalTitle)) {
      $('#ds-recipient-modal-title').text(modalTitle);
      showEditRecipientModal(recipient);
    }

    return recipient;
  }

  /*
   * Show Add Recipient Modal
   */
  function showAddRecipientModal(action) {
    hideErrors();
    hideAll(false);

    $(".ds-add-recipient-modal").show();

    // Reset input fields
    $('#ds-recipient-search-text, #ds-recipient-signer-name').val('');
    $('#ds-recipient-search-result ul, #ds-recipient-info').html('');
    $('#ds-recipient-modal-title').text(Label.addRecipient);
    $('#ds-recipient-info').show();
    $('#ds-edit-recipient-btn').hide();
    $('#ds-recipient-name').attr('class', '');
    $('#ds-change-recipient').attr('class', '');
    $('#ds-quickadd-form, #ds-recipient-signer-name-div').hide();
    $('.ds-recipient-name-error-label, .ds-recipient-email-error-label, .ds-recipient-signature-dropdown-error-label').hide();
    $('#ds-recipient-search-form').show();
    $('#ds-add-new-contact-link, #ds-add-new-contact-form').hide();

    _currentRecipient = newRecipient(action, null);
  }

  /*
   * Hide Edit Recipient Modal
   */
  function hideEditRecipientModal() {
    $(".ds-edit-recipient-modal").hide();
  }

  function showIdentityCheckDropdownlist(identityCheckOption) {
    var idco = DSUtil.htmlEncode(identityCheckOption);
    var html = '<option';
    html += ' value="' + idco + '"';
    html += ' id="' + idco + '" >';
    html += idco;
    html += '</option>';
    return html;
  }

  var accessCodeCheckbox = $('#accessCodeCheckbox');
  accessCodeCheckbox.on('change', function () {
    if (accessCodeCheckbox.is(':checked')) {
      $('#ds-recipient-accesscodeAuthentication').show();
    } else {
      $('#ds-recipient-accesscodeAuthentication').hide();
      $('#ds-recipient-access-code').val('');
    }
  });

  function setIdentityCheckCheckbox(/*bool*/ checked, /*recipient*/ recipient) {
    if (checked) {
      $('#ds-recipient-IdentityCheck').show();
      var identityCheck_select = $("#identityCheck_select");
      identityCheck_select.unbind();
      identityCheck_select.html('');

      if (Account.settings.smsAuthentication) {
        identityCheck_select.html(showIdentityCheckDropdownlist('SMS'));
      }

      if (identityCheck_select.val() === 'SMS') {
        $('#ds-recipient-SMSAuthentication').show();
      }
    } else {
      //Checkbox has been unchecked
      $('#ds-recipient-SMS-number').val('');
      $('#ds-recipient-IdentityCheck').hide();
    }

    if (DSUtil.isDefined(recipient)) {
      var smsPhone = '';
      if (hasSMS(recipient)) {
        smsPhone = recipient.authentication.smsPhoneNumbers[0];
      } else if (DSUtil.isNotBlank(recipient.phone)) {
        smsPhone = recipient.phone;
      }
      $('#ds-recipient-SMS-number').val(smsPhone);

      if (DSUtil.isBlank(smsPhone)) {
        $('#ds-recipient-SMS-countrycode').find('option[data-countryCode="US"]').prop('selected', true);
      } else if (smsPhone.startsWith('+') && DSUtil.isBlank(recipient.countryCode) || recipient.countryCode === 'none') {
        $('#ds-recipient-SMS-countrycode').find('option[data-countryCode="none"]').prop('selected', true);
      } else {
        $('#ds-recipient-SMS-countrycode').find('option[data-countryCode="' + recipient.countryCode + '"]').prop('selected', true);
      }
    }
  }

  var identityCheckCheckbox = $('#identityCheckCheckbox');
  identityCheckCheckbox.on('change', function () {
    setIdentityCheckCheckbox(identityCheckCheckbox.is(':checked'), getRecipientById(_currentRecipient.id));
  });

  function isRoleSupported(recipientType) {
    if (DSUtil.isNotBlank(recipientType)) {
      // TODO: This logic should exist on the backend as well. Do not consider roles for these recipient types.
      return !(recipientType === 'CarbonCopy' || recipientType === 'CertifiedDelivery' || recipientType === 'Agent' || recipientType === 'Editor' || recipientType === 'Intermediary');
    } else {
      return false;
    }
  }

  function setInPersonOption(email) {
    var $ips = $('#ds-recipient-signertype-select option[value="InPersonSigner"]');
    if (!email || !isCurrentUser(email)) {
      $ips.remove();
    } else if (!$ips.length) {
      $('<option value="InPersonSigner">' + DSUtil.htmlEncode(Label.hostInPerson) + '</option>').insertAfter($('#ds-recipient-signertype-select option[value="Signer"]'));
    }
  }

  /**
   * Show Edit Recipient Modal
   */
  function showEditRecipientModal(recipient) {
    hideAll(false);
    $('#ds-recipient-signature-dropdown').hide();
    $('#ds-recipient-accesscodeAuthentication').hide();
    $('#ds-recipient-IdentityCheck').hide();
    $('.ds-recipient-name-error-label, .ds-recipient-email-error-label,.ds-recipient-accessAuthentication-dropdown-error-label,.ds-recipient-signer-name-error-label').hide();
    $('#ds-recipient-signer-name').removeClass('error');
    // show hide access code and identity check
    showRecipientModalLoading();
    $('.ds-edit-recipient-modal').show();
    $('.ds-recipient-signature-dropdown-error-label').hide();
    if (DSUtil.isNotDefined(recipient)) {
      recipient = newRecipient(null, null);
    }
    var signerTypeSelect = $('#ds-recipient-signertype-select');
    var name = '';
    var email = '';
    if (recipient.type === 'InPersonSigner') {
      name = recipient.hostName;
      email = recipient.hostEmail;
    } else {
      name = recipient.name;
      email = recipient.email;
    }
    setInPersonOption(email);
    if (DSUtil.isDefined(recipient.id)) { // editing existing recipient
      // Info from saved recipient
      $('#ds-recipient-modal-title').text(Label.editRecipient);
      $('#ds-recipient-signer-role').val(DSUtil.isDefined(recipient.role) ? recipient.role.name : '');
      if (hasAccessCode(recipient)) {
        $('#accessCodeCheckbox').prop('checked', true);
        $('#ds-recipient-accesscodeAuthentication').show();
        $('#ds-recipient-access-code').val(recipient.authentication.accessCode);
      } else {
        $("#accessCodeCheckbox").prop('checked', false);
        $('#ds-recipient-accesscodeAuthentication').hide();
        $('#ds-recipient-access-code').val('');
      }
      $('#ds-recipient-note').val(recipient.note);
      signerTypeSelect.val(recipient.type);
      $('#ds-recipient-signer-name-div').hide();
      var signerType = DSUtil.isDefined(recipient.type) ? recipient.type.toLowerCase() : '';
      var recipientType = DSUtil.isDefined(recipient.related) && DSUtil.isDefined(recipient.related.type) ? recipient.related.type.toLowerCase() : '';
      if (email && isCurrentUser(email)) {
        if (signerType === 'inpersonsigner' || (signerType === 'signer' && recipient.signNow)) {
          $('#ds-recipient-signer-name').val(recipient.name);
          $("#ds-recipient-sign-now").prop('checked', recipient.signNow);
          $('#ds-recipient-signer-name-div').show();
        }
      }
      $('#ds-recipient-info').show();
      $('#ds-edit-recipient-btn').show();
      $('#ds-recipient-name').attr('class', 'ten col no-padding');
      $('#ds-change-recipient').attr('class', 'two col no-padding');
      $('#ds-quickadd-form').hide();
      _currentRecipient = recipient; // Must set role for signerTypeSelect change handler or else it will be overridden on first edit.
      signerTypeSelect.change();
    } else {
      // Info from new recipient (contact/lead/user search results, Add Me or Quick Add)
      $('#ds-recipient-signer-role, #ds-recipient-access-code, #ds-recipient-note').val('');
      // Just Select First value from 'Signer Type' dropdown
      signerTypeSelect.val($("#ds-recipient-signertype-select option:first").val());
      // Auto assign next available signer role
      var role = getNextAvailableSignerRole();
      $('#ds-recipient-signer-role').val(role.name);
      $("#accessCodeCheckbox").prop('checked', false);
      $('#ds-recipient-accesscodeAuthentication').hide();
      $('#ds-recipient-access-code').val('');
      $("#identityCheckCheckbox").prop('checked', false);
      $("#identityCheck_select").unbind();
      $("#identityCheck_select").html('');
      $('#ds-recipient-SMS-number').val('');
    }
    var recipientInfo = DSUtil.elide(name + ' - ' + email, 70);
    $('#ds-recipient-info').text(recipientInfo);
    $("#quick-add-name").val(name);
    $("#quick-add-email").val(email);

    if (DSConfiguration.envelope.smsAuthentication === true && !isSigningGroup(recipient)) {
      if (hasSMS(recipient)) {
        $("#identityCheckCheckbox").prop('checked', true);
        setIdentityCheckCheckbox(true, recipient);
      } else {
        $('#identityCheckCheckbox').prop('checked', false);
        setIdentityCheckCheckbox(false, recipient);
      }
    } else {
      $('#ds-recipient-IdentityCheck-heading').hide();
      $('#ds-recipient-IdentityCheck').hide();
    }

    // Only show language drop-down if multiple languages are selected
    if (DSConfiguration.envelope.allowRecipientLanguageSelection === true) {
      $('#ds-recipient-language-setting').show();
      $('#ds-recipient-language-select option:selected').attr('selected', null);
      if (DSUtil.isDefined(recipient.emailSettings)) {
        $('#ds-recipient-language-select').val(recipient.emailSettings.locale);
        $('#ds-recipient-message-subject').val(recipient.emailSettings.subject);
        $('#ds-recipient-message-body').val(recipient.emailSettings.message);
      } else {
        $('#ds-recipient-language-select').val(DSConfiguration.envelope.emailSettings[0].locale);
        $('#ds-recipient-language-select').change();
      }
    } else {
      $('#ds-recipient-language-setting').hide();
    }

    _currentRecipient = recipient;
    hideRecipientModalLoading();
  }

  /*
   * Shortens document name
   */
  function shortenDocumentName(/*string*/ filename) {
    if (DSUtil.isNotDefined(filename)) {
      return filename;
    }
    var length = filename.length;
    if (length < 50) {
      return filename;
    } else {
      return DSUtil.elide(filename, 25) + filename.substring(length - 25, length);
    }
  }

  function getDocumentSize(doc) {
    if (DSUtil.isNotDefined(doc) || DSUtil.isNotDefined(doc.size)) {
      return '';
    } else if (doc.size < 1024) {
      return '< 1 KB';
    } else if (doc.size < 1048576) {
      return Math.floor(doc.size / 1024) + ' KB';
    } else {
      return Math.floor(doc.size / 1048576) + ' MB';
    }
  }

  /*
   * Creates HTML layout for a document and returns HTML
   */
  function createDocumentHtml(doc) {
    if (DSUtil.isNotDefined(doc)) return '';

    var html = '<div class="document" id="' + doc.id + '">';
    html += '<img class="delete" src="' + ((Modernizr.svg) ? Resource.deleteIcon : Resource.deleteIconPNG) + '"/>';
    html += '<img class="move" src="' + ((Modernizr.svg) ? Resource.grabberIcon : Resource.grabberPNG) + '"/>';
    html += '<input class="number" disabled value="' + DSUtil.htmlEncode(doc.sequence) + '" />';
    html += '<p class="name" title="' + DSUtil.htmlEncode(doc.name) + '">' + DSUtil.htmlEncode(shortenDocumentName(doc.name));
    html += '<span class="sub-text">' + DSUtil.htmlEncode(getDocumentSize(doc)) + '</span></p></div>';
    return html;
  }

  /*
   * Parse the envelope dto and add documents to UI
   * @docs - list of all documents from corresponding dto object
   */
  function populateAllDocumentHTML(docs) {
    // sort documents using document order
    docs.sort(function (a, b) {
      if (parseInt(a.sequence) > parseInt(b.sequence)) {
        return 1;
      }
      if (parseInt(a.sequence) < parseInt(b.sequence)) {
        return -1;
      }
      return 0;
    });

    // iterate over all the documents and create final HTML layout
    var documentsHtml = '';
    if (docs !== null) {
      for (var i = 0; i < docs.length; i++) {
        documentsHtml += createDocumentHtml(docs[i]);
      }
    }

    // delete all HTML and event handlers
    $('#dsDocumentListContainer .document .delete').unbind();
    $("#dsDocumentListContainer").html('');

    // add new HTML and event handlers
    // add HTML
    $("#dsDocumentListContainer").html(documentsHtml);
    // add remove click handlers
    $('#dsDocumentListContainer .document .delete').bind('click', function () {
      var documentId = this.parentNode.id;
      var documentElement = $('#' + documentId);
      if (documentElement.attr('deleting') !== 'true') {
        // Ensure we don't try to double delete document.
        documentElement.css('opacity', '0.5').attr('deleting', 'true');
        deleteDocument(documentId, documentElement);
      }
    });
    // add sortable feature
    if (docs !== null && docs.length > 1) {
      $('#dsDocumentListContainer').sortable({
        axis: 'y',
        opacity: 0.6,
        items: '> div.document',
        containment: 'document',
        placeholder: 'ui-placeholder',
        forcePlaceholderSize: true,
        stop: function (event, ui) {
          var reorderedDocuments = $('#dsDocumentListContainer').sortable('toArray');
          if (reorderedDocuments.length > 1) {
            var newOrders = {};
            for (var index = 0; index < reorderedDocuments.length; index++) {
              var currentItemId = reorderedDocuments[index];
              newOrders[currentItemId] = index + 1;
            }
            reorderDocuments(newOrders);
          }
        }
      });
    }
  }

  /*
   * initialize the recipient section
   */
  function initRecipient() {
    // Enable sorting for recipient list
    $('#dsRecipientsList').sortable({
      axis: 'y',
      opacity: 0.6,
      items: '> div.recipient',
      containment: 'document',
      placeholder: 'ui-placeholder',
      forcePlaceholderSize: true,
      stop: function (event, ui) {
        var recipientId = ui.item[0].id;
        var recipient = getRecipientById(recipientId);
        var lastRoutingOrder = getLastRoutingOrder(Result.envelope.recipients);
        var recipientsList = $('#dsRecipientsList').sortable('toArray');
        var topToBottom = ((ui.position.top > ui.originalPosition.top) > 0);
        var newRoutingOrder = 0;
        if (recipientsList[0] === recipientId) {
          // recipient is dragged to top of list
          newRoutingOrder = 1;
        } else if (recipientsList[recipientsList.length - 1] === recipientId) {
          // recipient is dragged to bottom of list
          if (lastRoutingOrder === 1) {
            newRoutingOrder = 1;
          } else {
            newRoutingOrder = lastRoutingOrder + 1;
          }
        } else {
          // recipient is dragged to middle of list
          var newRecipientIndex = 0;
          for (var i = 0; i < recipientsList.length; i++) {
            if (recipientsList[i] === recipientId) {
              newRecipientIndex = i;
              break;
            }
          }
          if (topToBottom === true) {
            newRoutingOrder = getRecipientById(recipientsList[newRecipientIndex + 1]).routingOrder;
          } else {
            newRoutingOrder = getRecipientById(recipientsList[newRecipientIndex - 1]).routingOrder;
          }
        }
        updateRecipientsRoutingOrder(recipient, newRoutingOrder);
      }
    });
    $('#dsRecipientsList').sortable('disable');

    // Hide the Add Document, Add Recipient, Edit Recipient and Signer Role drop down
    $('.ds-add-recipient-dropdown, .ds-add-document-dropdown, .ds-edit-recipient-dropdown, #ds-recipient-signer-role-dropdown').hide();

    populateAllRecipientHTML();
  }

  /*
   * Parse the envelope dto and add recipients to UI
   */
  function populateAllRecipientHTML() {
    populateLanguageSettingsHTML();
    populateSignerRoleHTML();
    populateRecipientHTML();
  }

  /*
   * Populate the language html based on language settings
   */
  function populateLanguageSettingsHTML() {
    if (DSConfiguration.envelope.allowRecipientLanguageSelection !== true) {
      $('.language-label').hide();
    } else {
      $('#ds-recipient-language-select').html('');
      var emailSettings = DSConfiguration.envelope.emailSettings;
      for (var i = 0; i < emailSettings.length; i++) {
        $('#ds-recipient-language-select').append('<option value="' + emailSettings[i].locale + '">' + DSUtil.capitalize(emailSettings[i].language) + '</option>');
      }
    }
    if (!DSConfiguration.envelope.allowEditEmailSubject) {
      $('#ds-recipient-message-subject').prop('disabled', true);
    }
    if (!DSConfiguration.envelope.allowEditEmailMessage) {
      $('#ds-recipient-message-body').prop('disabled', true);
    }
  }

  /*
   * Populate the signer role html based of the signer role settings
   */
  function populateSignerRoleHTML() {
    if (DSUtil.isEmpty(DSConfiguration.envelope.defaultRoles)) {
      $('#ds-recipient-signer-role-selection').hide();
    } else {
      for (var i = 0; i < DSConfiguration.envelope.defaultRoles.length; i++) {
        var role = DSConfiguration.envelope.defaultRoles[i];
        $('#ds-recipient-signer-role-dropdown').append('<li class="ds-recipient-signer-role-li" value="' + role.value + '"><a href="javascript:void(0);">' + role.name + '</a></li>');
      }
    }
  }

  /*
   * Parse the envelope dto and add recipients to UI
   */
  function populateRecipientHTML() {
    $('#dsRecipientsList .recipient').remove();
    var recipients = Result.envelope.recipients;
    recipients.sort(function (a, b) {
      if (parseInt(a.recipientId) > parseInt(b.recipientId)) {
        return 1;
      }
      if (parseInt(a.recipientId) < parseInt(b.recipientId)) {
        return -1;
      }
      return 0;
    });
    if (recipients !== null) {
      for (var i = 0; i < recipients.length; i++) {
        addRecipient(recipients[i]);
      }
    }
  }

  /*
   * Add recipient to the page
   * @param recipient the recipient of the envelope
   */
  function addRecipient(recipient) {
    var recipientName = DSUtil.elide(recipient.name, 26);
    var recipientEmail = DSUtil.elide(recipient.email, 26);
    var signerRole = DSUtil.isDefined(recipient.role) ? DSUtil.elide(recipient.role.name, 10) : '';
    var signerTypeFull = DSUtil.isDefined(recipient.type) ? recipient.type : '';
    if (recipient.type) {
      if (recipient.type === 'InPersonSigner') {
        signerTypeFull = Label.inPersonSigner + ' (' + recipient.name + ')';
      } else if (recipient.type === 'CarbonCopy') {
        signerTypeFull = Label.carbonCopy;
      } else if (recipient.type === 'CertifiedDelivery') {
        signerTypeFull = Label.certifiedDelivery;
      } else if (recipient.type === 'Agent') {
        signerTypeFull = Label.agent;
      } else if (recipient.type === 'Editor') {
        signerTypeFull = Label.editor;
      } else if (recipient.type === 'Intermediary') {
        signerTypeFull = Label.intermediary;
      } else {
        signerTypeFull = Label.signer;
      }
      signerTypeFull = DSUtil.elide(signerTypeFull, 16);
    } else {
      signerTypeFull = '';
    }
    var recipientHtml = '<div class="recipient" id="' + DSUtil.htmlEncode(recipient.id) + '">';
    recipientHtml += '<img class="move recipient-move-icon" src="' + ((Modernizr.svg) ? Resource.grabberIcon : Resource.grabberPNG) + '"></img>';
    recipientHtml += '<input type="text" class="number" maxlength="3" value="' + (DSUtil.isNotDefined(recipient.routingOrder) ? 1 : DSUtil.htmlEncode(recipient.routingOrder)) + '" />';
    recipientHtml += '<p class="name" title="' + DSUtil.htmlEncode(recipient.name) + '">' + DSUtil.htmlEncode(recipientName);
    recipientHtml += '<span class="sub-text" title="' + DSUtil.htmlEncode(recipient.email) + '">' + DSUtil.htmlEncode(recipientEmail) + '</span></p>';
    recipientHtml += '<p class="action" title="' + DSUtil.htmlEncode(recipient.type) + '">' + DSUtil.htmlEncode(signerTypeFull) + '</p>';
    // Show Language info only if User has enabled multi languages
    if (DSConfiguration.envelope.allowRecipientLanguageSelection === true) {
      recipientHtml += '<p class="language">';
      if (DSUtil.isDefined(recipient.emailSettings) && DSUtil.isDefined(recipient.emailSettings.locale)) {
        for (var i = 0; i < DSConfiguration.envelope.emailSettings.length; i++) {
          var emailSettings = DSConfiguration.envelope.emailSettings[i];
          if (recipient.emailSettings.locale === emailSettings.locale) {
            //Only show the first word from the language label
            var arr = emailSettings.language.split(' ');
            var language = (arr.length > 1) ? arr[0] : emailSettings.language;
            recipientHtml += DSUtil.htmlEncode(DSUtil.capitalize(language));
            break;
          }
        }
      }
      recipientHtml += '</p>';
    }
    recipientHtml += '<p class="role">' + DSUtil.htmlEncode(signerRole) + '</p>';
    recipientHtml += '<img class="delete" src="' + ((Modernizr.svg) ? Resource.deleteIcon : Resource.deleteIconPNG) + '"></img>';
    recipientHtml += '<a href="#" class="edit">' + DSUtil.htmlEncode(Label.edit) + '</a>' + '</div>';
    $('#dsRecipientsList').append(recipientHtml);
    toggleRecipientSorting();
  }

  /*
   * Find recipient by Id
   * @param recipientId the id of the recipient
   */
  function getRecipientById(recipientId) {
    var result;
    var recipients = Result.envelope.recipients;
    if (DSUtil.isDefined(recipients)) {
      for (var i = 0; i < recipients.length; i++) {
        if (recipients[i].id === recipientId) {
          result = recipients[i];
        }
      }
    }
    return result;
  }

  /*
   * Update recipient dto
   * @param recipient the recipient dto
   */
  function updateRecipientDto(recipient) {
    if (recipient !== null && Result.envelope.recipients !== null) {
      for (var i = 0; i < Result.envelope.recipients.length; i++) {
        if (Result.envelope.recipients[i].id === recipient.id) {
          Result.envelope.recipients[i] = recipient;
          return;
        }
      }
    }
    Result.envelope.recipients.push(recipient);
  }

  /*
   * Remove recipient dto
   * @param recipientId the id of the recipient dto
   */
  function deleteRecipientDto(recipientId) {
    if (recipientId !== null && Result.envelope.recipients !== null) {
      var recipients = [];
      for (var i = 0; i < Result.envelope.recipients.length; i++) {
        if (Result.envelope.recipients[i].id !== recipientId) {
          recipients.push(Result.envelope.recipients[i]);
        }
      }
      Result.envelope.recipients = recipients;
    }
  }

  /**
   * enable/disable sorting for recipient(s) list
   */
  function toggleRecipientSorting() {
    var recipients = Result.envelope.recipients;
    if (recipients && recipients.length > 1) {
      $('#dsRecipientsList').sortable('enable');
      $('.recipient-move-icon').show();
    } else {
      $('#dsRecipientsList').sortable('disable');
      $('.recipient-move-icon').hide();
    }
  }

  /**
   * Return the next available signer role
   */
  function getNextAvailableSignerRole() {
    for (var i = 0; i < DSConfiguration.envelope.defaultRoles.length; i++) {
      var role = DSConfiguration.envelope.defaultRoles[i];
      var isUsed = false;
      for (var j = 0; j < Result.envelope.recipients.length; j++) {
        var recipient = Result.envelope.recipients[j];
        if (recipient.role.name === role.name) {
          isUsed = true;
          break;
        }
      }
      if (!isUsed) {
        return role;
      }
    }
    return {
      name: '', value: null
    };
  }

  /**
   * This function updates the user's password.
   */
  function deleteEnvelope() {
    try {
      disableButtons();
      showFullScreenLoading();
      Visualforce.remoting.Manager.invokeAction(Envelope.deleteEnvelope, Result.envelope.id, Envelope.sourceId, function (result, event) {
        if (isSuccessfulResult(event, result) && result.url) {
          if (DSUtil.isInNewWindow()) {
            window.close();
          } else {
            DSUtil.navigateToURL(result.url, true);
          }
        } else {
          enableButtons();
          hideFullScreenLoading();
        }
      }, {escape: false});
    } catch (err) {
      handleError(err, false);
      enableButtons();
      hideFullScreenLoading();
    }
  }

  function getCustomFieldId(customField) {
    return 'cf_' + (DSUtil.isDefined(customField) ? customField.index : '');
  }

  function splitCustomFields(customFields) {
    var textFields = [], listFields = [];

    if (customFields) {
      for (var i = 0; i < customFields.length; i++) {
        var customField = customFields[i];
        if (customField) {
          customField.index = i;
          if (customField.type === 'text') {
            textFields.push(customField);
          } else {
            listFields.push(customField);
          }
        }
      }
    }

    return {
      textCustomFields: textFields, listCustomFields: listFields
    };
  }

  function validateEnvelopeCustomFields() {
    if ($("#envelopeCustomFields").is(':visible') && DSUtil.isNotEmpty(Result.envelope.customFields)) {
      for (var i = 0; i < Result.envelope.customFields.length; i++) {
        var customField = Result.envelope.customFields[i];
        if (customField.show) {
          var customFieldElement = $('#' + getCustomFieldId(customField));
          if ((customField.required && DSUtil.isNotBlank(customFieldElement.val())) || !customField.required) {
            customFieldElement.removeClass('errortext');
          } else {
            customFieldElement.addClass('errortext');
          }
        }
      }
    }
  }

  /**
   * This function sends the envelope to DocuSign and renders the Success or Tagger page.
   * @param sendNow {boolean} Whether to send the envelope immediately or save as a draft and redirect to tagger.
   */
  function sendEnvelope(sendNow) {
    try {
      disableButtons();
      showFullScreenLoading();
      //retrieve data for Envelope Custom Fields and populating envelope custom fields object
      if ($("#envelopeCustomFields").is(':visible') && DSUtil.isNotEmpty(Result.envelope.customFields)) {
        for (var i = 0; i < Result.envelope.customFields.length; i++) {
          var customField = Result.envelope.customFields[i];
          if (customField.show) {
            Result.envelope.customFields[i].value = $('#' + getCustomFieldId(customField)).val().replace(/^\s+/g, '');
          }
          delete Result.envelope.customFields[i].index;
        }
      }

      // Add envelope remind/expire, Chatter, and email settings
      Result.envelope.emailSubject = $('#emailSubject').val();
      Result.envelope.emailMessage = $('#emailMessage').val();
      Result.envelope.options = {
        remind: $('#remindSigners').prop('checked'),
        remindAfterDays: DSUtil.parseIntOrElse($('#sendReminderDays').val(), null),
        remindFrequencyDays: DSUtil.parseIntOrElse($('#sendReminderRepeatDays').val(), null),
        expires: $('#expireEnvelope').prop('checked'),
        expireAfterDays: DSUtil.parseIntOrElse($('#expireEnvelopeDays').val(), null),
        expireWarnDays: DSUtil.parseIntOrElse($('#warnExpireDays').val(), null),
        updateChatter: $('#enableChatterUpdates').prop('checked')
      };

      Visualforce.remoting.Manager.invokeAction(Envelope.sendEnvelope, Envelope.sourceId, Result.envelope, sendNow, DSConfiguration.isNewWindow, DSConfiguration.isdtp, function (result, event) {
        if (isSuccessfulResult(event, result) && result.url) {
          DSUtil.navigateToURL(result.url);
        } else {
          hideFullScreenLoading();
          enableButtons();
        }
      }, {escape: false});

      validateEnvelopeCustomFields();

    } catch (err) {
      handleError(err, false);
      enableButtons();
      hideFullScreenLoading();
    }
  }

  function showError(message) {
    $('#dsAlert ul').append('<li><p>' + message + '</p></li>');
    $('#dsAlert').show();
    $("html, body").animate({scrollTop: 0}, "fast");
  }

  function showErrors(messages, showBackButton) {
    $('#dsAlert ul').empty();
    for (var m = 0; m < messages.length; m++) {
      showError(messages[m]);
    }
    if (showBackButton) {
      $('#backButton').show();
    }
  }

  function hideErrors() {
    $('#dsAlert').hide();
    $('#backButton').hide();
  }

  function getEmailRegex() {
    if (_emailRegex == null) {
      _emailRegex = /^(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$/;
    }
    return _emailRegex;
  }

  function isValidEmail(email) {
    return DSUtil.isDefined(email) && getEmailRegex().test(email.toLowerCase());
  }

  function hasAgentPredecessor(recipients) {
    if (DSUtil.isNotEmpty(recipients)) {
      for (var i = 0; i < recipients.length; i++) {
        var r = recipients[i];
        if (r && r.type === 'Agent') {
          return true;
        }
      }
    }
    return false;
  }

  /*
   * This function validate the quick add form
   * return true if form has no error, otherwise return false
   */
  function validateAddQuickForm(recipients) {
    var hasNoError = validateEditForm();
    var nameElement = $('#quick-add-name');
    var emailElement = $('#quick-add-email');
    nameElement.removeClass('error');
    emailElement.removeClass('error');
    $('.ds-recipient-name-error-label, .ds-recipient-email-error-label').hide();
    if (!hasAgentPredecessor(recipients)) { // else OK to not have name and email
      if (!nameElement.val()) {
        nameElement.addClass('error');
        $('.ds-recipient-name-error-label').show();
        hasNoError = false;
      }
      if (!emailElement.val()) {
        emailElement.addClass('error');
        $('.ds-recipient-email-error-label').text(Label.fieldRequired).show();
        hasNoError = false;
      } else if (!isValidEmail(emailElement.val())) {
        emailElement.addClass('error');
        $('.ds-recipient-email-error-label').text(Label.invalidEmail).show();
        hasNoError = false;
      }
    }
    return hasNoError;
  }

  function validateEditForm() {
    var hasNoError = true;
    if ($('#identityCheckCheckbox').is(':checked')) {
      var recipientSMSNumberElement = $('#ds-recipient-SMS-number');
      var smsError = $('.ds-recipient-accessAuthentication-dropdown-error-label');
      var smsPhoneNumber = recipientSMSNumberElement.val().trim().replace(/\D/g, '');
      hasNoError = smsPhoneNumber.length > 0;
      if (hasNoError) {
        recipientSMSNumberElement.removeClass('error');
        smsError.hide();
        recipientSMSNumberElement.val(smsPhoneNumber);
      } else {
        recipientSMSNumberElement.addClass('error');
        smsError.show();
        smsError.text(Label.phoneNumberError).show();
        recipientSMSNumberElement.val('');
      }
    }
    //If signer type is In Person signer then signer name should be populated
    var signerType = $('#ds-recipient-signertype-select').val();
    if (signerType === 'InPersonSigner') {
      var signerNameElement = $('#ds-recipient-signer-name');
      var signerName = signerNameElement.val();
      hasNoError = !DSUtil.isBlank(signerName);
      if (hasNoError) {
        signerNameElement.removeClass('error');
      } else {
        signerNameElement.addClass('error');
        $('.ds-recipient-signer-name-error-label').show();
      }
    }
    return hasNoError;
  }

  /*
   * This function validate the add new contact form
   * return true if form has no error, otherwise return false
   */
  function validateAddNewContactForm() {
    var hasNoError = true;
    var lnameElement = $('#add-new-contact-lname');
    var emailElement = $('#add-new-contact-email');
    lnameElement.removeClass('error');
    emailElement.removeClass('error');
    $('.add-new-contact-lname-error, .add-new-contact-email-error').hide();
    if (!lnameElement.val()) {
      lnameElement.addClass('error');
      $('.add-new-contact-lname-error').show();
      hasNoError = false;
    }
    if (!emailElement.val()) {
      $('#add-new-contact-email').addClass('error');
      $('.add-new-contact-email-error').text(Label.fieldRequired).show();
      hasNoError = false;
    } else if (!isValidEmail(emailElement.val())) {
      emailElement.addClass('error');
      $('.add-new-contact-email-error').text(Label.invalidEmail).show();
      hasNoError = false;
    }
    return hasNoError;
  }

  /*
   * This function checks if the recipient is current user
   * name the name of the recipient
   * email the email of the recipient
   * return true if the recipient is the current user, otherwise return false
   */
  function isCurrentUser(email) {
    if (DSUtil.isNotDefined(email)) {
      return false;
    }
    return (email === CurrentUser.email);
  }

  /*
   * This function to show the add recipient drop down menu
   */
  $('#ds-add-recipient-btn').mouseover(function () {
    $('.ds-add-recipient-dropdown').show();
  });

  /*
   * This function to hide the add recipient drop down menu
   */
  $('#ds-add-recipient-btn').mouseout(function () {
    $('.ds-add-recipient-dropdown').hide();
  });

  /*
   * This function to show the add document drop down menu
   */
  $('#ds-add-document-btn').mouseover(function () {
    $('.ds-add-document-dropdown').show();
  });

  /*
   * This function to hide the add document drop down menu
   */
  $('#ds-add-document-btn').mouseout(function () {
    $('.ds-add-document-dropdown').hide();
  });

  /*
   * This function to show the signer role drop down menu
   */
  $('#ds-recipient-signer-role-btn').mouseover(function () {
    $('#ds-recipient-signer-role-dropdown').show();
  });

  /*
   * This function to hide the signer role drop down menu
   */
  $('#ds-recipient-signer-role-btn').mouseout(function () {
    $('#ds-recipient-signer-role-dropdown').hide();
  });

  /*
   * This function is to show the edit recipient drop down menu
   */
  $('#ds-edit-recipient-btn').mouseover(function () {
    $('.ds-edit-recipient-dropdown').show();
  });

  /*
   * This function is to show the edit recipient  drop down menu
   */
  $('#ds-edit-recipient-btn').mouseout(function () {
    $('.ds-edit-recipient-dropdown').hide();
  });

  $('#cancelButton').click(function (e) {
    deleteEnvelope();
  });

  $("#sendNowButton").click(function (e) {
    sendEnvelope(true);
  });

  $("#nextButton").click(function (e) {
    sendEnvelope(false);
  });

  function disableButtons() {
    $("#cancelButton").removeAttr("href");
    $("#sendNowButton").removeAttr("href");
    $("#nextButton").removeAttr("href");
  }

  function enableButtons() {
    $("#cancelButton").attr("href", "javascript:void(0);");
    $("#sendNowButton").attr("href", "javascript:void(0);");
    $("#nextButton").attr("href", "javascript:void(0);");
  }

  // Click handler for hidding add recipient modal
  $('.ds-recipient-cancel-btn, .ds-recipient-close-icon, #ds-cancel-new-contact-btn').click(function () {
    hideAll(false);
  });

  function isSuccessfulResult(event, result) {
    var status = true;
    if (event.status && result) {
      if (!result.success && DSUtil.isNotEmpty(result.messages)) {
        showErrors(result.messages, false);
        status = false;
      } else if (!result.success) {
        showErrors([Label.unknownError], false);
        status = false;
      }
    } else {
      showErrors([event.message], false);
      status = false;
    }
    return status;
  }

  // function for deleting document
  function deleteDocument(/*string*/ docId, /*jQuery*/docElement) {
    hideErrors();
    try {
      Visualforce.remoting.Manager.invokeAction(Document.removeDocuments,    // action name
        Result.envelope.id, [docId], // parameters
        function (result, event) {   // handler
          if (isSuccessfulResult(event, result)) {
            populateAllDocumentHTML(result.documents);
            Result.envelope.documents = result.documents;
          }
          docElement.attr('deleting', 'false');
        }, {escape: false});
    } catch (err) {
      handleError(err, false);
      docElement.attr('deleting', 'false');
    }
  }

  // function for reordering documents
  function reorderDocuments(/*map<string documentId,int newOrder>*/ documents) {
    try {
      Visualforce.remoting.Manager.invokeAction(Document.reorderDocuments, Result.envelope.id, documents, function (result, event) {   // handler
        if (isSuccessfulResult(event, result)) {
          populateAllDocumentHTML(result.documents);
          Result.envelope.documents = result.documents;
        }
      }, {escape: false});
    } catch (err) {
      handleError(err, false);
    }
  }

  // creates html layout for attachment
  function createAvailableDocument(doc) {
    var html = '';
    var name = DSUtil.htmlEncode(doc.name);
    if (DSUtil.isNotBlank(name)) {
      html = '<label class="option">';
      html += '<input type="checkbox" id="' + DSUtil.htmlEncode(doc.relatedId);
      html += '" name="' + name;
      html += '" docType="' + DSUtil.htmlEncode(doc.type);
      html += '" docSize="' + DSUtil.htmlEncode(doc.size);
      html += '" docExtension="' + DSUtil.htmlEncode(doc.extension) + '"/>';
      html += name;
      html += '</label>';
    }
    return html;
  }

  // creates html layout for folder
  function createFolder(folder, selected) {
    var id = DSUtil.htmlEncode(folder.id);
    var name = DSUtil.htmlEncode(folder.name);
    var html = '<option';
    if (selected) {
      html += ' selected="selected"';
    }
    html += ' value="' + id + '"';
    html += ' id="' + id + '" >';
    html += name;
    html += '</option>';
    return html;
  }

  // loads documents from folder
  function loadDocumentsFromFolder(remoteActionName, folderId, headerName) {
    showDocumentsModalLoading();
    try {
      Visualforce.remoting.Manager.invokeAction(remoteActionName, Result.envelope.id, folderId, function (result, event) {
        if (isSuccessfulResult(event, result)) {
          showAvailableDocuments(result.documents, result.folders, headerName);
        }
        hideDocumentsModalLoading();
      }, {escape: false});
    } catch (err) {
      handleError(err, false);
      hideDocumentsModalLoading();
    }
  }

  // From MDN: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions#Escaping
  function escapeRegExp(string) {
    return string.replace(/[.*+?^${}()|[\]\\]/g, '\\$&'); // $& means the whole matched string
  }

  // Click handler for searching Templates
  $('#ds-template-search-btn').click(function () {
    $('#ds-recipient-search-form').show();
    var keyword = $('#ds-template-search-text').val();
    if (DSUtil.isBlank(keyword)) return;

    // add new layout (documents)
    var documentsHtml = '';
    var docs = Document.documents;
    if (docs !== null) {
      for (var i = 0; i < docs.length; i++) {
        var str = docs[i].name;
        var regex = new RegExp(escapeRegExp(keyword), "i");
        var n = str.search(regex);
        if (n >= 0) {
          documentsHtml += createAvailableDocument(docs[i]);
        }
      }
    }
    $(".ds-add-document-modal-content .content ").html(documentsHtml);
  });

  function saveEnvelope(callback) {
    //save envelope custom fields values in localstorage for page redirect
    retrieveAccountEnvelopeCustomFields();

    Visualforce.remoting.Manager.invokeAction(Envelope.updateEnvelope, // action
      Result.envelope.id, $('#emailSubject').val(), $('#emailMessage').val(), {
        remind: $('#remindSigners').prop('checked'),
        remindAfterDays: DSUtil.parseIntOrElse($('#sendReminderDays').val(), null),
        remindFrequencyDays: DSUtil.parseIntOrElse($('#sendReminderRepeatDays').val(), null),
        expires: $('#expireEnvelope').prop('checked'),
        expireAfterDays: DSUtil.parseIntOrElse($('#expireEnvelopeDays').val(), null),
        expireWarnDays: DSUtil.parseIntOrElse($('#warnExpireDays').val(), null),
        updateChatter: $('#enableChatterUpdates').prop('checked')
      }, function (result, event) {
        if (isSuccessfulResult(event, result)) {
          callback(result);
        } else {
          $('.ds-document-cancel-btn').click();
          hideDocumentsModalLoading();
        }
      }, {escape: false});
  }

  // shows obtained documents from back end
  function showAvailableDocuments(/*list<document>*/ docs, /*list<folder>*/ folders, /*string*/ header) {
    var isClassic = !DSUtil.isLightningOrSF1();
    var $header = $('#ds_docmodal_header');
    var $folderSelect = $('#ds_docmodal_folder_select');
    var $addAttachment = $('#ds_docmodal_add_attachment');
    var $fileUpload = $('#ds_docmodal_file_upload');
    var $inputFile = $('[id$=ds_docmodal_input_file]');

    // header and folders
    $header.html(header);
    if ((header === Label.documents) || (header === Label.library)) {
      $("#ds_docmodal_folder").show();
    } else {
      $("#ds_docmodal_folder").hide();
    }

    // delete all HTML and event handlers
    $addAttachment.off('click');
    $inputFile.off('change');
    $('.ds-add-document-modal-content .content input').unbind();
    $(".ds-add-document-modal-content .content ").html('');

    // add new layout (folders)
    if (DSUtil.isNotEmpty(folders)) {
      var foldersHtml = '';
      $folderSelect.unbind();
      $folderSelect.html('');
      for (var i = 0; i < folders.length; i++) {
        var selected = (i === 0);
        foldersHtml += createFolder(folders[i], selected);
      }
      $folderSelect.html(foldersHtml);
      $folderSelect.change(function () {
        var folderId = $folderSelect.val();
        var header = $header.html();
        if ((header === Label.documents)) {
          loadDocumentsFromFolder(Document.getFolderDocuments, folderId, Label.documents);
        } else {
          loadDocumentsFromFolder(Document.getFolderFiles, folderId, Label.library);
        }
      });
    }

    // add new document/attachment handler
    if (header === Label.attachments && isClassic) {
      $addAttachment.show();
      $addAttachment.on('click', function () {
        saveEnvelope(function () {
          var currentPageAddress = window.location.href;
          if (currentPageAddress[currentPageAddress.length - 1] === '#') {
            currentPageAddress = currentPageAddress.substring(0, currentPageAddress.length - 1);
          }
          if (currentPageAddress.indexOf('SAA=1') === -1) {
            currentPageAddress += '&SAA=1';
          }
          var addAttachmentUrl = DSConfiguration.pathPrefix + '/p/attach/NoteAttach?';
          addAttachmentUrl += 'pid=' + encodeURIComponent(Result.envelope.id);
          addAttachmentUrl += '&retURL=' + encodeURIComponent(currentPageAddress);
          window.location.href = addAttachmentUrl;
        });
      });
    } else if (header === Label.attachments) {
      $fileUpload.show();
      $inputFile.on('change', function () {
        if (this.files) {
          showDocumentsModalLoading();
          saveEnvelope(function () {
            uploadFile();
          });
        }
      });
    } else if (header === Label.documents && DSUtil.isLightningOrSF1() !== true) {
      $addAttachment.show();
      $addAttachment.click(function () {
        window.open(DSConfiguration.pathPrefix + '/p/doc/DocumentUploadUi', '_blank', 'width=900,height=700,scrollbars=1,resizable=1');
      });
    } else {
      $fileUpload.hide();
      $addAttachment.hide();
    }

    // add new layout (documents)
    var documentsHtml = '';
    if (docs !== null) {
      for (var i = 0; i < docs.length; i++) {
        documentsHtml += createAvailableDocument(docs[i]);
      }
      //Save documents array so that we have docs for searching templates
      Document.documents = docs;
    }
    $(".ds-add-document-modal-content .content ").html(documentsHtml);
  }

  /*
   * Loads available signing groups and shows the dialog
   */
  function loadAvailableSigningGroups(/*string*/ searchValue) {
    hideErrors();
    showRecipientModalLoading();
    try {
      Visualforce.remoting.Manager.invokeAction(Recipient.searchSigningGroups, searchValue, function (result, event) {
        if (isSuccessfulResult(event, result)) {
          showAvailableSigningGroups(result.recipients);
        }
        hideRecipientModalLoading();
      }, {escape: false});
    } catch (err) {
      handleError(err, false);
      hideRecipientModalLoading();
    }
  }

  function showAvailableSigningGroups(recipients) {
    var content = '';
    //Display No Matches Found If No Signing Groups are Returned
    if (recipients.length === 0) {
      content = '<br/>&nbsp;&nbsp;' + Lable.noMatchFound;
    } else {
      for (var i = 0; i < recipients.length; i++) {
        content += '<li value="';
        content += DSUtil.htmlEncode(Label.signingGroup) + '|';
        content += DSUtil.htmlEncode(recipients[i].signingGroupId) + '|';
        content += DSUtil.htmlEncode(recipients[i].name) + '">';
        content += '<span class="signingGroup-name">';
        var groupName = recipients[i].name;
        if (DSUtil.isNotBlank(groupName)) {
          content += DSUtil.htmlEncode(groupName);
        }
        content += '</span>';
        content += '</li>';
      }
      hideRecipientModalLoading();
    }

    //Apply HTML
    try {
      $searchResultList.html(content);
    } catch (err) {
      handleError(err, false);
    }
  }

  /*
   * Loads available temp and shows the dialog
   */
  function loadAvailableTemplates(/*string*/ type) {
    hideErrors();
    showDocumentsModalLoading(type);
    try {
      Visualforce.remoting.Manager.invokeAction(Document.getTemplates, Result.envelope.id, function (result, event) {
        if (isSuccessfulResult(event, result)) {
          showAvailableDocuments(result.documents, result.folders, Label.templates);
        }
        hideDocumentsModalLoading();
      }, {escape: false});
    } catch (err) {
      handleError(err, false);
      hideDocumentsModalLoading();
    }
  }

  /*
   * Loads available documents and shows the dialog
   */
  function loadAvailableDocuments(/*string*/ remoteActionName, /*string*/ modalHeader, /*string*/ type) {
    hideErrors();
    showDocumentsModalLoading(type);
    try {
      Visualforce.remoting.Manager.invokeAction(remoteActionName, Result.envelope.id, Result.envelope.source.id, function (result, event) {
        if (isSuccessfulResult(event, result)) {
          showAvailableDocuments(result.documents, result.folders, modalHeader);
        }
        hideDocumentsModalLoading();
      }, {escape: false});
    } catch (err) {
      handleError(err, false);
      hideDocumentsModalLoading();
    }
  }

  /*
   * Loads available documents (with folders) and shows the dialog
   */
  function loadAvailableDocumentsWithFolders(/*string*/ remoteActionName, /*string*/ modalHeader) {
    hideErrors();
    showDocumentsModalLoading();
    try {
      Visualforce.remoting.Manager.invokeAction(remoteActionName, Result.envelope.id, function (result, event) {
        if (isSuccessfulResult(event, result)) {
          showAvailableDocuments(result.documents, result.folders, modalHeader);
        }
        hideDocumentsModalLoading();
      }, {escape: false});
      $("#ds_docmodal_folder").hide();
      $("#ds_docmodal_add_attachment").hide();
      $('#ds_docmodal_file_upload').hide();
    } catch (err) {
      handleError(err, false);
      $("#ds_docmodal_folder").hide();
      $("#ds_docmodal_add_attachment").hide();
      $('#ds_docmodal_file_upload').hide();
    } finally {
      hideDocumentsModalLoading();
    }
  }

  // Click handler for hidding add recipient modal
  $('.ds-document-close-icon, .ds-document-cancel-btn').click(function () {
    hideDocumentsModal();
    showEditEnvelope(splitCustomFields(Result.envelope.customFields));
  });

  // click handler for add attachment
  $('#add-attachment').click(function (event) {
    //cross browser handling for event object
    if (!event) event = window.event; // old IE
    var type = event.target.id.toString();
    loadAvailableDocuments(Document.getAttachments, Label.attachments, type);
  });

  // click handler for add new feed item
  $('#add-feed-items').click(function (event) {
    //cross browser handling for event object
    if (!event) event = window.event; // old IE
    var type = event.target.id.toString();
    loadAvailableDocuments(Document.getChatterFeedItems, Label.feedItems);
  });

  // click handler for add new docusign template
  $('#add-docusign-template').click(function (event) {
    //cross browser handling for event object
    if (!event) event = window.event; // old IE
    var type = event.target.id.toString();
    loadAvailableTemplates(type);
  });

  // click handler for add new docusign template
  $('#add-libraries').click(function () {
    loadAvailableDocumentsWithFolders(Document.getFileFolders, Label.library);
  });

  // click handler for add new docuemnt
  $('#add-document').click(function () {
    loadAvailableDocumentsWithFolders(Document.getDocumentFolders, Label.documents);
  });

  // click handler for add new docusign signing group
  $('#add-signingGroup').click(function (event) {
    //cross browser handling for event object
    if (!event) event = window.event; // old IE
    var type = event.target.id.toString();
    loadAvailableSigningGroups(null);
  });

  // Click handler on next button for attachments
  $('#ds-document-next-btn').click(function () {
    if (_saving) {
      return;
    }
    _saving = true;
    $(this).prop('disabled', true);
    hideErrors();
    var newDocuments = [];
    $(".ds-add-document-modal-content .content input:checked").each(function (index, item) {
      var $item = $(item);
      newDocuments.push({
        type: $item.attr('docType'),
        name: $item.attr('name'),
        extension: $item.attr('docExtension'),
        size: $item.attr('docSize'),
        relatedId: $item.attr('id')
      });
    });

    if (DSUtil.isNotEmpty(newDocuments)) {
      var customFields = splitCustomFields(Result.envelope.customFields);
      var self = this;
      try {
        Visualforce.remoting.Manager.invokeAction(Document.addDocuments, // method
          Result.envelope.id, newDocuments,  // parameters
          function (result, event) {   // handler
            if (isSuccessfulResult(event, result)) {
              if (DSUtil.isEmpty(Result.envelope.documents)) {
                Result.envelope.documents = result.documents;
              } else {
                Result.envelope.documents = Result.envelope.documents.concat(result.documents);
              }
              populateAllDocumentHTML(Result.envelope.documents);
              if (DSUtil.isNotEmpty(result.customFields)) {
                loadAccountEnvelopeCustomFields(customFields);
                loadTemplateEnvelopeCustomFields(splitCustomFields(result.customFields));
              } else {
                //If the Envelope custom fields section is already visible on the page then dont hide the section
                if (!$('#envelopeCustomFields').is(':visible')) {
                  $('#envelopeCustomFields').hide();
                }
              }
            }
            $(self).prop('disabled', false);
            _saving = false;
          }, {escape: false});
      } catch (err) {
        handleError(err, false);
        $(this).prop('disabled', false);
        _saving = false;
      } finally {
        showEditEnvelope(customFields);
      }
    }
  });

  function recalculateRoutingOrder(recipientId, newRoutingOrder, recipients) {
    if (!recipientId || DSUtil.isEmpty(recipients)) {
      return [];
    }

    return recipients.map(function (r) {
      // First set new routing order and ensure there are no undefined ones
      if (r.id === recipientId) {
        r.routingOrder = newRoutingOrder;
      }
      if (!r.routingOrder || r.routingOrder < 0) {
        r.routingOrder = 1;
      }
      return r;
    }).sort(function (a, b) {
      // Next sort the recipients in ascending routing order, preserving implicit ordering by previous recipientId
      if (a.routingOrder < b.routingOrder) {
        return -1;
      } else if (a.routingOrder > b.routingOrder) {
        return 1;
      } else if (a.recipientId < b.recipientId) {
        return -1;
      } else if (a.recipientId > b.recipientId) {
        return 1;
      }
      return 0;
    }).map(function (r, i, rs) {
      // Finally, ensure there are no gaps in routing order starting at 1 and recipient IDs are set in sequence
      var pro = i > 0 ? rs[i - 1].routingOrder : 0;
      if (i > 0 && r.routingOrder > (pro + 1)) {
        r.routingOrder = pro + 1;
      } else if (i === 0) {
        r.routingOrder = 1;
      }
      r.recipientId = i + 1;
      return r;
    });
  }

  function reorderRecipients(envelopeId, recipients, onSuccess, onError) {
    try {
      Visualforce.remoting.Manager.invokeAction(Recipient.reorderRecipients, envelopeId, recipients, function (result, event) {
        if (isSuccessfulResult(event, result)) {
          onSuccess(result.recipients);
        }
      }, {escape: false});
    } catch (err) {
      onError(err);
    }
  }

  /**
   * This function return a map with key = recipient id, value = new routing order
   * @param recipient {object} the modified recipient
   * @param newRoutingOrder {number} the new routing order of the modified recipient
   * @return {object} a map of recipients need to be updated
   */
  function updateRecipientsRoutingOrder(recipient, newRoutingOrder) {
    if (!recipient) return;

    var newOrder = recalculateRoutingOrder(recipient.id, newRoutingOrder, Result.envelope.recipients).reduce(function (no, r) {
      no[r.id] = r.routingOrder;
      return no;
    }, {});
    var onSuccess = function (recipients) {
      Result.envelope.recipients = recipients;
      populateRecipientHTML();
    };
    var onError = function (err) {
      handleError(err, false);
    };
    reorderRecipients(Result.envelope.id, newOrder, onSuccess, onError);
  }

  /*
   * This function return the routing order of the last recipient in the list
   * return the routing order of the last recipient in the list
   */
  function getLastRoutingOrder(recipients) {
    if (DSUtil.isNotEmpty(recipients)) {
      var ro = recipients[recipients.length - 1].routingOrder;
      return DSUtil.isDefined(ro) ? ro : 1;
    }
    return 1;
  }

  // Click handler for deleting recipient
  $('#recipients section').on('click', '.recipient .delete', function () {
    hideErrors();
    var recipientId = this.parentNode.id;
    var recipientElement = $('#' + recipientId);
    recipientElement.css('opacity', '0.5');
    try {
      Visualforce.remoting.Manager.invokeAction(Recipient.removeRecipients, Result.envelope.id, [recipientId], function (result, event) {
        if (isSuccessfulResult(event, result)) {
          if (DSUtil.isNotEmpty(result.removedIds)) {
            for (var i = 0; i < result.removedIds.length; i++) {
              var recipientId = result.removedIds[i];
              $('#' + recipientId).remove();
              deleteRecipientDto(recipientId);
            }
          }
          toggleRecipientSorting();
        }
        recipientElement.css('opacity', '1.0');
      });
    } catch (err) {
      handleError(err, false);
    }
  });

  // Click handler for editing recipient
  $('#recipients section').on('click', '.recipient .edit', function () {
    showEditRecipientModal(getRecipientById(this.parentNode.id));
  });

  //  Click handler for saving (new or edited) recipient
  $('#ds-recipient-save-btn').click(function () {
    if (_saving) {
      return;
    }
    _saving = true;
    $(this).prop('disabled', true);
    hideErrors();
    if (_currentRecipient.action === 'add-quick') {
      if (!validateAddQuickForm(Result.envelope.recipients)) {
        $(this).prop('disabled', false);
        _saving = false;
        return;
      } // stop if quick add form has invalid data
    } else {
      if (!validateEditForm()) {
        $(this).prop('disabled', false);
        _saving = false;
        return;
      } // stop if quick edit form has invalid data
    }
    showRecipientModalLoading();
    var recipient = {
      id: _currentRecipient.id, routingOrder: _currentRecipient.routingOrder
    };

    if (_currentRecipient.action === 'add-quick') {
      recipient.name = $('#quick-add-name').val();
      recipient.email = $('#quick-add-email').val();
      recipient.related = {
        type: 'Custom'
      };
    } else if (isSigningGroup(_currentRecipient)) {
      recipient.name = _currentRecipient.name;
      recipient.email = Label.signingGroup;
      recipient.signingGroupId = _currentRecipient.signingGroupId;
      recipient.related = {
        type: 'Custom'
      };
    } else {
      recipient.name = _currentRecipient.name;
      recipient.email = _currentRecipient.email;
      recipient.related = _currentRecipient.related;
    }

    if (DSUtil.isNotDefined(_currentRecipient.id)) { // Don't mess with existing recipients' routing orders
      var recipients = Result.envelope.recipients;
      if (recipients.length === 0) {
        recipient.routingOrder = 1;
      } else {
        recipient.routingOrder = (getLastRoutingOrder(recipients) + 1);
      }
    }

    recipient.authentication = {
      accessCode: null, idCheckRequired: $('#identityCheckCheckbox').is(':checked'), smsPhoneNumbers: null
    };
    var accessCode = $('#ds-recipient-access-code').val();
    if (DSUtil.isNotBlank(accessCode)) {
      recipient.authentication.accessCode = accessCode;
    }
    if (recipient.authentication.idCheckRequired && $('#identityCheck_select').val() === 'SMS') {
      var selectedCountryCode = $('#ds-recipient-SMS-countrycode').find('option:selected');
      var countryCode = selectedCountryCode.val();
      var countryCodeData = selectedCountryCode.attr('data-countryCode');
      var smsPhoneNumber = $('#ds-recipient-SMS-number').val();
      if (DSUtil.isNotBlank(smsPhoneNumber)) {
        if (!smsPhoneNumber.startsWith('+') && DSUtil.isNotBlank(countryCodeData) && countryCodeData !== 'none') {
          recipient.authentication.smsPhoneNumbers = ['+' + countryCode + smsPhoneNumber];
        } else {
          recipient.authentication.smsPhoneNumbers = [smsPhoneNumber];
        }
      }
    } else {
      recipient.authentication.idCheckRequired = false;
      recipient.authentication.smsPhoneNumbers = null;
    }
    recipient.note = $('#ds-recipient-note').val();
    recipient.type = $('#ds-recipient-signertype-select').val();
    recipient.signNow = $('#ds-recipient-sign-now').is(':checked');
    if (recipient.type === 'InPersonSigner') {
      recipient.hostName = recipient.name;
      recipient.hostEmail = recipient.email;
      recipient.name = DSUtil.isNotBlank($('#ds-recipient-signer-name').val()) ? $('#ds-recipient-signer-name').val() : recipient.name;
      recipient.signNow = recipient.hostEmail === CurrentUser.email;
    }

    if (!isRoleSupported(recipient.type)) {
      recipient.role = {
        name: '', value: null
      };
    } else {
      recipient.role = {
        name: $('#ds-recipient-signer-role').val().trim(), value: null
      };
      if (DSUtil.isNotEmpty(DSConfiguration.envelope.defaultRoles)) {
        for (var i = 0; i < DSConfiguration.envelope.defaultRoles.length; i++) {
          var role = DSConfiguration.envelope.defaultRoles[i];
          if (DSUtil.isNotBlank(role.name) && role.name === recipient.role.name) {
            recipient.role.value = role.value;
            break;
          }
        }
      }
    }
    if ($('#ds-recipient-signature-dropdown select').is(":visible")) {
      recipient.name = $('#ds-recipient-signature-dropdown select').val();
    }
    if (DSConfiguration.envelope.allowRecipientLanguageSelection === true) {
      recipient.emailSettings = {
        locale: $('#ds-recipient-language-select').val(),
        language: null,
        subject: $('#ds-recipient-message-subject').val(),
        message: $('#ds-recipient-message-body').val()
      };
      for (var i = 0; i < DSConfiguration.envelope.emailSettings.length; i++) {
        var emailSettings = DSConfiguration.envelope.emailSettings[i];
        if (emailSettings.locale === recipient.emailSettings.locale) {
          recipient.emailSettings.language = emailSettings.language;
          break;
        }
      }
    }

    try {
      var self = this;
      Visualforce.remoting.Manager.invokeAction(Recipient.saveRecipients, Result.envelope.id, [recipient], function (result, event) {
        if (isSuccessfulResult(event, result)) {
          Result.envelope.recipients = result.recipients;
          populateRecipientHTML();
          _currentRecipient = null; // Saved successfully, so reset global.
        }
        hideAll(false);
        $(self).prop('disabled', false);
        _saving = false;
      }, {escape: false});
    } catch (err) {
      handleError(err, false);
      hideAll(false);
      $(this).prop('disabled', false);
      _saving = false;
    }
  });

  //  Click handler for adding recipient
  $('.ds-add-recipient-dropdown').click(function (event) {
    showAddRecipientModal(event.target.id);
  });

  //  Click handler for edit recipient
  $('.ds-edit-recipient-dropdown').click(function (event) {
    hideErrors();
    hideAll(false);
    $('.ds-add-recipient-modal').show();
    // Reset input fields
    $('#ds-recipient-search-text').val('');
    $('#ds-recipient-search-result ul, #ds-recipient-info').html('');
    $('#ds-recipient-modal-title').text(Label.editRecipient);
    $('#ds-recipient-info').show();
    $('#ds-edit-recipient-btn').hide();
    $('#ds-recipient-name').attr('class', '');
    $('#ds-change-recipient').attr('class', '');
    $('#ds-quickadd-form, #ds-recipient-signer-name-div').hide();
    $('.ds-recipient-name-error-label, .ds-recipient-email-error-label, .ds-recipient-signature-dropdown-error-label, .ds-recipient-signer-name-error-label').hide();
    $('#ds-recipient-search-form').show();
    $('#ds-add-new-contact-link, #ds-add-new-contact-form').hide();
    _currentRecipient = newRecipient(event.target.id, _currentRecipient);
  });

  /**
   * Creates search result HTML.
   * @param action {String} - Type of search performed.
   * @param recipients {Array} - Recipient search results.
   * @return {String} HTML content.
   */
  function getSearchResultContent(action, recipients) {
    var content = '';
    if (DSUtil.isEmpty(recipients)) {
      content = '<br/>&nbsp;&nbsp;' + Label.noMatchFound;
    } else {
      recipients.sort(function (a, b) {
        var x = a.name.toLowerCase();
        var y = b.name.toLowerCase();
        if (x > y) return 1;
        if (x < y) return -1;
        return 0;
      });
      for (var i = 0; i < recipients.length; i++) {
        var recipient = recipients[i];
        var name = DSUtil.htmlEncode(recipient.name);
        var email = DSUtil.htmlEncode(recipient.email);
        content += '<li value="';
        content += DSUtil.htmlEncode(recipient.related.type) + '|';
        content += DSUtil.htmlEncode(recipient.related.id) + '|';
        content += name + '|';
        content += email + '|';
        content += DSUtil.htmlEncode(recipient.phone) + '">';
        if (action === 'add-contact' || action === 'edit-contact' || action === 'add-lead' || action === 'edit-lead' || action === 'add-user' || action === 'edit-user') {
          content += '<span class="account-name">';
          var accountName = DSUtil.isDefined(recipient.related.parent) ? recipient.related.parent.name : null;
          if (DSUtil.isNotBlank(accountName)) {
            content += DSUtil.htmlEncode(accountName);
          }
          content += '</span><span class="contact-name">';
          content += name;
          content += '</span><span class="contact-email">';
          if (DSUtil.isNotBlank(email)) {
            content += email;
          }
          content += '</span>';
        } else {
          content += name;
        }
        content += '</li>';
      }
    }
    return content;
  }

  // Click handler for searching contact/user/lead
  $('#ds-recipient-search-btn').click(function () {
    $('#ds-recipient-next-btn').addClass('inactive');
    $('#ds-add-new-contact-form').hide();
    $('#ds-recipient-search-form').show();
    var keyword = $('#ds-recipient-search-text').val();
    $searchResultList.html('');

    if (_currentRecipient.action !== 'add-signingGroup') {
      showRecipientModalLoading();
      try {
        Visualforce.remoting.Manager.invokeAction(_currentRecipient.searchAction, keyword, function (result, event) {
          if (isSuccessfulResult(event, result)) {
            $searchResultList.html(getSearchResultContent(_currentRecipient.action, result.recipients));
          }
          hideRecipientModalLoading();
        }, {escape: false});
      } catch (err) {
        handleError(err, false);
        hideRecipientModalLoading();
      }
    } else {
      //Function for searching signing groups
      loadAvailableSigningGroups(keyword);
    }
  });

  // Handle enter key when in search text box
  $("#ds-recipient-search-text").keyup(function (event) {
    if (event.keyCode === 13) {
      $("#ds-recipient-search-btn").click();
    }
  });

  // Click handler for saving new contact
  $('#ds-save-new-contact-btn').click(function () {
    if (_saving) {
      return;
    }
    _saving = true;
    $(this).prop('disabled', true);
    hideErrors();
    if (!validateAddNewContactForm()) {
      $(this).prop('disabled', false);
      _saving = false;
      return; // stop if add new contact form has invalid data
    }
    showRecipientModalLoading();
    try {
      var self = this;
      Visualforce.remoting.Manager.invokeAction(Recipient.addContacts, [{
        FirstName: $('#add-new-contact-fname').val(),
        LastName: $('#add-new-contact-lname').val(),
        Email: $('#add-new-contact-email').val(),
        MailingStreet: $('#add-new-contact-street').val(),
        MailingCity: $('#add-new-contact-city').val(),
        MailingState: $('#add-new-contact-state').val(),
        MailingPostalCode: $('#add-new-contact-zipcode').val(),
        MailingCountry: $('#add-new-contact-country').val(),
        Phone: $('#add-new-contact-phone').val(),
        Fax: $('#add-new-contact-fax').val()
      }], function (result, event) {
        if (isSuccessfulResult(event, result)) {
          showEditRecipientModal(result.recipients[0]);
        }
        $(self).prop('disabled', false);
        _saving = false;
      });
    } catch (err) {
      handleError(err, false);
      $(this).prop('disabled', false);
      _saving = false;
    }
  });

  // Click handler for changing recipient order number
  $('#recipients section').on('change', '.recipient .number', function () {
    var recipientId = this.parentNode.id;
    var recipient = getRecipientById(recipientId);
    var newRoutingOrder = parseInt(this.value);

    // Validate Input
    if (isNaN(this.value) || this.value <= 0 || (this.value % 1) !== 0 || this.value.slice(-1) === '.' || parseInt(this.value) === parseInt(recipient.routingOrder)) {
      this.value = recipient.routingOrder;
      return;
    }

    updateRecipientsRoutingOrder(recipient, newRoutingOrder);
  });

  // Click handler for the "New Recipient" link
  $('#ds-add-new-contact-link').click(function () {
    $('#ds-recipient-search-form').hide();
    // Reset/empty the form
    $('.add-new-contact-lname-error, .add-new-contact-email-error').hide();
    $('#add-new-contact-lname, #add-new-contact-email').removeClass('error');
    $('#add-new-contact-fname,' + '#add-new-contact-lname,' + '#add-new-contact-email,' + '#add-new-contact-street,' + '#add-new-contact-city,' + '#add-new-contact-state,' + '#add-new-contact-zipcode,' + '#add-new-contact-country,' + '#add-new-contact-phone,' + '#add-new-contact-fax').val('');
    $('#ds-add-new-contact-form').show();
  });

  // Click handler for changing language settings
  $('#ds-recipient-language-select').on('change', function () {
    if ($('#ds-recipient-language-select').val() !== '') {
      var emailSettings = DSConfiguration.envelope.emailSettings;
      for (var i = 0; i < emailSettings.length; i++) {
        if (emailSettings[i].locale === $('#ds-recipient-language-select').val()) {
          $('#ds-recipient-message-subject').val(emailSettings[i].subject);
          $('#ds-recipient-message-body').val(emailSettings[i].message);
        }
      }
    }
  });

  // Click handler for changing signature name
  $('#ds-recipient-signature-dropdown').find('select').on('change', function () {
    $('.ds-recipient-signature-dropdown-error-label').hide();
  });

  /********** Search result handling ***********/
  function setSearchResultSelected($result) {
    $searchResult.find('li.selected').removeClass('selected');
    $result.addClass('selected');
  }

  // Click handler for selecting search result
  $searchResultList.on('click', 'li', function () {
    setSearchResultSelected($(this));
    $('#ds-recipient-next-btn').removeClass('inactive');
  });

  // Double-click handler for selecting search result
  $searchResultList.on('dblclick', 'li', function () {
    setSearchResultSelected($(this));
    $('#ds-recipient-next-btn').click();
  });

  // Click handler for selecting signer role
  $('.ds-recipient-signer-role-li').click(function () {
    var roleValue = parseInt($(this).val());
    var roleName = '';
    for (var i = 0; i < DSConfiguration.envelope.defaultRoles.length; i++) {
      var role = DSConfiguration.envelope.defaultRoles[i];
      if (role.value === roleValue) {
        roleName = role.name;
        break;
      }
    }
    $('#ds-recipient-signer-role').val(roleName);
    $('#ds-recipient-signer-role-dropdown').hide();
  });

  // Change handler for the recipient signer type dropdown
  $('#ds-recipient-signertype-select').change(function () {
    // Handle special case for 'InPersonSigner' type
    if ($(this).val() === 'InPersonSigner' || ($(this).val() === 'Signer' && DSUtil.isDefined(_currentRecipient) && isCurrentUser(_currentRecipient.email))) {
      $('#ds-recipient-signer-name-div').show();
      $('#ds-recipient-signer-name').val(_currentRecipient.name);
      $("#ds-recipient-sign-now").prop('checked', _currentRecipient.signNow);
    } else {
      $('#ds-recipient-signer-name-div').hide();
    }
    // Handle special case for non signer type
    if (!isRoleSupported($(this).val())) {
      $('.ds-recipient-signer-role-div').hide();
    } else {
      $('.ds-recipient-signer-role-div').show();
      if (DSUtil.isDefined(_currentRecipient)) {
        if (DSUtil.isDefined(_currentRecipient.role) && DSUtil.isNotBlank(_currentRecipient.role.name)) {
          $('#ds-recipient-signer-role').val(_currentRecipient.role.name);
        } else {
          var role = getNextAvailableSignerRole();
          $('#ds-recipient-signer-role').val(role.name);
        }
      }
    }
  });

  //Change handler for signer name
  $('#ds-recipient-signer-name').keyup(function () {
    if ($(this).val()) {
      $('#ds-recipient-signer-name').removeClass('error');
      $('.ds-recipient-signer-name-error-label').hide();
    } else {
      $('#ds-recipient-signer-name').addClass('error');
      $('.ds-recipient-signer-name-error-label').show();
    }
  });

  // Change handler for entering Last Name in the New Contact form
  $('#add-new-contact-lname').keyup(function () {
    if ($(this).val()) {
      $('#add-new-contact-lname').removeClass('error');
      $('.add-new-contact-lname-error').hide();
    } else {
      $('#add-new-contact-lname').addClass('error');
      $('.add-new-contact-lname-error').show();
    }
  });

  // Change handler for entering Email in the New Contact form
  $('#add-new-contact-email').keyup(function () {
    if ($(this).val()) {
      $('#add-new-contact-email').removeClass('error');
      $('.add-new-contact-email-error').hide();
    } else {
      $('#add-new-contact-email').addClass('error');
      $('.add-new-contact-email-error').text(Label.fieldRequired).show();
    }
  });

  // Change handler for entering Name in the Quick Add form
  $('#quick-add-name').keyup(function () {
    if ($(this).val()) {
      $('#quick-add-name').removeClass('error');
      $('.ds-recipient-name-error-label').hide();
    } else {
      $('#quick-add-name').addClass('error');
      $('.ds-recipient-name-error-label').show();
    }
  });

  // Change handler for entering Email in the Quick Add form
  $('#quick-add-email').keyup(function () {
    if ($(this).val()) {
      $('#quick-add-email').removeClass('error');
      $('.ds-recipient-email-error-label').hide();
    } else {
      $('#quick-add-email').addClass('error');
      $('.ds-recipient-email-error-label').text(Label.fieldRequired).show();
    }
  });

  $('#message-document-title').click(function () {
    if ($('#message').hasClass('expanded')) {
      $('#message').removeClass('expanded');
      $('#message').addClass('collapsed');
    } else {
      $('#message').removeClass('collapsed');
      $('#message').addClass('expanded');
    }
  });

  $('#envelopeCustomFields-document-title').click(function () {
    if ($('#envelopeCustomFields').hasClass('expanded')) {
      $('#envelopeCustomFields').removeClass('expanded');
      $('#envelopeCustomFields').addClass('collapsed');
    } else {
      $('#envelopeCustomFields').removeClass('collapsed');
      $('#envelopeCustomFields').addClass('expanded');
    }
  });

  $('#settings-document-title').click(function () {
    if ($('#settings').hasClass('expanded')) {
      $('#settings').removeClass('expanded');
      $('#settings').addClass('collapsed');
    } else {
      $('#settings').removeClass('collapsed');
      $('#settings').addClass('expanded');
    }
  });

  $('#sendReminderDays').change(function () {
    var days = this.value;
    if (isNaN(days) || days < 0 || (days % 1) !== 0 || days.slice(-1) === '.') {
      this.value = Result.envelope.options.remindAfterDays;
    }
  });

  $('#sendReminderRepeatDays').change(function () {
    var days = this.value;
    if (isNaN(days) || days < 0 || (days % 1) !== 0 || days.slice(-1) === '.') {
      this.value = Result.envelope.options.remindFrequencyDays;
    }
  });

  $('#expireEnvelopeDays').change(function () {
    var days = this.value;
    if (isNaN(days) || days < 0 || (days % 1) !== 0 || days.slice(-1) === '.') {
      this.value = Result.envelope.options.expireAfterDays;
    }
  });

  $('#warnExpireDays').change(function () {
    var days = this.value;
    if (isNaN(days) || days < 0 || (days % 1) !== 0 || days.slice(-1) === '.') {
      this.value = Result.envelope.options.expireWarnDays;
    }
  });

  if (DSConfiguration.envelope.showAddAttachment || DSConfiguration.hasUploadError) {
    $('#add-attachment').click();
  }
});
