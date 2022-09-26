// release dollar sign for other libraries possible 
jQuery.noConflict();
// all docusign front end logic starts from document.loaded event
jQuery(document).ready(function ($) {
  /*------------------------------ Init ------------------------------*/
  var $dsAlert = $('#dsAlert');
  loadAdminTab();

  /*------------------------- Helper functions -----------------------*/
  function loadAdminTab() {
    hideAll();
    showMessages(dsGlobal.responseJson.messages);

    if (dsGlobal.responseJson.action === 'ShowLogin') {
      $('#accountTabContent').show();
      $('#login-or-create-trial').show();
      if (dsGlobal.responseJson.admin.loginInfo && dsGlobal.responseJson.admin.loginInfo.accounts && dsGlobal.responseJson.admin.loginInfo.accounts.length > 1) {
        $.each(dsGlobal.responseJson.admin.loginInfo.accounts, function (key, value) {
          $('#selectedAccountId').append($('<option></option>').attr('value', value).text(value));
        });
        $('#accountDropdownField').show();
      }
      if ($('#docusignEnvironment').val() === 'other') {
        $('#otherEnvironmentField').show();
      }
    } else if (dsGlobal.responseJson.action === 'ShowConnect') {
      $('#accountTabContent').show();
      $('#login-to-connect').show();
    } else if (dsGlobal.responseJson.action === 'ShowTrialForm') {
      $('#accountTabContent').show();
      $('#trial-step-two').show();
    } else if (dsGlobal.responseJson.action === 'ShowHome') {
      // Only load iframe content if it's visible
      $('#ds-iframe').attr('src', 'https://www.docusign.com/console/www/dfs/');
      if (dsGlobal.responseJson.admin.isAdmin !== true) {
        $('#settingsTabListItem').hide();
        $('#accountTabListItem').hide();
        $('#layoutsTabListItem').hide();
        $('#customTagsTabListItem').hide();
        $('#usersTabListItem').hide();
      }
      if (dsGlobal.responseJson.admin.isExpiredAccount === true && dsGlobal.responseJson.admin.isAdmin === true) {
        $('#settingsTabListItem').hide();
        $('#accountTabListItem').hide();
        $('#customTagsTabListItem').hide();
        $('#usersTabListItem').hide();
      }
      hideCustomTagsIfDisabled();
      $('#homeTab').addClass('active');
      $('#navigation').show();
      $('#homeTabContent').show();
    } else if (dsGlobal.responseJson.action === 'ShowUsers') {
      $('#usersTab').addClass('active');
      $('#navigation').show();
      $('#usersTabContent').show();
      hideCustomTagsIfDisabled();
    } else if (dsGlobal.responseJson.action === 'ShowSettings') {
      $('#settingsTab').addClass('active');
      $('#navigation').show();
      populateSettings();
      hideCustomTagsIfDisabled();
      $('#settingsTabContent').show();
    } else if (dsGlobal.responseJson.action === 'ShowAccount') {
      $('#accountTab').addClass('active');
      $('#navigation').show();
      $('#accountTabContent').show();
      $('#account-installed-content').show();
      hideCustomTagsIfDisabled();
    } else if (dsGlobal.responseJson.action === 'ShowCustomTags') {
      if (!dsGlobal.settings.tabTextFormatting) {
        $('#newCustomTagFormat').remove();
      }
      if (dsGlobal.settings.savingCustomTabs) {
        $('#customTagsTab').addClass('active');
        $('#navigation').show();
        if (dsGlobal.settings.mergeFields) {
          $('#relatedToSalesforce, .relateFieldToSalesforce').show();
        } else {
          $('#relatedToSalesforce, .relateFieldToSalesforce').hide();
        }
        if (dsGlobal.settings.tabDataLabels) {
          $('#newCustomTag').show();
        } else {
          $('#newCustomTag').hide();
        }
        $('#customTagTabContent').show();
      }
      if (dsGlobal.responseJson.admin.tagTypes) {
        $('#tagTypeDropdown').find('option').remove().end();
        for (var i = 0; i < dsGlobal.responseJson.admin.tagTypes.length; i++) {
          var tt = dsGlobal.responseJson.admin.tagTypes[i];
          $('#tagTypeDropdown').append($('<option></option>').attr('value', tt.type).text(tt.name));
        }
      }
    } else if (dsGlobal.responseJson.action === 'ShowLayouts') {
      $('#layoutsTab').addClass('active');
      $('#navigation').show();
      $('#layoutsTabContent').show();
      hideCustomTagsIfDisabled();
      if (dsGlobal.responseJson.admin.metadataRemoteSiteNeeded) {
        addRemoteSites('layouts', false, function (success) {
          if (success) {
            location.reload();
          } else {
            hideAll();
            $('#layoutsTab').addClass('active');
            $('#navigation').show();
            $('#layoutsTabContent').show();
            $('#add-buttons-to-layouts').show();
          }
        });
      } else {
        for (var i = 0; i < dsGlobal.responseJson.admin.layouts.length; i++) {
          $('#desktopCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked', dsGlobal.responseJson.admin.layouts[i].desktopSelected === true);
          $('#mobileCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked', dsGlobal.responseJson.admin.layouts[i].mobileSelected === true);
          $('#statusCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked', dsGlobal.responseJson.admin.layouts[i].statusListSelected === true);
          $('#recipientStatusCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked', dsGlobal.responseJson.admin.layouts[i].recipientStatusListSelected === true);
        }
        $('#layoutsDropdownContent').show();
        $('#layoutsChecklistContent').show();
        $('#layoutsButtons').show();
      }
      if (dsGlobal.responseJson.admin.isExpiredAccount === true && dsGlobal.responseJson.admin.isAdmin === true) {
        $('#settingsTabListItem').hide();
        $('#accountTabListItem').hide();
        $('#customTagsTabListItem').hide();
        $('#usersTabListItem').hide();
      }
    }
    if (!Modernizr.svg) {
      console.log('SVG is NOT supported.');
      // Browser doesnt support SVG (eg. IE 8).  Replace all SVG with PNG.
      $('.logo').attr('src', dsGlobal.docusignPNG);
      $('.docusignlogo').attr('src', dsGlobal.DocuSignLoadingLogoPNG);
      $('#languageSettingsCloseIcon').attr('src', dsGlobal.deleteIconPNG);
    }
  }

  function createRemoteSites(done) {
    // Calls the Metdata API from JavaScript to create the Remote Site Setting to permit Apex callouts
    var request = '<?xml version="1.0" encoding="utf-8"?>' + '<env:Envelope xmlns:env="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" ' + 'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"><env:Header><urn:SessionHeader ' + 'xmlns:urn="http://soap.sforce.com/2006/04/metadata"><urn:sessionId>' + dsGlobal.sessionId + '</urn:sessionId>' + '</urn:SessionHeader></env:Header><env:Body><upsertMetadata xmlns="http://soap.sforce.com/2006/04/metadata">' + '<metadata xsi:type="RemoteSiteSetting"><fullName>Salesforce</fullName><description>' + 'Salesforce Metadata API remote site. Created by the DocuSign eSignature for Salesforce package.</description>' + '<disableProtocolSecurity>false</disableProtocolSecurity><isActive>true</isActive><url>' + dsGlobal.responseJson.admin.salesforceConfiguration.baseURL + '</url></metadata></upsertMetadata></env:Body>' + '</env:Envelope>';
    $.ajax({
      type: 'POST',
      url: 'https://' + dsGlobal.responseJson.admin.salesforceConfiguration.host + '/services/Soap/m/47.0',
      processData: false,
      contentType: 'text/xml',
      headers: {
        SOAPAction: '\'\''
      },
      dataType: 'xml',
      data: request,
      success: function (anything, status, xhr) {
        done(true, status);
      },
      error: function (xhr, status, error) {
        done(false, status, error);
      }
    });
  }

  function addRemoteSites(context /* string */, showCancel /* boolean */, done /* f(sitesAdded: boolean): void */) {
    var modal = $('#addRemoteSiteModal');
    var cancelBtn = $('#cancelAddRemoteSiteButton');
    var ctx = $('#addRemoteSiteContext');
    ctx.text(ctx.attr('label-' + context));
    $('#addRemoteSiteButton').click(function () {
      showLoading();
      createRemoteSites(function (success, status, error) {
        if (success) {
          modal.hide();
          done(true);
        } else {
          console.log('Failed to add remote sites. Status = ' + status + ', error = ' + error);
          showMessages([{
            severity: 'Error', code: 'MetadataApiError', description: error
          }]);
          modal.hide();
          done(false);
        }
      });
    });
    if (showCancel) {
      cancelBtn.click(function (event) {
        modal.hide();
        done(false);
      });
      cancelBtn.show();
    } else {
      cancelBtn.hide();
    }
    modal.show();
  }

  function hideAll() {
    $('#addRemoteSiteModal').hide();
    $('#navigation').hide();
    $('#homeTab').removeClass('active');
    $('#usersTab').removeClass('active');
    $('#settingsTab').removeClass('active');
    $('#accountTab').removeClass('active');
    $('#layoutsTab').removeClass('active');
    $('#customTagsTab').removeClass('active');
    $('#homeTabContent').hide();
    $('#customTagTabContent').hide();
    $('#newCustomTagCreationContent').hide();
    $('#settingsTabContent').hide();
    $('#accountTabContent').hide();
    $('#accountDropdownField').hide();
    $('#otherEnvironmentField').hide();
    $('#login-or-create-trial').hide();
    $('#login-to-connect').hide();
    $('#trial-step-two').hide();
    $('#account-installed-content').hide();
    $('#layoutsTabContent').hide();
    $('#layoutsMetadataContent').hide();
    $('#layoutsMetadataButtons').hide();
    $('#layoutsDropdownContent').hide();
    $('#layoutsChecklistContent').hide();
    $('#layoutsButtons').hide();
    $('#usersTabContent').hide();
    $('#add-buttons-to-layouts').hide();
    hideLoading();
  }

  function hideCustomTagsIfDisabled() {
    if (!dsGlobal.settings.savingCustomTabs) {
      $('#customTagsTabListItem').hide();
    }
  }

  $('.ip-range-button').click(function (event) {
    $(this).addClass('active');
  });

  $('#loginButton').click(function () {
    showLoading();
    try {
      Visualforce.remoting.Manager.invokeAction(dsGlobal.login, {
        username: $('#docusignLoginEmail').val(),
        password: $('#docusignPassword').val(),
        environmentName: $('#docusignEnvironment').val(),
        otherURL: $('#otherDocusignEnvironment').val(),
        selectedAccount: $('#selectedAccountId').val()
      }, function (result, event) {
        remoteActionHandler(result, event);
      });
    } catch (err) {
      console.log(err);
    }
  });

  $('.forgot-password').click(function () {
    var env = 'www';
    if ($('#docusignEnvironment').val() === 'production') {
      var dataCenter = window.location.host.toString().split('.')[1];
      if (dataCenter.startsWith('eu')) {
        env = 'eu';
      } else {
        env = 'www';
      }
    } else if ($('#docusignEnvironment').val() === 'demo') {
      env = 'demo';
    } else if ($('#otherDocusignEnvironment').val() === 'stage') {
      env = 'wwwstage';
    } else if ($('#otherDocusignEnvironment').val() === 'test') {
      env = 'test';
    } else if ($('#otherDocusignEnvironment').val() === 'test1') {
      env = 'test1';
    } else if ($('#otherDocusignEnvironment').val() === 'test2') {
      env = 'test2';
    }
    $('.forgot-password').attr('href', 'https://' + env + '.docusign.net/Member/MemberForgotPassword.aspx');
  });

  $('#createAccountButton').click(function () {
    var docusignTrialEmail = $('#docusignTrialEmail').val();
    if (docusignTrialEmail.indexOf('@') > 0 && docusignTrialEmail.lastIndexOf('.') > 2) {
      showLoading();
      try {
        Visualforce.remoting.Manager.invokeAction(dsGlobal.prepareTrialAccount, $('#docusignTrialEmail').val(), function (result, event) {
          remoteActionHandler(result, event);
          if (result.admin.trial) {
            $('#firstName').val(result.admin.trial.user.firstName);
            $('#lastName').val(result.admin.trial.user.lastName);
            $('#phoneNumber').val(result.admin.trial.address.phone);
            $('#companyName').val(result.admin.trial.name);
            $('#country').val(result.admin.trial.address.country);
            $('#streetAddress').val(result.admin.trial.address.address1);
            $('#city').val(result.admin.trial.address.city);
            $('#stateProvince').val(result.admin.trial.address.region);
            $('#postalCode').val(result.admin.trial.address.postalCode);
            $.each(result.admin.countries, function (key, country) {
              if (result.admin.trial.address.country === country.value) {
                $('#country').append($('<option selected></option>').attr('value', country.value).text(country.label));
              } else {
                $('#country').append($('<option></option>').attr('value', country.value).text(country.label));
              }
            });
            toggleStateFields();
            $.each(result.admin.usStates, function (key, value) {
              if (result.admin.trial.address.region === value) {
                $('#usState').append($('<option selected></option>').attr('value', value).text(value));
              } else {
                $('#usState').append($('<option></option>').attr('value', value).text(value));
              }
            });
            dsGlobal.responseJson.gdprCountrySettings = result.admin.gdprCountrySettings;
            if (validateTrialForm()) {
              addGDPRcontent($('#country').val());
            }
          }
        });
      } catch (err) {
        console.log(err);
      }
    }
  });

  function validateTrialForm() {
    var firstName = $('#firstName').val();
    var lastName = $('#lastName').val();
    var companyName = $('#companyName').val();
    var country = $('#country').val();
    var phoneNumber = $('#phoneNumber').val();
    var invalid = false;
    var emptyCountry = false;

    if (DSUtil.isBlank(firstName)) {
      $('#firstName-error-label').show();
      $('#firstName').addClass('error');
      invalid = true;
    } else {
      $('#firstName-error-label').hide();
      $('#firstName').removeClass('error');
    }

    if (DSUtil.isBlank(lastName)) {
      $('#lastName-error-label').show();
      $('#lastName').addClass('error');
      invalid = true;
    } else {
      $('#lastName-error-label').hide();
      $('#lastName').removeClass('error');
    }

    if (DSUtil.isBlank(companyName)) {
      $('#companyName-error-label').show();
      $('#companyName').addClass('error');
      invalid = true;
    } else {
      $('#companyName-error-label').hide();
      $('#companyName').removeClass('error');
    }

    if (DSUtil.isBlank(phoneNumber)) {
      $('#phoneNumber-error-label').show();
      $('#phoneNumber').addClass('error');
      invalid = true;
    } else {
      $('#phoneNumber-error-label').hide();
      $('#phoneNumber').removeClass('error');
    }

    if (DSUtil.isBlank(country)) {
      $('#country-error-label').show();
      $('#country').addClass('errorlist');
      invalid = true;
      emptyCountry = true;
    } else {
      $('#country-error-label').hide();
      $('#country').removeClass('errorlist');
    }

    var nextButton = $('#trialFormNextButton');
    if (invalid) {
      nextButton.removeAttr('href');
      nextButton.removeClass('active');
      nextButton.addClass('inactive');
      if (emptyCountry) {
        $('#gdprConsentMessage').empty();
        $('#marketOptIn').hide();
      }
      return false;
    } else {
      nextButton.attr('href', '#');
      nextButton.removeClass('inactive');
      nextButton.addClass('active');
      return true;
    }

  }

  $('#country').change(function () {
    if (validateTrialForm()) {
      toggleStateFields();
      addGDPRcontent($('#country').val());
    }
  });

  function toggleStateFields() {
    if ($('#country').val() === 'US') {
      $('#stateProvince').hide();
      $('#usState').show();
    } else {
      $('#usState').hide();
      $('#stateProvince').show();
    }

  }

  // Helper function add email settings to UI
  function addGDPRcontent(country) {
    var countryMap = dsGlobal.responseJson.gdprCountrySettings;
    if (country === 'US') {
      var consentMessage = unescapeHtmlSpecialCharacters(String(countryMap['US'].consentMessage).trim());
      $('#gdprConsentMessage').empty();
      $('#marketOptIn').hide();
      $('#gdprConsentMessage').append(consentMessage);
    } else {
      var consentMessage = unescapeHtmlSpecialCharacters(String(countryMap['ROW'].consentMessage).trim());
      $('#gdprConsentMessage').empty();
      $('#marketOptIn').show();
      $('#gdprConsentMessage').append(consentMessage);
    }
    if (country in countryMap) {
      $('#marketOptIn').prop('checked', false);
    } else {
      $('#marketOptIn').prop('checked', true);
    }

  }

  $('#trialFormNextButton').click(function () {
    try {
      if (validateTrialForm()) {
        showLoading();
        var state = $('#stateProvince').val().trim();
        var country = $('#country').val().trim();
        if (country === 'US') {
          state = $('#usState').val();
        }
        var firstName = $('#firstName').val().trim() || '';
        var lastName = $('#lastName').val().trim() || '';
        Visualforce.remoting.Manager.invokeAction(dsGlobal.createTrialAccount, {
          name: $('#companyName').val(),
          user: {
            username: (firstName + ' ' + lastName).trim(),
            firstName: firstName.trim(),
            lastName: lastName.trim(),
            email: $('#docusignTrialEmail').val().trim(),
            canManageAccount: true
          },
          address: {
            address1: $('#streetAddress').val().trim(),
            city: $('#city').val().trim(),
            region: state,
            postalCode: $('#postalCode').val().trim(),
            country: country,
            phone: $('#phoneNumber').val().trim()
          },
          marketOptIn: $('#country').val() === 'US' ? true : $('#marketOptIn').is(':checked'),
          countryCode: $('#country').val()
        }, function (result, event) {
          if (showError(result, event)) {
            hideLoading();
          } else {
            remoteActionHandler(result, event);
            if (result.admin && result.admin.email) {
              $('#docusignLoginEmail').val(result.admin.email);
              $('#docusignPassword').focus();
            }
          }
        });
      }
    } catch (err) {
      console.log(err);
    }
  });

  $('#connectButton').click(function () {
    if ($('#connectAgreeCheckbox').is(':checked')) {
      showLoading();
      createRemoteSites(function (success) {
        try {
          Visualforce.remoting.Manager.invokeAction(dsGlobal.connect, {
            username: $('#salesforceUsername').val(),
            password: $('#salesforcePassword').val(),
            environment: $('#salesforceEnvironment').val()
          }, function (result, event) {
            if (event.status && result && result.action === 'ShowHome') {
              getAccountFeatures(result);
            } else {
              dsGlobal.responseJson.action = 'ShowConnect';
              remoteActionHandler(result, event);
            }
          });
        } catch (err) {
          dsGlobal.responseJson.action = 'ShowConnect';
          dsGlobal.responseJson.messages = [
            {
              severity: 'Error',
              code: -1,
              description: err
            }
          ];
          loadAdminTab();
        }
      });
    }
  });

  function getAccountFeatures(result) {
    try {
      Visualforce.remoting.Manager.invokeAction(dsGlobal.getAccountFeatures, function (result2, event) {
        if (DSUtil.isDefined(result2) && DSUtil.isDefined(result2.admin)) {
          result.admin.accountSettings = result2.admin.accountSettings;
        }
        remoteActionHandler(result, event);
      });
    } catch (err) {
      console.log(err);
    }
  }

  $('#updateLayoutsButton').click(function () {
    showLoading();
    for (var i = 0; i < dsGlobal.responseJson.admin.layouts.length; i++) {
      dsGlobal.responseJson.admin.layouts[i].desktopSelected = $('#desktopCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked');
      if (dsGlobal.responseJson.admin.layouts[i].showMobileCheckbox === true) {
        dsGlobal.responseJson.admin.layouts[i].mobileSelected = $('#mobileCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked');
      }
      dsGlobal.responseJson.admin.layouts[i].statusListSelected = $('#statusCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked');
      if (dsGlobal.responseJson.admin.layouts[i].showRecipientStatusCheckbox === true) {
        dsGlobal.responseJson.admin.layouts[i].recipientStatusListSelected = $('#recipientStatusCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked');
      }
    }
    try {
      Visualforce.remoting.Manager.invokeAction(dsGlobal.updateLayouts, dsGlobal.responseJson.admin.layouts, function (result, event) {
        remoteActionHandler(result, event);
      });
    } catch (err) {
      console.log(err);
    }
  });

  $('#modifyAccountConfigButton').click(function () {
    $('#docusignPassword').val('');
    $('#selectedAccountId').val('');
    dsGlobal.responseJson.action = 'ShowLogin';
    loadAdminTab();
  });

  $('#execute-post-install-scripts').click(function () {
    try {
      showLoading();
      Visualforce.remoting.Manager.invokeAction(dsGlobal.executePostInstallScripts, function (result, event) {
        showMessages(result.messages);
      });
    } catch (err) {
      console.log(err);
    } finally {
      hideLoading();
    }
  });

  var $resetCredentialsModal = $('#reset-account-credentials-modal');
  $('#reset-account-credentials').click(function () {
    $resetCredentialsModal.show();
  });

  $('#reset-account-credentials-confirm').click(function () {
    $resetCredentialsModal.hide();
    try {
      showLoading();
      var resetUsers = $('#reset-user-credentials').is(':checked');
      Visualforce.remoting.Manager.invokeAction(dsGlobal.resetAccountConfiguration, resetUsers, function (result, event) {
        showMessages(result.messages);
      });
    } catch (err) {
      console.log(err);
    } finally {
      hideLoading();
    }
  });

  $('#reset-account-credentials-cancel, #reset-account-credentials-close').click(function () {
    $dsAlert.hide();
    $resetCredentialsModal.hide();
  });

  $('#trialFormBackButton, #cancelButton').click(function () {
    dsGlobal.responseJson.messages = [];
    dsGlobal.responseJson.action = 'ShowLogin';
    loadAdminTab();
  });

  $('#docusignTab').click(function () {
    if ($('#docusignTab').attr('href')) {
      try {
        showLoading();
        Visualforce.remoting.Manager.invokeAction(dsGlobal.findDocuSignUrl, function (result, event) {
          dsGlobal.responseJson.messages = result.messages;
          if (result.url) {
            var newWin = window.open(unescapeHtmlSpecialCharacters(result.url));
            if (!newWin || newWin.closed || typeof newWin.closed === 'undefined') {
              dsGlobal.responseJson.messages[0] = {
                code: 'UnknownError', description: dsGlobal.windowBlockedByBrowserText, severity: 'Error'
              };
            }
          }
          showMessages(dsGlobal.responseJson.messages);
        });
      } catch (err) {
        console.log(err);
      } finally {
        hideLoading();
      }
    }
  });

  /*
   * This function un-escapes all html special characters.
   * @param str the string to be modified
   */

  function unescapeHtmlSpecialCharacters(str) {
    if (!str) {
      return '';
    }
    return str.replace(/&quot;/g, '"').replace(/&amp;/g, '&').replace(/&lt;/g, '<').replace(/&gt;/g, '>');
  }

  function showLoading() {
    $('.fullscreenload').show();
    $('#cancelLayoutsButton').removeAttr('href');
    $('#updateLayoutsButton').removeAttr('href');
    $('#loginButton').removeAttr('href');
    $('#connectButton').removeAttr('href');
    $('#createAccountButton').removeAttr('href');
  }

  function hideLoading() {
    $('.fullscreenload').hide();
    $('#cancelLayoutsButton').attr('href', Tab.home);
    $('#updateLayoutsButton').attr('href', 'javascript:void(0);');
    $('#loginButton').attr('href', '#');
    $('#connectButton').attr('href', '#');
    $('#createAccountButton').attr('href', '#');
  }

  $('#connectAgreeCheckbox').click(function () {
    if ($('#connectAgreeCheckbox').is(':checked')) {
      $('#connectButton').removeClass('inactive');
    } else {
      $('#connectButton').addClass('inactive');
    }
  });

  $('#docusignTrialEmail').keyup(function () {
    toggleCreateAccountButton();
  });

  $('#firstName, #lastName, #phoneNumber, #companyName').keyup(function () {
    if (validateTrialForm()) {
      toggleStateFields();
      addGDPRcontent($('#country').val());
    }
  });

  $('#trialAgreeCheckbox').click(function () {
    toggleCreateAccountButton();
  });

  function toggleCreateAccountButton() {
    if ($('#docusignTrialEmail').val().indexOf('@') > 0 && $('#docusignTrialEmail').val().lastIndexOf('.') > 2) {
      $('#createAccountButtonDiv').removeClass('inactive');
    } else {
      $('#createAccountButtonDiv').addClass('inactive');
    }
  }

  $('#desktopHeader').click(function () {
    selectAllDesktop();
  });

  $('#mobileHeader').click(function () {
    selectAllMobile();
  });

  $('#statusListHeader').click(function () {
    selectAllStatusList();
  });

  $('#recipientStatusListHeader').click(function () {
    selectAllRecipientStatusList();
  });

  $('#layoutDropdown').change(function () {
    clearAll();
    if ($('#layoutDropdown').val() === 'All') {
      selectAllDesktop();
      selectAllMobile();
      selectAllStatusList();
      selectAllRecipientStatusList();
    } else if ($('#layoutDropdown').val() === 'Desktop') {
      selectAllDesktop();
    } else if ($('#layoutDropdown').val() === 'Mobile') {
      selectAllMobile();
    }
  });

  $('#docusignEnvironment').change(function () {
    if ($('#docusignEnvironment').val() === 'other') {
      $('#otherEnvironmentField').show();
    } else {
      $('#otherEnvironmentField').hide();
    }
  });

  function selectAllDesktop() {
    var checked = !$('#desktopCheckbox' + dsGlobal.responseJson.admin.layouts[0].uniqueId).prop('checked');
    for (var i = 0; i < dsGlobal.responseJson.admin.layouts.length; i++) {
      $('#desktopCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked', checked);
    }
  }

  function selectAllMobile() {
    var checked = !$('#mobileCheckbox' + dsGlobal.responseJson.admin.layouts[0].uniqueId).prop('checked');
    for (var i = 0; i < dsGlobal.responseJson.admin.layouts.length; i++) {
      if (dsGlobal.responseJson.admin.layouts[i].showMobileCheckbox === true) {
        $('#mobileCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked', checked);
      }
    }
  }

  function selectAllStatusList() {
    var checked = !$('#statusCheckbox' + dsGlobal.responseJson.admin.layouts[0].uniqueId).prop('checked');
    for (var i = 0; i < dsGlobal.responseJson.admin.layouts.length; i++) {
      $('#statusCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked', checked);
    }
  }

  function selectAllRecipientStatusList() {
    var checked = !$('#recipientStatusCheckbox' + dsGlobal.responseJson.admin.layouts[0].uniqueId).prop('checked');
    for (var i = 0; i < dsGlobal.responseJson.admin.layouts.length; i++) {
      if (dsGlobal.responseJson.admin.layouts[i].showRecipientStatusCheckbox === true) {
        $('#recipientStatusCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked', checked);
      }
    }
  }

  function clearAll() {
    for (var i = 0; i < dsGlobal.responseJson.admin.layouts.length; i++) {
      $('#desktopCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked', false);
      $('#mobileCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked', false);
      $('#statusCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked', false);
      $('#recipientStatusCheckbox' + dsGlobal.responseJson.admin.layouts[i].uniqueId).prop('checked', false);
    }
  }

  /**
   * This function handles the result from Salesforce Remote Action call.
   * @param result the result of the Salesforce Remote Action call
   * @param event the event of the Salesforce Remote Action call
   */
  function remoteActionHandler(result, event) {
    if (event.status && result) {
      if (result.action) {
        dsGlobal.responseJson.action = result.action;
      }
      if (result.messages) {
        dsGlobal.responseJson.messages = result.messages;
      }
      if (result.admin) {
        if (result.admin.isAdmin === true) {
          dsGlobal.responseJson.admin.isAdmin = true;
        }
        if (result.admin.loginInfo && result.admin.loginInfo.accounts) {
          dsGlobal.responseJson.admin.loginInfo = result.admin.loginInfo;
        }
      }
      if (DSUtil.isDefined(result.admin) && DSUtil.isDefined(result.admin.accountSettings)) {
        dsGlobal.settings = result.admin.accountSettings;
      }
    } else if (!event.status)
      dsGlobal.responseJson.messages = [
        {
          severity: 'Error',
          code: event.statusCode,
          description: event.message
        }
      ];
    loadAdminTab();
  }

  function showMessage(errorCode, errorDescription) {
    errorDescription = errorDescription.replace('layoutsLink', '<a href="' + Tab.layouts + '">' + dsGlobal.layoutsText + '</a>');
    errorDescription = errorDescription.replace('usersLink', '<a href="' + Tab.users + '">' + dsGlobal.usersText + '</a>');
    $dsAlert.find('ul').append('<li><p>' + errorDescription + '</p></li>');
    $dsAlert.show();
  }

  function showMessages(messages) {
    $dsAlert.hide();
    $dsAlert.find('ul').empty();
    $('.alert-messages').removeClass('info');
    $('.alert-messages').removeClass('successful');
    for (var m = 0; m < messages.length; m++) {
      $dsAlert.show();
      if (messages[m].severity === 'Success') {
        $('.alert-messages').addClass('successful');
      } else if (messages[m].severity === 'Info') {
        $('.alert-messages').addClass('info');
      }
      showMessage(messages[m].code, messages[m].description);
    }
    if (messages.length > 0) {
      $('html, body').animate({
        scrollTop: 0
      }, 'fast');
    }
  }

  // Populate the envelope settings

  function populateSettings() {
    var settings = dsGlobal.responseJson.admin.settings;
    // Email Settings
    populateCheckbox('disableUserEmailSubjectCheckBox', settings.disableEmailSubjectEditing);
    populateCheckbox('disableUserEmailMessageCheckBox', settings.disableEmailMessageEditing);
    populateEmailSettings(settings.currentLocalizationSettings);
    populateEmailChatterSettings(settings.chatterSettings);
    //Apex timeout settings
    $('#apexTimeOutInput').val(populateRemindExpireSettings(settings.apexTimeOuts / 1000));
    // Recipient Role Settings
    var roles = '';
    if (settings.recipientRoles) {
      for (var i = 0; i < settings.recipientRoles.length; i++) {
        if (settings.recipientRoles[i]) {
          roles += settings.recipientRoles[i].name + '\n';
        }
      }
    }
    $('#recipientRoleSettingsTextarea').val(roles);

    // Send Settings
    populateCheckbox('hideSendNowButton', settings.hideSendNowButton);
    populateCheckbox('hideNextButton', settings.hideNextButton);
    populateCheckbox('enableSFCalloutLimit', settings.enableSFCalloutLimit);
    populateCheckbox('enableMobileTaggingUI', settings.enableMobileAppForSF1);
    populateCheckbox('displayTaggerPageInNewWindow', settings.displayTaggerPageInNewWindow);
    populateCheckbox('displayInPersonSigningPageInNewWindow', settings.displayInPersonSigningPageInNewWindow);
    if (dsGlobal.settings.smsAuthentication) {
      populateCheckbox('enableSMSAuthenticationCheckbox', settings.dsConfigEnableSMSAuthentication);
      $('#enableSMSAuthenticationCheckbox').prop('disabled', false);
    } else {
      $('#enableSMSAuthenticationCheckbox').prop("disabled", true);
    }
    populateCheckbox('allowSequentialSignNow', settings.allowSequentialSignNow);
    populateCheckbox('useContactRoles', settings.useContactRoles);
    populateCheckbox('reminderSettingsCheckbox', settings.enableRemindAndExpirationSettings);
    populateCheckbox('loadFiles', settings.loadFiles);
    if (settings.enableRemindAndExpirationSettings === true) {
      $('#reminderSettings').show();
      $('#remindSignersTextInput').val(populateRemindExpireSettings(settings.reminderDays));
      $('#continueToSendRemindersTextInput').val(populateRemindExpireSettings(settings.reminderRepeat));
      $('#expireRequestInTextInput').val(populateRemindExpireSettings(settings.expireDays));
      $('#warnSignersTextInput').val(populateRemindExpireSettings(settings.expireWarning));
    } else {
      $('#reminderSettings').hide();
    }
    populateCheckbox('hideRemindAndExpireSettings', settings.hideRemindAndExpirationSettings);
    // Chatter Settings
    $('#dsChatterDropdown').val(settings.chatterSettingCode);
    if (settings.chatterSettingCode === 'Disabled') {
      $('#chatter-settings').hide();
      $('#dsChatterLanguageDropdown').hide();
    } else {
      $('#chatter-settings').show();
      $('#dsChatterLanguageDropdown').show();
    }
    populateChatterEventSettings(settings, dsGlobal.chatterLanguageCodeText);
  }

  // Populate the email settings

  function populateEmailSettings(localizationSettings) {
    if (!localizationSettings) return;
    $('.email-settings .email-setting').remove();
    for (var i = 0; i < localizationSettings.length; i++) {
      addEmailSetting(localizationSettings[i]);
    }
    checkLocalizationSettingsList();
  }

  // Populate the email chatter settings

  function populateEmailChatterSettings(localizationSettings) {
    if (!localizationSettings) return;
    var html = '';
    html += '<select class="small" id="dsChatterLanguageDropdownSelect">';
    for (var i = 0; i < localizationSettings.length; i++) {
      var languageCode = localizationSettings[i].locale;
      var language = '';
      if (dsGlobal.chatterLanguageCodeText === languageCode) {
        language = localizationSettings[i].language;
      } else {
        language = localizationSettings[i].language;
      }
      html += '<option value="' + languageCode + '">' + language + '</option>';
    }
    html += '</select>';
    $('#dsChatterLanguageDropdown').html(html);
  }

  // Helper function for populating checkbox value

  function populateCheckbox(id, enabled) {
    if (enabled === true) {
      $('#' + id).prop('checked', true);
    } else {
      $('#' + id).prop('checked', false);
    }
  }

  // Helper function for populating chatter event setting

  function populateChatterEventSettings(settings, selectedLanguageCode) {
    var chatterSettings = settings.chatterSettings;
    for (var i = 0; i < chatterSettings.length; i++) {
      var chatterText = chatterSettings[i];
      if (chatterText.locale === selectedLanguageCode) {
        // checkbox
        $('#chatterEnvelopeSentCheckbox').prop('checked', settings.envelopeSentChatterEnabled);
        $('#chatterEnvelopeDeliveredCheckbox').prop('checked', settings.envelopeDeliveredChatterEnabled);
        $('#chatterEnvelopeCompletedCheckbox').prop('checked', settings.envelopeCompletedChatterEnabled);
        $('#chatterEnvelopeDeclinedCheckbox').prop('checked', settings.envelopeDeclinedChatterEnabled);
        $('#chatterEnvelopeVoidedCheckbox').prop('checked', settings.envelopeVoidedChatterEnabled);
        $('#chatterRecipientSentCheckbox').prop('checked', settings.recipientSentChatterEnabled);
        $('#chatterRecipientDeliveredCheckbox').prop('checked', settings.recipientDeliveredChatterEnabled);
        $('#chatterRecipientCompletedCheckbox').prop('checked', settings.recipientCompletedChatterEnabled);
        $('#chatterRecipientDeclinedCheckbox').prop('checked', settings.recipientDeclinedChatterEnabled);
        $('#chatterRecipientDeliveryFailedCheckbox').prop('checked', settings.recipientDeliveryFailedChatterEnabled);
        $('#chatterRecipientAuthenticationFailureCheckbox').prop('checked', settings.recipientAuthenticationFailureChatterEnabled);
        // text
        var languageInfo = chatterText.text;
        $('#chatterEnvelopeSentText').val(languageInfo.envelopeSent);
        $('#chatterEnvelopeDeliveredText').val(languageInfo.envelopeDelivered);
        $('#chatterEnvelopeCompletedText').val(languageInfo.envelopeCompleted);
        $('#chatterEnvelopeDeclinedText').val(languageInfo.envelopeDeclined);
        $('#chatterEnvelopeVoidedText').val(languageInfo.envelopeVoided);
        $('#chatterRecipientSentText').val(languageInfo.recipientSent);
        $('#chatterRecipientDeliveredText').val(languageInfo.recipientDelivered);
        $('#chatterRecipientCompletedText').val(languageInfo.recipientCompleted);
        $('#chatterRecipientDeclinedText').val(languageInfo.recipientDeclined);
        $('#chatterRecipientDeliveryFailedText').val(languageInfo.recipientDeliveryFailed);
        $('#chatterRecipientAuthenticationFailureText').val(languageInfo.recipientAuthenticationFailure);
      }
    }
  }

  /**
   * Helper function for populating remind and expire settings
   * @param day {number}
   * @returns {string}
   */
  function populateRemindExpireSettings(day) {
    if (DSUtil.isNotDefined(day) || day === -1) {
      return '';
    }
    return day.toString();
  }

  // Helper function add email settings to UI

  function addEmailSetting(localizationSettings) {
    var language = localizationSettings.language;
    var languageCode = localizationSettings.locale;
    var emailSubjectFull = (localizationSettings.subject === null) ? '' : localizationSettings.subject;
    var emailSubject = (emailSubjectFull.length > 100) ? emailSubjectFull.substring(0, 100) + '..' : emailSubjectFull;
    var emailBodyFull = (localizationSettings.message === null) ? '' : localizationSettings.message;
    var emailBody = (emailBodyFull.length > 200) ? emailBodyFull.substring(0, 200) + '..' : emailBodyFull;
    var html = '<div class="divided email-setting" id="' + languageCode + '"><div class="grid-row"><div class="three col wrap"><p class="break">' + language + '</p></div><div class="three col wrap"><p class="breakword">' + '<span class="sub-text" title="' + encodeSpecialCharacters(emailSubjectFull) + '">' + encodeSpecialCharacters(emailSubject) + '</span></p></div><div class="six col editable wrap"><p class="breakword">' + '<span class="sub-text" title="' + encodeSpecialCharacters(emailBodyFull) + '">' + encodeSpecialCharacters(emailBody) + '</p><div class="controls">';
    if (languageCode !== 'en') {
      html += '<a href="javascript:void(0);" style="padding-left:8px;" class="delete" languageCode="' + languageCode + '">' + dsGlobal.deleteLabel + '</a>';
    }
    html += '<a href="javascript:void(0);" class="edit" languageCode="' + languageCode + '">' + dsGlobal.editLabel + '</a></div></div></div></div>';
    $('.email-settings').append(html);
  }

  // Remove email setting from docusign localization settings list

  function removeDocuSignLocalizationSetting(languageCode) {
    var dslocalizationSettings = dsGlobal.responseJson.admin.settings.currentLocalizationSettings;
    if (languageCode !== null && dslocalizationSettings !== null) {
      var localizationSettings = [];
      for (var i = 0; i < dslocalizationSettings.length; i++) {
        if (dslocalizationSettings[i].locale !== languageCode) {
          localizationSettings.push(dslocalizationSettings[i]);
        }
      }
      dsGlobal.responseJson.admin.settings.currentLocalizationSettings = localizationSettings;
    }
  }

  // Update email setting in the docusign localization settings list

  function updateDocuSignLocalizationSetting(localizationSettings) {
    if (localizationSettings !== null && dsGlobal.responseJson.admin.settings.currentLocalizationSettings !== null) {
      for (var i = 0; i < dsGlobal.responseJson.admin.settings.currentLocalizationSettings.length; i++) {
        if (dsGlobal.responseJson.admin.settings.currentLocalizationSettings[i].locale === localizationSettings.locale) {
          dsGlobal.responseJson.admin.settings.currentLocalizationSettings[i].subject = localizationSettings.subject;
          dsGlobal.responseJson.admin.settings.currentLocalizationSettings[i].message = localizationSettings.message;
          break;
        }
      }
    }
  }

  // Check if localization is available (already saved)

  function isLanguageAvailable(languageCode) {
    var localizationSettings = dsGlobal.responseJson.admin.settings.currentLocalizationSettings;
    var localizationSetting;
    for (var i = 0; i < localizationSettings.length; i++) {
      if (localizationSettings[i].locale === languageCode) {
        return false;
      }
    }
    return true;
  }

  // Check the localization settings, hide the New button if no more available settings

  function checkLocalizationSettingsList() {
    if (dsGlobal.responseJson.admin.settings.currentLocalizationSettings.length < 11) {
      $('#newLanguageSettingBtn').show();
    } else {
      $('#newLanguageSettingBtn').hide();
    }
  }

  /*
   * This function to encode special characters to html
   * @param str  the string to be modified
   */

  function encodeSpecialCharacters(str) {
    if (!str) {
      return '';
    }
    return str.replace(/&/g, '&amp;').replace(/>/g, '&gt;').replace(/</g, '&lt;').replace(/"/g, '&quot;').replace(/'/g, '&lsquo;');
  }

  // Click handler for deleting email settings
  $('.email-settings').on('click', '.delete', function () {
    var languageCode = $(this).attr('languageCode');
    $('#' + languageCode).css('opacity', '0.5');
    try {
      Visualforce.remoting.Manager.invokeAction(dsGlobal.deleteEmailSettings, languageCode, function (result, event) {
        $('#' + languageCode).remove();
        removeDocuSignLocalizationSetting(languageCode);
        checkLocalizationSettingsList();
      });
    } catch (err) {
      console.log(err);
    }
  });

  // Click handler for editing email settings
  $('.email-settings').on('click', '.edit', function () {
    var languageCode = $(this).attr('languageCode');
    var localizationSettings = dsGlobal.responseJson.admin.settings.currentLocalizationSettings;
    var localizationSetting;
    for (var i = 0; i < localizationSettings.length; i++) {
      if (localizationSettings[i].locale === languageCode) {
        localizationSetting = localizationSettings[i];
      }
    }
    $('#languageSettingsDropdown').empty();
    $('#languageSettingsDropdown').append($('<option>', {
      value: localizationSetting.locale, text: localizationSetting.language
    }));
    $('#defaultEmailSubject').val(localizationSetting.subject);
    $('#defaultEmailMessage').val(localizationSetting.message);
    $('#languageSettingsDropdown').prop('disabled', true);
    $('#languageSettingsDropdown').addClass('disabled');
    $('.email-subject-error-label').hide();
    $('#defaultEmailSubject').removeClass('error');
    $('#languageSettingsModal').show();
  });

  // Click handler for the "Save" button in language settings modal
  $('#saveLanguageSettingBtn').click(function () {
    var languageCode = $('#languageSettingsDropdown').val();
    var isEditing = $('#languageSettingsDropdown').prop('disabled');
    if ($('#defaultEmailSubject').val() === '') {
      $('.email-subject-error-label').show();
      $('#defaultEmailSubject').addClass('error');
      return;
    }
    var localizationSetting = {};
    var localizationSettings = dsGlobal.responseJson.admin.settings.availableLocalizationSettings;
    for (var i = 0; i < localizationSettings.length; i++) {
      if (localizationSettings[i].locale === languageCode) {
        localizationSetting.language = localizationSettings[i].language;
        localizationSetting.locale = localizationSettings[i].locale;
      }
    }
    localizationSetting.subject = $('#defaultEmailSubject').val();
    localizationSetting.message = $('#defaultEmailMessage').val();
    try {
      Visualforce.remoting.Manager.invokeAction(dsGlobal.saveEmailSettings, localizationSetting, function (result, event) {
        var isEditing = $('#languageSettingsDropdown').prop('disabled');
        if (isEditing === true) {
          updateDocuSignLocalizationSetting(localizationSetting);
        } else {
          dsGlobal.responseJson.admin.settings.currentLocalizationSettings.push(localizationSetting);
        }
        populateEmailSettings(dsGlobal.responseJson.admin.settings.currentLocalizationSettings);
        $('#languageSettingsModal').hide();
      });
    } catch (err) {
      console.log(err);
    }
  });

  // Change handler for the chatter settings dropdown
  $('#dsChatterDropdown').change(function () {
    if (this.value === 'Disabled') {
      $('#chatter-settings').hide();
      $('#dsChatterLanguageDropdown').hide();
    } else {
      $('#chatter-settings').show();
      $('#dsChatterLanguageDropdown').show();
    }
  });

  // change handler for chatter language dropdown
  $('#dsChatterLanguageDropdownSelect').change(function () {
    populateChatterEventSettings(dsGlobal.responseJson.admin.settings, this.value);
  });

  // Change handler for the Enable Reminder and Expiration Settings dropdown
  $('#reminderSettingsCheckbox').change(function () {
    if ($(this).prop('checked') === true) {
      $('#reminderSettings').show();
    } else {
      $('#reminderSettings').hide();
    }
  });

  // Change handler for all Remind and Expire settings text inputs
  $('#remindSignersTextInput, #continueToSendRemindersTextInput, #expireRequestInTextInput, #warnSignersTextInput').change(function () {
    if (isNaN(this.value) || this.value < 0 || (this.value % 1) !== 0 || this.value.slice(-1) === '.') {
      var settings = dsGlobal.responseJson.admin.settings;
      if (this.id === 'remindSignersTextInput') {
        $('#remindSignersTextInput').val(populateRemindExpireSettings(settings.reminderDays));
      } else if (this.id === 'continueToSendRemindersTextInput') {
        $('#continueToSendRemindersTextInput').val(populateRemindExpireSettings(settings.reminderRepeat));
      } else if (this.id === 'expireRequestInTextInput') {
        $('#expireRequestInTextInput').val(populateRemindExpireSettings(settings.expireDays));
      } else if (this.id === 'warnSignersTextInput') {
        $('#warnSignersTextInput').val(populateRemindExpireSettings(settings.expireWarning));
      }
    }
  });

  // Click handler for "New" button in Email Settings of Settings tab
  $('#newLanguageSettingBtn').click(function () {
    $('#languageSettingsDropdown').empty();
    $('#languageSettingsDropdown').prop('disabled', false);
    $('#languageSettingsDropdown').removeClass('disabled');
    var localizationSettings = dsGlobal.responseJson.admin.settings.availableLocalizationSettings;
    localizationSettings.sort(function (a, b) {
      var x = a.language.toLowerCase();
      var y = b.language.toLowerCase();
      if (x > y) return 1;
      if (x < y) return -1;
      return 0;
    });
    var firstItemIsSet = false;
    for (var i = 0; i < localizationSettings.length; i++) {
      if (!isLanguageAvailable(localizationSettings[i].locale)) continue;
      $('#languageSettingsDropdown').append($('<option>', {
        value: localizationSettings[i].locale, text: localizationSettings[i].language
      }));
      if (!firstItemIsSet) {
        $('#defaultEmailSubject').val(localizationSettings[i].subject);
        $('#defaultEmailMessage').val(localizationSettings[i].message);
        firstItemIsSet = true;
      }
    }
    $('.email-subject-error-label').hide();
    $('#defaultEmailSubject').removeClass('error');
    $('#languageSettingsModal').show();
  });

  // Change handler for the New Email Settings dropdown
  $('#languageSettingsDropdown').change(function () {
    var selectedVal = $(this).val();
    var localizationSettings = dsGlobal.responseJson.admin.settings.availableLocalizationSettings;
    for (var i = 0; i < localizationSettings.length; i++) {
      if (localizationSettings[i].locale === selectedVal) {
        $('#defaultEmailSubject').val(localizationSettings[i].subject);
        $('#defaultEmailMessage').val(localizationSettings[i].message);
        break;
      }
    }
  });

  // Click handler for "Cancel" button and "X" icon in language settings modal
  $('#languageSettingsCloseIcon, #cancelLanguageSettingBtn').click(function () {
    $('#languageSettingsModal').hide();
  });

  // Change handler for the default email subject
  $('#defaultEmailSubject').change(function () {
    if ($(this).val() !== '') {
      $('.email-subject-error-label').hide();
      $('#defaultEmailSubject').removeClass('error');
    } else {
      $('.email-subject-error-label').show();
      $('#defaultEmailSubject').addClass('error');
    }
  });

  // Click handler for the "Save" button in Settings tab
  $('#saveSettingsBtn').click(function () {
    $('.fullscreenload').show();
    var settings = dsGlobal.responseJson.admin.settings;
    try {
      // Update Email Settings
      settings.disableEmailSubjectEditing = $('#disableUserEmailSubjectCheckBox').prop('checked');
      settings.disableEmailMessageEditing = $('#disableUserEmailMessageCheckBox').prop('checked');
      var roles = [];
      var roleNames = $('#recipientRoleSettingsTextarea').val().split('\n');
      if (roleNames) {
        for (var i = 0; i < roleNames.length; i++) {
          if (DSUtil.isNotBlank(roleNames[i])) {
            roles.push({
              name: roleNames[i], value: i + 1
            });
          }
        }
      }
      settings.recipientRoles = roles;
      // Update Send Settings
      settings.apexTimeOuts = ($('#apexTimeOutInput').val() * 1000);
      settings.hideSendNowButton = $('#hideSendNowButton').prop('checked');
      settings.hideNextButton = $('#hideNextButton').prop('checked');
      settings.enableSFCalloutLimit = $('#enableSFCalloutLimit').prop('checked');
      settings.enableMobileAppForSF1 = $('#enableMobileTaggingUI').prop('checked');
      settings.dsConfigEnableSMSAuthentication = $('#enableSMSAuthenticationCheckbox').prop('checked');
      settings.displayTaggerPageInNewWindow = $('#displayTaggerPageInNewWindow').prop('checked');
      settings.displayInPersonSigningPageInNewWindow = $('#displayInPersonSigningPageInNewWindow').prop('checked');
      settings.enableRemindAndExpirationSettings = $('#reminderSettingsCheckbox').prop('checked');
      settings.hideRemindAndExpirationSettings = $('#hideRemindAndExpireSettings').prop('checked');
      settings.reminderDays = DSUtil.parseIntOrElse($('#remindSignersTextInput').val(), -1);
      settings.reminderRepeat = DSUtil.parseIntOrElse($('#continueToSendRemindersTextInput').val(), -1);
      settings.expireDays = DSUtil.parseIntOrElse($('#expireRequestInTextInput').val(), -1);
      settings.expireWarning = DSUtil.parseIntOrElse($('#warnSignersTextInput').val(), -1);
      settings.loadFiles = $('#loadFiles').prop('checked');
      settings.allowSequentialSignNow = $('#allowSequentialSignNow').prop('checked');
      settings.useContactRoles = $('#useContactRoles').prop('checked');
      // Update Chatter Settings
      settings.chatterSettingCode = $('#dsChatterDropdown').val();
      settings.envelopeSentChatterEnabled = $('#chatterEnvelopeSentCheckbox').prop('checked');
      settings.envelopeDeliveredChatterEnabled = $('#chatterEnvelopeDeliveredCheckbox').prop('checked');
      settings.envelopeCompletedChatterEnabled = $('#chatterEnvelopeCompletedCheckbox').prop('checked');
      settings.envelopeDeclinedChatterEnabled = $('#chatterEnvelopeDeclinedCheckbox').prop('checked');
      settings.envelopeVoidedChatterEnabled = $('#chatterEnvelopeVoidedCheckbox').prop('checked');
      settings.recipientSentChatterEnabled = $('#chatterRecipientSentCheckbox').prop('checked');
      settings.recipientDeliveredChatterEnabled = $('#chatterRecipientDeliveredCheckbox').prop('checked');
      settings.recipientCompletedChatterEnabled = $('#chatterRecipientCompletedCheckbox').prop('checked');
      settings.recipientDeclinedChatterEnabled = $('#chatterRecipientDeclinedCheckbox').prop('checked');
      settings.recipientDeliveryFailedChatterEnabled = $('#chatterRecipientDeliveryFailedCheckbox').prop('checked');
      settings.recipientAuthenticationFailureChatterEnabled = $('#chatterRecipientAuthenticationFailureCheckbox').prop('checked');

      var chatterSettings = dsGlobal.responseJson.admin.settings.chatterSettings;
      for (var i = 0; i < chatterSettings.length; i++) {
        var currentLanguageSettings = chatterSettings[i];
        if (currentLanguageSettings.locale === dsGlobal.chatterLanguageCodeText) {
          var that = currentLanguageSettings.text;
          that.envelopeSent = $('#chatterEnvelopeSentText').val();
          that.envelopeDelivered = $('#chatterEnvelopeDeliveredText').val();
          that.envelopeCompleted = $('#chatterEnvelopeCompletedText').val();
          that.envelopeDeclined = $('#chatterEnvelopeDeclinedText').val();
          that.envelopeVoided = $('#chatterEnvelopeVoidedText').val();
          that.recipientSent = $('#chatterRecipientSentText').val();
          that.recipientDelivered = $('#chatterRecipientDeliveredText').val();
          that.recipientCompleted = $('#chatterRecipientCompletedText').val();
          that.recipientDeclined = $('#chatterRecipientDeclinedText').val();
          that.recipientDeliveryFailed = $('#chatterRecipientDeliveryFailedText').val();
          that.recipientAuthenticationFailure = $('#chatterRecipientAuthenticationFailureText').val();
        }
      }

      Visualforce.remoting.Manager.invokeAction(dsGlobal.updateSettings, settings, function (result, event) {
        $('.fullscreenload').hide();
        showMessages(result.messages);
        if (result.action === 'ShowSuccess') {
          $('#dsChatterLanguageDropdown [value=\'' + dsGlobal.chatterLanguageCodeText + '\']').prop('selected', 'selected');
        }
      });
    } catch (err) {
      $('.fullscreenload').hide();
      console.log(err);
    }
  });

  /*  New Custom Tag */

  function clearallTextFieldsNewCustomTag() {
    $('#customTagNameText').val('');
    $('#anchorText').val('');
    $('#initialValueText').val('');
    $('#dropDownOptionsTextArea').val('');
    $('#fontDropDown').val('lucidaconsole');
    $('#fontSizeDropDown').val('size9');
    $('#fontColorDropDown').val('black');
    $('#validationTypeDropdown').val('NoValidation');
    $('#customTagToolTipText').val('');
    $('#regExPatternText').val('');
    $('#validationErrorMessageText').val('');
    $('#maxCharactersText').val('');
  }

  function clearallCheckBoxesNewCustomTag() {
    $('#requiredFieldChkBox').attr('checked', false);
    $('#readOnlyChkBox').attr('checked', false);
    $('#sharedChkBox').attr('checked', false);
    $('#AllowWritebackToSalesforceChkBox').attr('checked', false);
    $('#AllowSenderToEditCustomFieldsChkBox').attr('checked', false);
    $('#hideTextWithAsterisksTxtBox').attr('checked', false);
    $('#fixedSizeChkBox').attr('checked', false);
    $('#includeNoteInEmailChkBox').attr('checked', false);
  }

  $('#newCustomTag').click(function (event) {
    switchCustomTagHeader('new');
    clearallTextFieldsNewCustomTag();
    clearallCheckBoxesNewCustomTag();
    disableSaveButton();
    $('#customTagIdText').val('');
    $(saveCustomTagBtn).addClass('next');
    $('#deleteCustomTagBtn').hide();
    $('#newCustomTagCreationContent').show();
    $('#newCustomTagInfo').show();
    $('#newCustomTagFormat').show();
    $('#newCustomTagValidation').show();
    $('#newCustomTagInputLimit').show();
    $('#newCustomTagAdvanced').show();
    $('#newCustomTagSaveCancel').show();
    $('#customTagTabContent').hide();
    $('#bold').removeClass('selected');
    $('#italic').removeClass('selected');
    $('#underline').removeClass('selected');

    //related to salesforce div
    $('#relateFieldToSalesforce').hide();
    $('#relateFieldToSalesforceCheckbox').prop('checked', false);
    $('#salesforceObjectDropDown').empty();
    $('#firstLevelFieldSetDropDown').hide();
    $('#firstLevelFieldSetDropDown').empty();
    $('#secondLevelFieldSetDropDown').hide();
    $('#secondLevelFieldSetDropDown').empty();
    $('#thirdLevelFieldSetDropDown').hide();
    $('#thirdLevelFieldSetDropDown').empty();

    //set initial default value to text field
    var selectedVal = 'text';
    $('#tagTypeDropdown').val(selectedVal);

    //handle visibility for all six divs
    handleCustomTagDiv(selectedVal);
    handleFormattingDiv(selectedVal);
    handleValidation(selectedVal);
    handleAccountSettings(selectedVal);
    handleInputLimitDiv(selectedVal);
    handleAdvancedDiv(selectedVal);

    if (dsGlobal.settings.dataFieldRegexes === false) {
      $('#validationTypeDropdown option[value=\'regExp\']').remove();
    }
  });

  $('#cancelCustomTagBtn').click(function () {

    $('#newCustomTagCreationContent').hide();
    $('#newCustomTagInfo').hide();
    $('#newCustomTagFormat').hide();
    $('#customTagIdText').val('');
    $('#newCustomTagValidation').hide();
    $('#newCustomTagInputLimit').hide();
    $('#newCustomTagAdvanced').hide();
    $('#newCustomTagSaveCancel').hide();
    $('#customTagTabContent').hide();
    dsGlobal.responseJson.action = 'ShowCustomTags';
    loadAdminTab();
  });

  var customTabIDForDeletion = null;
  $('#deleteCustomTagBtn').click(function () {
    var customTag = dsGlobal.responseJson.admin.customTag;
    $('#deleteCustomTagConfirmationModal').show();

  });
  // Click handler for "Cancel" button and "X" icon in language settings modal
  $('#deleteCustomTagCloseIcon, #cancelDeleteCustomTagConfirmationBtn').click(function () {
    $('#deleteCustomTagConfirmationModal').hide();
  });

  $('#deleteCustomTagConfirmationBtn').click(function () {
    // Call deleteCustomTag
    try {
      Visualforce.remoting.Manager.invokeAction(dsGlobal.deleteCustomTag, {
        value: customTabIDForDeletion
      }, function (result, event) {
        if (result.action === 'ShowError') {
          hideLoading();
          showMessages(result.messages);
        } else {
          customTabIDForDeletion = null;
          location.reload();
        }
      });
    } catch (err) {
      console.log(err);
    }
  });

  function switchCustomTagHeader(mode) {
    $('#createCustomTag').hide();
    $('#editCustomTag').hide();
    if (mode === 'edit') {
      $('#editCustomTag').show();
    }
    if (mode === 'create' || mode === 'new') {
      $('#createCustomTag').show();
    }
  }

  function selectSalesforceObjectInSelectList(/*string*/ listId, /*string*/ fieldName) {
    var fullvalue;
    $('#' + listId + ' option').each(function () {
      var currentElementValue = this.value;
      if (currentElementValue !== '-1') {
        var elements = currentElementValue.split('|');
        var objectName = elements[0].trim();
        if (objectName !== 'NaNval') {
          if (elements.length > 1) {
            var objectType = elements[1].trim();
            if (objectType === 'reference' || objectType === 'child_relationship') {
              objectName = elements[2].trim();
            }
          }
          if (objectName.toLowerCase() === fieldName.toLowerCase()) {
            fullvalue = currentElementValue;
          }
        }
      }
    });
    if (typeof fullvalue !== 'undefined') {
      $('#' + listId).val(fullvalue);
    }
    return fullvalue;
  }

  // shows custom tag screen
  function showCustomTag(customTagId) {

    // locate our custom tag
    var customTag = null;
    for (var i = 0; i < dsGlobal.responseJson.admin.customTags.length; i++) {
      var c = dsGlobal.responseJson.admin.customTags[i];
      if (c.id && c.id.value === customTagId) {
        customTag = c;
        break;
      }
    }
    if (customTag === null) {
      return;
    }

    //css class for save button
    $(saveCustomTagBtn).addClass('next');
    // start showing UI
    switchCustomTagHeader('edit');
    clearallTextFieldsNewCustomTag();
    clearallCheckBoxesNewCustomTag();
    $('#customTagIdText').val(customTagId);
    $('#CreateEditCustomTag').html();
    hideValidationErrorOnName();
    enableSaveButton();
    $('#deleteCustomTagBtn').show();
    $('#newCustomTagCreationContent').show();
    $('#newCustomTagInfo').show();
    $('#newCustomTagFormat').show();
    $('#newCustomTagValidation').show();
    $('#newCustomTagInputLimit').show();
    $('#newCustomTagAdvanced').show();
    $('#newCustomTagSaveCancel').show();
    $('#customTagTabContent').hide();

    // reload to UI elements
    $('#customTagNameText').val(customTag.label === '--' ? '' : customTag.label);
    if (dsGlobal.settings.tabDataLabels) {
      $('#customTagNameText').attr('readonly', false);
      $('#customTagNameText').css('background-color', '#FFFFFF');
    } else {
      $('#customTagNameText').attr('readonly', true);
      $('#customTagNameText').css('background-color', '#DEDEDE');

    }
    $('#anchorText').val(customTag.autoPlaceText === '--' ? '' : customTag.autoPlaceText);

    if (customTag.validation && customTag.validation.regularExpression && customTag.validation.regularExpression.length > 0 && !dsGlobal.settings.dataFieldRegexes) {
      $('#validationTypeDropdown option[value=\'RegExp\']').remove();
      $('#RegExPatternDiv').hide();
      customTag.type = 'text';
      customTag.validation.regularExpression = '';
    }
    handleAccountSettings(customTag.type);

    var validationTypes = ['email', 'number', 'date', 'ssn', 'zip5', 'zip5Dash4'];
    if (validationTypes.indexOf(customTag.type) >= 0) {
      $('#tagTypeDropdown').val('text');
    } else {
      $('#tagTypeDropdown').val(customTag.type);
    }
    chageTagTypeDropdown($('#tagTypeDropdown').val());

    var validationTypeChanged = false;
    if (customTag.validation.regularExpression === '--') {
      if (validationTypes.indexOf(customTag.type) >= 0) {
        $('#validationTypeDropdown').val(customTag.type);
        validationTypeChanged = true;
      } else {
        $('#validationTypeDropdown').val('NoValidation');
      }
    } else if (customTag.validation.regularExpression) {
      $('#validationTypeDropdown').val('regExp');
      validationTypeChanged = true;
    } else {
      $('#validationTypeDropdown').val('NoValidation');
    }
    if (validationTypeChanged) {
      changeValidationTypeDropdown($('#validationTypeDropdown').val());
    }

    $('#initialValueText').val(customTag.initialValue);
    $('#requiredFieldChkBox').prop('checked', customTag.options.required);
    $('#sharedChkBox').prop('checked', customTag.options.shared);
    $('#readOnlyChkBox').prop('checked', customTag.options.readOnly);

    if (customTag.items && customTag.items.length > 0) {
      $('#dropDownOptionsTextArea').val(customTag.items.join(';'));
    }

    $('#fontDropDown').val(customTag.formatting.font.family);
    $('#fontSizeDropDown').val(customTag.formatting.font.size);
    $('#fontColorDropDown').val(customTag.formatting.font.color);

    if (customTag.formatting.font.bold) {
      $('#bold').addClass('selected');
    } else {
      $('#bold').removeClass('selected');
    }
    if (customTag.formatting.font.italic) {
      $('#italic').addClass('selected');
    } else {
      $('#italic').removeClass('selected');
    }
    if (customTag.formatting.font.underline) {
      $('#underline').addClass('selected');
    } else {
      $('#underline').removeClass('selected');
    }

    $('#hideTextWithAsterisksTxtBox').prop('checked', customTag.formatting.masked);

    //-- Tooltip Div --
    $('#customTagToolTipText').val(customTag.tooltip);

    //--InputLimit Div --
    $('#maxCharactersText').val(customTag.validation.maximumCharacters);

    //validationTypeDropdown
    $('#regExPatternText').val(customTag.validation.regularExpression === '--' ? '' : customTag.validation.regularExpression);
    $('#validationErrorMessageText').val(customTag.validation.errorMessage);

    //--Advanced Div --
    $('#fixedSizeChkBox').prop('checked', customTag.options.editable);
    $('#includeNoteInEmailChkBox').prop('checked', customTag.options.includeInEmail);

    //-----Related to salesforce----
    var hasSalesforceRelatedField = customTag.mergeField !== null && customTag.mergeField.path !== null;
    $('#relatedToSalesforce').show();
    $('#relateFieldToSalesforceCheckbox').prop('checked', hasSalesforceRelatedField);
    if (hasSalesforceRelatedField) {
      var thePath = customTag.mergeField.path;
      $('#AllowWritebackToSalesforceChkBox').prop('checked', customTag.mergeField.writeback);
      $('#AllowSenderToEditCustomFieldsChkBox').prop('checked', customTag.mergeField.editable);
      switchSalesforceRelatedCheckbox(true, function (path1) {

        var objectname = path1.split('.')[0];
        objectname = selectSalesforceObjectInSelectList('salesforceObjectDropDown', objectname);
        switchSalesforceObjectDropDown(objectname, function (path2) {

          var firstfieldname = path2.split('.')[1];
          var firstoptionname = selectSalesforceObjectInSelectList('firstLevelFieldSetDropDown', firstfieldname);
          switchFirstLevelFieldSetDropDown(firstoptionname, function (path3) {

            var secondfieldname = path3.split('.')[2];
            var secondoptionname = selectSalesforceObjectInSelectList('secondLevelFieldSetDropDown', secondfieldname);
            switchSecondLevelFieldSetDropDown(secondoptionname, function (path4) {

              var thirdfieldname = path4.split('.')[3];
              var thirdoptionname = selectSalesforceObjectInSelectList('thirdLevelFieldSetDropDown', thirdfieldname);
              switchThirdLevelFieldSetDropDown(thirdoptionname, false);
            }, path3, false);
          }, path2, false);
        }, path1);
      }, thePath);
    } else {
      $('#relateFieldToSalesforce').hide();
      $('#firstLevelFieldSetDropDown').empty();
      $('#firstLevelFieldSetDropDown').hide();
      $('#secondLevelFieldSetDropDown').empty();
      $('#secondLevelFieldSetDropDown').hide();
      $('#thirdLevelFieldSetDropDown').empty();
      $('#thirdLevelFieldSetDropDown').hide();
    }
  }

  $('div[id^=\'customtag_\']').click(function () {
    var customTagId = this.id.substring('customtag_'.length);
    customTabIDForDeletion = customTagId;
    showCustomTag(customTagId);
  });

  function setDefaultFormatting(isDefault, isUi, isOld, defaultValue, uiValue, oldValue) {
    if (isDefault) return defaultValue;
    if (isUi) return uiValue;
    if (isOld) return oldValue;
  }

  function getFormattingProperty(customTag, property) {
    return (customTag && customTag.formatting) ? customTag.formatting[property] : null;
  }

  function getFontProperty(customTag, property) {
    return (customTag && customTag.formatting && customTag.formatting.font) ? customTag.formatting.font[property] : null;
  }

  function showError(result, event) {
    var hasError = false;
    if (!result && event) {
      hasError = true;
      showMessages([{
        code: event.statusCode, description: event.message
      }]);
    } else if (result.action === 'ShowError') {
      hasError = true;
      showMessages(result.messages);
    }
    return hasError;
  }

  // Save Custom Button
  $('#saveCustomTagBtn').click(function (event) {

    if ($('#saveCustomTagBtn').css('pointer-events') === 'all') {
      showLoading();
      var customTag = dsGlobal.responseJson.admin.customTag;
      if (customTag.lastModified) {
        // Visualforce remoting has trouble with DateTime deserialization.
        customTag.lastModified = new Date(customTag.lastModified).toUTCString();
      }
      var mergeField = dsGlobal.responseJson.admin.customTag.mergeField;
      customTag.label = $('#customTagNameText').val().trim();
      customTag.autoPlaceText = $('#anchorText').val();
      customTag.type = $('#tagTypeDropdown').val();
      customTag.id = {
        value: $('#customTagIdText').val()
      };

      if ($('#newCustomTagValidation').is(':visible')) {
        var validationType = $('#validationTypeDropdown').val();
        switch (validationType) {
          case 'NoValidation':
            break;

          case 'regExp':
            customTag.validation.regularExpression = $('#regExPatternText').val() || null;
            break;

          default:
            customTag.type = validationType; // validation type overrides tag type
            customTag.validation.regularExpression = validationType;
            break;
        }
        customTag.validation.errorMessage = $('#validationErrorMessageText').val();
      }
      customTag.validation.maximumCharacters = DSUtil.parseIntOrElse($('#maxCharactersText').val(), null);

      customTag.initialValue = $('#initialValueText').val();
      customTag.options.required = $('#requiredFieldChkBox').is(':checked');
      customTag.options.shared = $('#sharedChkBox').is(':checked');
      customTag.options.readOnly = $('#readOnlyChkBox').is(':checked');

      function filterItems(item) {
        return item && item.trim().length > 0;
      }

      if ($('#dropDownOptionsTextArea').val() !== null || $('#dropDownOptionsTextArea').val() !== '') {
        customTag.items = $('#dropDownOptionsTextArea').val().split(';').filter(filterItems);
      }

      var isCreateNew = (customTag.customTabId === null) || (customTag.customTabId === undefined) || (customTag.customTabId.length === 0);
      var oldCustomTag = {};
      if (!isCreateNew) {
        for (var i = 0; i < dsGlobal.responseJson.admin.customTags.length; i++) {
          var c = dsGlobal.responseJson.admin.customTags[i];
          if (c.id === customTag.id) {
            oldCustomTag = c;
            break;
          }
        }
      }
      var useUi = dsGlobal.settings.tabTextFormatting;
      var useDefault = !useUi && isCreateNew;
      var useOld = !useUi && !isCreateNew;

      //--Font Div --
      customTag.formatting.font.family = setDefaultFormatting(useDefault, useUi, useOld, 'Lucida Console', $('#fontDropDown').val(), getFontProperty(oldCustomTag, 'family'));
      customTag.formatting.font.size = setDefaultFormatting(useDefault, useUi, useOld, 'Size9', $('#fontSizeDropDown').val(), getFontProperty(oldCustomTag, 'size'));
      customTag.formatting.font.color = setDefaultFormatting(useDefault, useUi, useOld, 'Black', $('#fontColorDropDown').val(), getFontProperty(oldCustomTag, 'color'));

      customTag.formatting.font.bold = setDefaultFormatting(useDefault, useUi, useOld, false, $('#bold').is('.selected'), getFontProperty(oldCustomTag, 'bold'));
      customTag.formatting.font.italic = setDefaultFormatting(useDefault, useUi, useOld, false, $('#italic').is('.selected'), getFontProperty(oldCustomTag, 'italic'));
      customTag.formatting.font.underline = setDefaultFormatting(useDefault, useUi, useOld, false, $('#underline').is('.selected'), getFontProperty(oldCustomTag, 'underline'));

      customTag.formatting.masked = setDefaultFormatting(useDefault, useUi, useOld, false, $('#hideTextWithAsterisksTxtBox').is(':checked'), getFormattingProperty(oldCustomTag, 'masked'));

      //-- Tooltip Div --
      customTag.tooltip = $('#customTagToolTipText').val();

      //--Advanced Div --
      customTag.options.editable = setDefaultFormatting(useDefault, useUi, useOld, false, $('#fixedSizeChkBox').is(':checked'), customTag.options.editable);

      customTag.options.includeInEmail = $('#includeNoteInEmailChkBox').is(':checked');
      //-----Related to salesforce----
      //customTag.relatedToSalesforce = $('#relateFieldToSalesforceCheckbox').is(':checked');

      //relatedtosalesforce is checked
      if ($('#relateFieldToSalesforceCheckbox').is(':checked')) {
        var path = '';
        if ($('#salesforceObjectDropDown').val() !== '-1') path = path + $('#salesforceObjectDropDown').val() + '.';

        if ($(firstLevelFieldSetDropDown).val() !== null && $(firstLevelFieldSetDropDown).val() !== '') {
          var objName = $('#firstLevelFieldSetDropDown').val();
          var arr = objName.split('|');
          if (arr[0].trim() !== 'NaNval') {
            if (arr[1].trim() === 'reference' || arr[1].trim() === 'child_relationship') path = path + arr[2].trim() + '.'; else path = path + arr[0].trim();
          }
        }

        if ($(secondLevelFieldSetDropDown).val() !== null && $(secondLevelFieldSetDropDown).val() !== '') {

          var objName = $('#secondLevelFieldSetDropDown').val();
          var arr = objName.split('|');
          if (arr[0].trim() !== 'NaNval') {
            if (arr[1].trim() === 'reference' || arr[1].trim() === 'child_relationship') path = path + arr[2].trim() + '.'; else path = path + arr[0].trim();
          }

        }

        if ($(thirdLevelFieldSetDropDown).val() !== null && $(thirdLevelFieldSetDropDown).val() !== '') {
          var objName = $('#thirdLevelFieldSetDropDown').val();
          var arr = objName.split('|');
          if (arr[0].trim() !== 'NaNval') path = path + arr[0].trim();
        }

        if (path.substr(-1) === '.') {
          path = path.slice(0, -1);
        }

        customTag.mergeField = {
          path: path,
          writeBack: $('#AllowWritebackToSalesforceChkBox').is(':checked'),
          editable: $('#AllowSenderToEditCustomFieldsChkBox').is(':checked')
        };

      }

      // Call saveCustomTag
      try {
        Visualforce.remoting.Manager.invokeAction(dsGlobal.saveCustomTag, customTag, function (result, event) {
          if (showError(result, event)) {
            hideLoading();
          } else {
            location.reload();
          }
        });
      } catch (err) {
        console.log(err);
      }
    } else {

      event.preventDefault();
    }
  });

  //mandatory fields

  //enable save when someone editing Custom Tag Name Textbox
  $('#customTagNameText').on('input', function (e) {
    if ($('#customTagNameText').val().trim() !== '') {
      enableSaveButton();
    } else {
      disableSaveButton();
    }

  });

  $('.fontSelectionButton').click(function (event) {
    $(this).parent().toggleClass('selected');
    event.preventDefault();
  });

  //check for all mandatory fields when anything on div changes
  $('#newCustomTagCreationContent').click(function () {
    //Custom tag name mandatory field check
    if ($(customTagNameText).val().trim() !== '') {
      hideValidationErrorOnName();
      enableSaveButton();

    } else {
      showValidationErrorOnName();
      disableSaveButton();

    }
  });

  // maxcharacters should accept numbers only
  $('#maxCharactersText').keypress(function (e) {
    var verified = (e.which === 8 || e.which === undefined || e.which === 0) ? null : String.fromCharCode(e.which).match(/[^0-9]/);
    if (verified) {
      e.preventDefault();
    }
  });

  function escapeJs(s) {
    var aDiv = document.createElement('div');
    aDiv.innerHTML = s;
    return aDiv.firstChild.nodeValue;
  }

  function appendBlank($dropDown) {
    $dropDown.append($('<option>', {
      value: '', text: escapeJs(dsGlobal.selectDashedLabel), updateable: false
    }));
    return $dropDown;
  }

  function switchSalesforceRelatedCheckbox(/*bool*/ checked, /*function*/ callback, /*string*/ salesforcePath) {
    var sfData = $('#relateFieldToSalesforce');
    var flDropDown = $('#firstLevelFieldSetDropDown');
    var slDropDown = $('#secondLevelFieldSetDropDown');
    var tlDropDown = $('#thirdLevelFieldSetDropDown');
    var newTagModal = $('#newCustomTagCreationContent');
    var sObjectDropDown = $('#salesforceObjectDropDown');
    if (checked) {
      sfData.show();
      try {
        flDropDown.empty();
        flDropDown.hide();
        //pulling first level objects
        Visualforce.remoting.Manager.invokeAction(dsGlobal.getAllSalesforceObjects, function (result, event) {
          $('.fullscreenload').hide();
          showMessages(result.messages);
          if (!result.remoteSitesExist) {
            newTagModal.hide();
            addRemoteSites('custom-tags', true, function (success) {
              newTagModal.show();
              if (success) {
                switchSalesforceRelatedCheckbox(checked, callback, salesforcePath);
              } else {
                $('#relateFieldToSalesforceCheckbox').prop('checked', false);
              }
            });
          } else if (result.action !== 'ShowError') {
            var mergeObjects = result.admin.mergeObjects;
            dsGlobal.responseJson.admin.mergeObjects = mergeObjects;
            appendBlank(sObjectDropDown);
            for (var i = 0; i < mergeObjects.length; i++) {
              sObjectDropDown.append($('<option>', {
                value: mergeObjects[i].name,
                text: escapeJs(mergeObjects[i].label),
                updateable: mergeObjects[i].isUpdateable
              }));
            }

            if (callback === null || callback === undefined) {
              if ($(customTagNameText).val().trim() === '') {
                showValidationErrorOnName();
                disableSaveButton();
              }
            } else {
              callback(salesforcePath);
            }
          }
        });
      } catch (err) {
        console.log(err);
      }
    } else {
      resetDivVisibility();
      sfData.hide();
      sObjectDropDown.empty();
      flDropDown.hide();
      flDropDown.empty();
      slDropDown.hide();
      slDropDown.empty();
      tlDropDown.hide();
      tlDropDown.empty();
      $('#AllowWritebackToSalesforceChkBox').attr('checked', false);
      $('#AllowSenderToEditCustomFieldsChkBox').attr('checked', false);

      var selectedVal = $('#tagTypeDropdown').val();
      chageTagTypeDropdown(selectedVal);
    }
  }

  function getMergeFieldValue(name, type, reference) {
    var result = '';
    if (type === 'reference' || type === 'child_relationship') {
      result = reference + '|' + type + '|' + name;
    } else {
      result = name + '|' + type;
    }
    return result;
  }

  function getMergeFieldText(name, type, label) {
    var result = '';
    if (type !== 'child_relationship' && type !== 'reference' && /\w+__[cr]$/.test(name)) { // DFS-5108: Show API name for custom fields
      result = escapeJs(label) + ' (' + type + ':' + name + ')';
    } else {
      result = escapeJs(label) + ' (' + type + ')';
    }
    return result;
  }

  function getMergeField(mergeField) {
    return {
      value: getMergeFieldValue(mergeField.name, mergeField.type, mergeField.reference),
      text: getMergeFieldText(mergeField.name, mergeField.type, mergeField.label),
      updateable: mergeField.isUpdateable
    };
  }

  // Handle visibility for relate to salesforce field
  $('#relateFieldToSalesforceCheckbox').click(function () {
    switchSalesforceRelatedCheckbox($(this).is(':checked'), null, null);
  });

  function switchSalesforceObjectDropDown(/*string*/ selectedValue, /*function*/ callback, /*string*/ path) {
    var $firstLevel = $('#firstLevelFieldSetDropDown');
    var $secondLevel = $('secondLevelFieldSetDropDown');
    var $thirdLevel = $('thirdLevelFieldSetDropDown');
    if (selectedValue === null || selectedValue === '' || selectedValue.trim() === '-1' || selectedValue.trim() === 'undefined') {
      $(salesforceObjectDropDown).css({
        'border-color': '#E86B52', 'border-width': '1px', 'border-style': 'solid'
      });
      disableSaveButton();
      $firstLevel.empty();
      $firstLevel.hide();
      $secondLevel.empty();
      $secondLevel.hide();
      $thirdLevel.empty();
      $thirdLevel.hide();
    } else {
      try {
        if (callback === null || callback === undefined) {
          resetDivVisibility();
        }
        $firstLevel.empty();
        $('#AllowWritebackToSalesforceChkBox').removeAttr('disabled');
        // objName declared and initialized twice
        var objName = $('#salesforceObjectDropDown').val();
        //pulling first level objects
        Visualforce.remoting.Manager.invokeAction(dsGlobal.getLevelFieldSet, objName, 1, function (result, event) {
          $('.fullscreenload').hide();
          showMessages(result.messages);
          var mergeFields = result.admin.mergeFields;
          dsGlobal.responseJson.admin.mergeFields = mergeFields;
          appendBlank($firstLevel);
          mergeFields.forEach(function (mf) {
            $firstLevel.append($('<option>', getMergeField(mf)));
          });
          $firstLevel.show();
          if (callback === null || callback === undefined) {
            if ($(customTagNameText).val().trim() === '') {
              showValidationErrorOnName();
              disableSaveButton();
            }
            $secondLevel.hide();
            $secondLevel.empty();
            $thirdLevel.empty();
            $thirdLevel.hide();
          } else {
            callback(path);
          }
        });
      } catch (err) {
        console.log(err);
      }
    }
  }

  //Change handler for related to salesforce checkbox first level dropdown
  $('#salesforceObjectDropDown').change(function () {
    switchSalesforceObjectDropDown($('#salesforceObjectDropDown').val(), null, null);
  });

  function switchFirstLevelFieldSetDropDown(/*string*/ setvalue, /*function*/ callback, /*string*/ path, /*boolean*/ isChanging) {
    if (callback === null || callback === undefined) {
      resetDivVisibility();
    }
    var $secondLevel = $('#secondLevelFieldSetDropDown');
    var $thirdLevel = $('#thirdLevelFieldSetDropDown');
    $secondLevel.hide();
    $secondLevel.empty();
    $thirdLevel.empty();
    $thirdLevel.hide();

    if (setvalue !== null && setvalue !== '') {
      var updateable = ($('option:selected', '#firstLevelFieldSetDropDown').attr('updateable') === 'true');
      if (updateable) {
        $('#AllowWritebackToSalesforceChkBox').removeAttr('disabled');
        $('#AllowSenderToEditCustomFieldsChkBox').removeAttr('disabled');
      } else {
        $('#AllowWritebackToSalesforceChkBox').attr('checked', false);
        $('#AllowWritebackToSalesforceChkBox').attr('disabled', true);
        $('#AllowSenderToEditCustomFieldsChkBox').attr('checked', false);
        $('#AllowSenderToEditCustomFieldsChkBox').attr('disabled', true);
      }
      var arr = setvalue.split('|');
      if (arr[0].trim() !== '-1') {
        if ((arr[1].trim() === 'reference') || (arr[1].trim() === 'child_relationship')) {
          $secondLevel.empty();
          $secondLevel.show();
          try {
            //pulling first level objects
            Visualforce.remoting.Manager.invokeAction(dsGlobal.getLevelFieldSet, arr[0].trim(), 2, function (result, event) {
              $('.fullscreenload').hide();
              showMessages(result.messages);
              var mergeFields = result.admin.mergeFields;
              dsGlobal.responseJson.admin.mergeFields = mergeFields;
              appendBlank($secondLevel);
              mergeFields.forEach(function (mf) {
                $secondLevel.append($('<option>', getMergeField(mf)));
              });
              if (callback === null || callback === undefined) {
                if ($(customTagNameText).val().trim() === '') {
                  showValidationErrorOnName();
                  disableSaveButton();
                }
              } else {
                setOptionsVisibility(arr[1].trim() === 'picklist');
                callback(path);
              }
            });

          } catch (err) {
            console.log(err);
          }
        } else {
          var isPicklist = (arr[1].trim() === 'picklist');
          $secondLevel.empty();
          $secondLevel.hide();
          if (isChanging) {
            selectCustomTagTypeBasedOnMergeField(arr[1].trim());
            if (isPicklist) {
              var mergeFields = dsGlobal.responseJson.admin.mergeFields;
              var value = arr[0];
              for (var i = 0; i < mergeFields.length; i++) {
                if (mergeFields[i].name === value) {
                  $('#dropDownOptionsTextArea').val(mergeFields[i].picklistValues.join(';'));
                }
              }

            }
          } else {
            setOptionsVisibility(isPicklist);
          }
        }
      } else {
        $secondLevel.css({
          'border-color': '#E86B52', 'border-width': '1px', 'border-style': 'solid'
        });
        disableSaveButton();
        if ($(customTagNameText).val().trim() === '') {
          showValidationErrorOnName();
          disableSaveButton();
        }
      }
    }
  }

  //Change handler for related to second level dropdown
  $('#firstLevelFieldSetDropDown').change(function () {
    switchFirstLevelFieldSetDropDown($('#firstLevelFieldSetDropDown').val(), null, null, true);
  });

  function switchSecondLevelFieldSetDropDown(/*string*/ setvalue, /*function*/ callback, /*string*/ path, /*boolean*/ isChanging) {
    if (callback === null || callback === undefined) {
      resetDivVisibility();
    }
    var $secondLevel = $('#secondLevelFieldSetDropDown');
    var $thirdLevel = $('#thirdLevelFieldSetDropDown');
    $thirdLevel.empty();
    $thirdLevel.hide();

    var setvalue = $secondLevel.val();
    if (setvalue !== null && setvalue !== '') {
      var updateable = ($('option:selected', '#secondLevelFieldSetDropDown').attr('updateable') === 'true');
      if (updateable) {
        $('#AllowWritebackToSalesforceChkBox').removeAttr('disabled');
        $('#AllowSenderToEditCustomFieldsChkBox').removeAttr('disabled');
      } else {
        $('#AllowWritebackToSalesforceChkBox').attr('checked', false);
        $('#AllowWritebackToSalesforceChkBox').attr('disabled', true);
        $('#AllowSenderToEditCustomFieldsChkBox').attr('checked', false);
        $('#AllowSenderToEditCustomFieldsChkBox').attr('disabled', true);
      }
      var arr = setvalue.split('|');
      if (arr[0].trim() !== 'NaNval') {
        if ((arr[1].trim() === 'reference') || (arr[1].trim() === 'child_relationship')) {
          $thirdLevel.empty();
          $thirdLevel.show();

          try {
            //pulling first level objects
            Visualforce.remoting.Manager.invokeAction(dsGlobal.getLevelFieldSet, arr[0].trim(), 3, function (result, event) {
              $('.fullscreenload').hide();
              showMessages(result.messages);
              var mergeFields = result.admin.mergeFields;
              dsGlobal.responseJson.admin.mergeFields = mergeFields;
              appendBlank($thirdLevel);
              mergeFields.forEach(function (mf) {
                $thirdLevel.append($('<option>', {
                  value: mf.name + '|' + mf.type,
                  text: getMergeFieldText(mf.name, mf.type, mf.label),
                  updateable: mf.isUpdateable
                }));
              });
              if (callback === null || callback === undefined) {
                if ($(customTagNameText).val().trim() === '') {
                  showValidationErrorOnName();
                  disableSaveButton();
                }
              } else {
                setOptionsVisibility(arr[1].trim() === 'picklist');
                callback(path);
              }
            });
          } catch (err) {
            console.log(err);
          }
        } else {
          var isPicklist = (arr[1].trim() === 'picklist');
          $thirdLevel.empty();
          $thirdLevel.hide();
          if (isChanging) {
            selectCustomTagTypeBasedOnMergeField(arr[1].trim());
            if (isPicklist) {
              var mergeFields = dsGlobal.responseJson.admin.mergeFields;
              var value = arr[0];
              for (var i = 0; i < mergeFields.length; i++) {
                if (mergeFields[i].name === value) {
                  $('#dropDownOptionsTextArea').val(mergeFields[i].picklistValues.join(';'));
                }
              }

            }

          } else {
            setOptionsVisibility(isPicklist);
          }
        }
      } else {
        $(thirdLevelFieldSetDropDown).css({
          'border-color': '#E86B52', 'border-width': '1px', 'border-style': 'solid'
        });
        disableSaveButton();
        if ($(customTagNameText).val().trim() === '') {
          showValidationErrorOnName();
          disableSaveButton();
        }
      }
    }
  }

  //Change handler for related to second level dropdown
  $('#secondLevelFieldSetDropDown').change(function () {
    switchSecondLevelFieldSetDropDown($(secondLevelFieldSetDropDown).val(), null, null, true);
  });

  function switchThirdLevelFieldSetDropDown(/*string*/ setvalue, /*boolean*/ isChanging) {
    var objName = setvalue;
    var arr = objName.split('|');
    if ((arr[1].trim() === 'reference') || (arr[1].trim() === 'child_relationship')) {
    } else {
      var updateable = ($('option:selected', '#thirdLevelFieldSetDropDown').attr('updateable') === 'true');
      if (updateable) {
        $('#AllowWritebackToSalesforceChkBox').removeAttr('disabled');
        $('#AllowSenderToEditCustomFieldsChkBox').removeAttr('disabled');
      } else {
        $('#AllowWritebackToSalesforceChkBox').attr('checked', false);
        $('#AllowWritebackToSalesforceChkBox').attr('disabled', true);
        $('#AllowSenderToEditCustomFieldsChkBox').attr('checked', false);
        $('#AllowSenderToEditCustomFieldsChkBox').attr('disabled', true);
      }
      var selectedVal = arr[1].trim();
      var isPicklist = (arr[1].trim() === 'picklist');
      if (isChanging) {
        selectCustomTagTypeBasedOnMergeField(selectedVal);
        if (isPicklist) {
          var mergeFields = dsGlobal.responseJson.admin.mergeFields;
          var value = arr[0];
          for (var i = 0; i < mergeFields.length; i++) {
            if (mergeFields[i].name === value) {
              $('#dropDownOptionsTextArea').val(mergeFields[i].picklistValues.join(';'));
            }
          }

        }
      } else {
        setOptionsVisibility(isPicklist);
      }
    }
  }

  $('#thirdLevelFieldSetDropDown').change(function () {
    switchThirdLevelFieldSetDropDown($('#thirdLevelFieldSetDropDown').val(), true);

  });

  function setOptionsVisibility(/*string*/ show) {
    if (show) {
      $('#Options').show();
    } else {
      $('#Options').hide();
    }
  }

  function selectCustomTagTypeBasedOnMergeField(selectedVal) {

    switch (selectedVal) {
      case 'picklist':
        selectedVal = 'list';
        break;
      case 'boolean':
        selectedVal = 'checkBox';
        break;
      case 'datetime':
        selectedVal = 'text';
        $('#validationTypeDropdown').val('date');
        break;
      case 'email':
        selectedVal = 'text';
        $('#validationTypeDropdown').val('email');
        break;
      default:
        selectedVal = 'text';
    }

    $('#tagTypeDropdown').val(selectedVal);

    //handle visibility for all six divs

    handleCustomTagDiv(selectedVal);
    handleFormattingDiv(selectedVal);
    handleValidation(selectedVal);
    handleInputLimitDiv(selectedVal);
    handleAdvancedDiv(selectedVal);
    enableSaveButton();
    if ($(customTagNameText).val().trim() === '') {
      showValidationErrorOnName();
      disableSaveButton();
    }
  }

  $('#validationTypeDropdown').change(function () {
    var validationTypeVal = $(this).val();
    changeValidationTypeDropdown(validationTypeVal);
  });

  //Change handler for Validation Type Dropdown
  function changeValidationTypeDropdown(validationTypeVal) {
    if (!dsGlobal.settings.dataFieldSizes) {
      switch (validationTypeVal) {
        case 'date':
          disableFunction('#maxCharactersText');
          disableFunction('#fixedSizeChkBox');
          break;
        case 'number':
          disableFunction('#maxCharactersText');
          disableFunction('#fixedSizeChkBox');
          break;
        case 'email':
          disableFunction('#maxCharactersText');
          disableFunction('#fixedSizeChkBox');
          break;
        case 'ssn':
          disableFunction('#maxCharactersText');
          break;
        case 'zip5':
          disableFunction('#maxCharactersText');
          break;
        case 'zip5Dash4':
          disableFunction('#maxCharactersText');
          break;
      }
    }
    if (validationTypeVal === 'regExp') {
      $('#newCustomTagValidation').show();
      $('#validationTypeDiv').show();
      $('#RegExPatternDiv').show();
      $('#ValidationErrorMessageDiv').show();
      if ($(customTagNameText).val().trim() !== '') {
        enableSaveButton();
      } else {
        disableSaveButton();
      }
    } else {
      $('#newCustomTagValidation').show();
      $('#validationTypeDiv').show();
      $('#RegExPatternDiv').hide();
      $('#ValidationErrorMessageDiv').show();
      $(regExPatternText).css({
        'border-color': '', 'border-width': '', 'border-style': ''
      });
      if ($(customTagNameText).val().trim() !== '') {
        enableSaveButton();
      } else {
        disableSaveButton();
      }
    }
  }

  function enableSaveButton() {
    $('#saveCustomTagBtn').attr('href', '#').css({
      'cursor': 'auto', 'pointer-events': 'all'
    });
  }

  function disableSaveButton() {
    $('#saveCustomTagBtn').attr('href', '').css({
      'cursor': 'pointer', 'pointer-events': 'none'
    });
  }

  function hideValidationErrorOnName() {
    $('#customTagNameText').css({
      'border-color': '', 'border-width': '', 'border-style': ''
    });
  }

  function showValidationErrorOnName() {
    $('#customTagNameText').css({
      'border-color': '#E86B52', 'border-width': '1px', 'border-style': 'solid'
    });
  }

  function chageTagTypeDropdown(selectedVal) {
    //handle visibility for all six divs
    resetDivVisibility();
    handleCustomTagDiv(selectedVal);
    handleFormattingDiv(selectedVal);
    handleValidation(selectedVal);
    handleInputLimitDiv(selectedVal);
    handleAccountSettings(selectedVal);
    handleAdvancedDiv(selectedVal);
  }

  // Change handler for the Tag Type in newCustomTag
  $('#tagTypeDropdown').change(function () {
    var selectedVal = $(this).val();
    chageTagTypeDropdown(selectedVal);

  });

  function resetDivVisibility() {

    $('#newCustomTagInfo').show();
    $('#initialValue').show();
    $('#requiredField').show();
    $('#readOnly').show();
    $('#Options').hide();
    if (dsGlobal.settings.sharedCustomTabs) {
      $('#shared').show();
    } else {
      $('#shared').hide();
    }

    $('#newCustomTagFormat').show();
    $('#fontDiv').show();
    $('#hideWithAstericksDiv').show();

    $('#newCustomTagValidation').show();
    $('#validationTypeDiv').show();
    $('#RegExPatternDiv').hide();
    $('#ValidationErrorMessageDiv').show();

    $('#newCustomTagInputLimit').show();

    $('#newCustomTagAdvanced').show();
    $('#fixedSizeDiv').show();
    $('#includeNoteInEmailDiv').hide();
  }

  //Handler for Custom tag Div

  function handleCustomTagDiv(tagType) {

    switch (tagType) {
      case 'approve':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();
        break;

      case 'checkBox':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#Options').hide();
        break;

      case 'company':
        break;

      case 'dateSigned':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();
        break;

      case 'emailAddress':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();

        break;

      case 'decline':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();
        break;

      case 'list':
        $('#initialValue').show();
        $('#requiredField').show();
        $('#readOnly').show();
        $('#Options').show();
        break;

      case 'envelopeId':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();
        break;

      case 'firstName':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();
        break;

      case 'formula':
        break;

      case 'fullName':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();
        break;

      case 'initialHere':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();
        break;

      case 'initialHereOptional':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();
        break;

      case 'lastName':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();
        break;

      case 'note':
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();
        break;

      case 'signHere':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();
        break;

      case 'signHereOptional':
        $('#initialValue').hide();
        $('#requiredField').hide();
        $('#readOnly').hide();
        $('#Options').hide();
        break;

      case 'radio':
        $('#Options').hide();
        $('#initialValue').hide();
        break;

      case 'signerAttachment':
        $('#Options').hide();
        break;

      case 'title':
        $('#Options').hide();
        break;

      default:
        $('#initialValue').show();
        $('#requiredField').show();
        $('#readOnly').show();
        $('#Options').hide();
        if (dsGlobal.settings.sharedCustomTabs) {
          $('#shared').show();
        } else {
          $('#shared').hide();
        }
    }

  }

  //Handler for Formatting Div

  function handleFormattingDiv(tagType) {
    switch (tagType) {
      case 'approve':
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;
      case 'checkBox':
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;

      case 'company':
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;

      case 'dateSigned':
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        $('#newCustomTagFormat').hide();
        $('#fontDiv').hide();
        break;

      case 'decline':
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;

      case 'list':
        $('#newCustomTagFormat').show();
        $('#fontDiv').show();
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;

      case 'emailAddress':
        $('#newCustomTagFormat').hide();
        $('#fontDiv').hide();
        $('#fixedSizeDiv').hide();
        break;

      case 'firstName':
        $('#newCustomTagFormat').hide();
        $('#fontDiv').hide();
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;
      case 'formula':
        $('#newCustomTagFormat').show();
        $('#fontDiv').show();
        $('#fixedSizeDiv').show();
        break;
      case 'fullName':
        $('#newCustomTagFormat').hide();
        $('#fontDiv').hide();
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;
      case 'envelopeId':
        $('#newCustomTagFormat').hide();
        $('#fontDiv').hide();
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;
      case 'initialHere':
        $('#newCustomTagFormat').hide();
        $('#fontDiv').hide();
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;
      case 'initialHereOptional':
        $('#newCustomTagFormat').hide();
        $('#fontDiv').hide();
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;
      case 'lastName':
        $('#newCustomTagFormat').hide();
        $('#fontDiv').hide();
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;
      case 'note':
        $('#newCustomTagFormat').show();
        $('#fontDiv').show();
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;
      case 'signHere':
        $('#newCustomTagFormat').hide();
        $('#fontDiv').hide();
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;

      case 'signHereOptional':
        $('#newCustomTagFormat').hide();
        $('#fontDiv').hide();
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;

      case 'radio':
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;

      case 'signerAttachment':
        $('#newCustomTagFormat').show();
        $('#fontDiv').show();
        $('#fixedSizeDiv').show();
        break;

      case 'title':
        $('#newCustomTagFormat').show();
        $('#fontDiv').show();
        $('#hideWithAstericksDiv').hide();
        $('#fixedSizeDiv').hide();
        break;

      default:
        $('#newCustomTagFormat').show();
        $('#fontDiv').show();
        $('#hideWithAstericksDiv').show();
        $('#fixedSizeDiv').show();
    }

  }

  //Handler for Validation Div

  function handleValidation(tagType) {
    switch (tagType) {
      case 'approve':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'checkBox':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'company':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'dateSigned':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'decline':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'list':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'emailAddress':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'envelopeId':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'firstName':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'formula':
        $('#newCustomTagValidation').show();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').show();
        break;
      case 'fullName':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'initialHere':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'initialHereOptional':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'lastName':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'note':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'radio':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'signHere':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'signHereOptional':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      case 'signerAttachment':
        $('#newCustomTagValidation').show();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').show();
        break;
      case 'title':
        $('#newCustomTagValidation').hide();
        $('#validationTypeDiv').hide();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').hide();
        break;
      default:
        $('#newCustomTagValidation').show();
        $('#validationTypeDiv').show();
        $('#RegExPatternDiv').hide();
        $('#ValidationErrorMessageDiv').show();
    }
    if (!dsGlobal.settings.dataFieldRegexes) {
      $('#RegExPatternDiv').hide();
    }
  }

  //Handler for account settings

  function disableFunction(/*jquery selector */ jQuerySelector) {
    $(jQuerySelector).attr('disabled', 'disabled');
  }

  function handleAccountSettings(tagType) {
    if (!dsGlobal.settings.dataFieldSizes) {
      switch (tagType) {
        case 'text':
          disableFunction('#maxCharactersText');
          disableFunction('#fixedSizeChkBox');
          break;
        case 'approve':
          break;
        case 'checkBox':
          break;
        case 'company':
          break;
        case 'dateSigned':
          disableFunction('#maxCharactersText');
          disableFunction('#fixedSizeChkBox');
          break;
        case 'decline':
          break;
        case 'listField':
          break;
        case 'emailAddress':
          disableFunction('#maxCharactersText');
          disableFunction('#fixedSizeChkBox');
          break;
        case 'envelopeId':
          break;
        case 'firstName':
          break;
        case 'Formula':
          break;
        case 'fullName':
          break;
        case 'initialHere':
          break;
        case 'initialHereOptional':
          break;
        case 'lastName':
          break;
        case 'note':
          break;
        case 'radio':
          break;
        case 'signHere':
          break;
        case 'signHereOptional':
          break;
        case 'signerAttachment':
          break;
        case 'title':
          break;
        default:
          break;
      }
    }
  }

  //Handler for InputLimit Div

  function handleInputLimitDiv(tagType) {
    var $inputLimit = $('#newCustomTagInputLimit');
    switch (tagType) {
      case 'approve':
        $inputLimit.hide();
        break;
      case 'checkBox':
        $inputLimit.hide();
        break;
      case 'company':
        $inputLimit.hide();
        break;
      case 'dateSigned':
        $inputLimit.hide();
        break;
      case 'decline':
        $inputLimit.hide();
        break;
      case 'list':
        $inputLimit.hide();
        break;
      case 'emailAddress':
        $inputLimit.hide();
        break;
      case 'envelopeId':
        $inputLimit.hide();
        break;
      case 'firstName':
        $inputLimit.hide();
        break;
      case 'formula':
        $inputLimit.show();
        break;
      case 'fullName':
        $inputLimit.hide();
        break;
      case 'initialHere':
        $inputLimit.hide();
        break;
      case 'initialHereOptional':
        $inputLimit.hide();
        break;
      case 'lastName':
        $inputLimit.hide();
        break;
      case 'note':
        $inputLimit.hide();
        break;
      case 'radio':
        $inputLimit.hide();
        break;
      case 'signHere':
        $inputLimit.hide();
        break;
      case 'signHereOptional':
        $inputLimit.hide();
        break;
      case 'signerAttachment':
        $inputLimit.show();
        break;
      case 'title':
        $inputLimit.hide();
        break;
      default:
        $inputLimit.show();
        break;
    }
  }

  //Handler for Addvanced Div
  function handleAdvancedDiv(tagType) {

    switch (tagType) {
      case 'approve':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'checkBox':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'company':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'dateSigned':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'decline':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'list':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').hide();
        break;
      case 'emailAddress':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'envelopeId':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'firstName':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'formula':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'fullName':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'initialHere':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'initialHereOptional':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'lastName':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'note':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').show();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'radio':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'signHere':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'signHereOptional':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'signerAttachment':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      case 'title':
        $('#newCustomTagAdvanced').show();
        $('#includeNoteInEmailDiv').hide();
        $('#newCustomTagToolTipDiv').show();
        break;
      default:
        $('#newCustomTagAdvanced').show();
        $('#newCustomTagToolTipDiv').show();
        $('#anchorTextDiv').show();
        $('#includeNoteInEmailDiv').hide();
    }
  }

  var $advancedOptions = $('#advanced-options');
  $('#show-advanced-options').click(function () {
    if ($(this).is(':checked')) {
      $dsAlert.hide();
      $advancedOptions.show();
    } else {
      $dsAlert.hide();
      $advancedOptions.hide();
    }
  });
});
