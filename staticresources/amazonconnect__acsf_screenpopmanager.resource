(function(ctx) {

  var ACSF_SCREEN_POP_RECORD_ATTRIBUTE_KEY = 'acsf-screenpop-record';
  var ACSF_SCREEN_POP_SEARCH_ATTRIBUTE_KEY = 'acsf-screenpop-search';

  if (ctx.ACSFIntegration === undefined) {
    ctx.ACSFIntegration = {};
  }
  var _namespacePrefix;
  var _ccSettings;
  var _exactMatch;
  /**
   *
   * @type {{onConnecting: ctx.ACSFIntegration.ScreenpopManager.onConnecting, onIncoming: ctx.ACSFIntegration.ScreenpopManager.onIncoming}}
   */
  ctx.ACSFIntegration.ScreenpopManager = {
    onAgentHandler : function(namespacePrefix, ccSettings) {
      connect.getLog().info("ACSFIntegration:ScreenpopManager:onAgentHandler invoked");
      _namespacePrefix = namespacePrefix;
      _ccSettings = ccSettings;
      _exactMatch = false;
    },
    /**
     *
     * @returns {boolean}
     */
    isExactMatch: function() {
      return _exactMatch;
    },

    /**
     *
     * @param exactMatch {boolean}
     */
    setExactMatch: function(exactMatch) {
      connect.getLog().info("ACSFIntegration:ScreenPopManager:setExactMatch: %s", exactMatch);
      _exactMatch = exactMatch;
    },
    /**
     *
     * @param contact
     * @param connectPhoneFormat
     * @param ccpPopup
     */
    onIncoming: function(contact, connectPhoneFormat) {
      try {
        connect.getLog().info("ACSFIntegration:ScreenpopManager:onIncoming");
        _exactMatch = false;
        setSoftphoneVisible();
        popRecordOrSearch(contact, connectPhoneFormat);
      }
      catch (e) {
        connect.getLog().error("ACSFIntegration:ScreenPopManager:onIncoming:Error: ").withException(e);
      }
    },

    /**
     *
     * @param contact
     * @param connectPhoneFormat
     * @param ccpPopup
     */
    onConnecting: function(contact, connectPhoneFormat, inout) {
      try {
        connect.getLog().info("ACSFIntegration:ScreenpopManager:onConnecting");
        setSoftphoneVisible();

        var callbackInProgress = sessionStorage.getItem('CCP-callbackInProgress') === 'true';

        if (contact.isInbound() && contact.getType() === connect.ContactType.VOICE) {
          popRecordOrSearch(contact, connectPhoneFormat);
        } else if (!contact.isInbound() && contact.getType() === connect.ContactType.VOICE && !callbackInProgress) {
          popRecordOrSearch(contact, connectPhoneFormat);
        }
      }
      catch (e) {
        connect.getLog().error("ACSFIntegration:ScreenPopManager:onConnecting:Error:").withException(e);
      }
    },

    onConnected: function(contact, connectPhoneFormat, inout) {
      try {
        connect.getLog().info("ACSFIntegration:ScreenpopManager:onConnecting");
        setSoftphoneVisible();

        var callbackInProgress = sessionStorage.getItem('CCP-callbackInProgress') === 'true';

        if (contact.isInbound() && contact.getType() === connect.ContactType.VOICE) {
          popRecordOrSearch(contact, connectPhoneFormat);
        } else if (!contact.isInbound() && contact.getType() === connect.ContactType.VOICE && !callbackInProgress) {
          popRecordOrSearch(contact, connectPhoneFormat);
        }
      }
      catch (e) {
        connect.getLog().error("ACSFIntegration:ScreenPopManager:onConnecting:Error:").withException(e);
      }
    }
  };

  function setSoftphoneVisible() {
    sforce.interaction && sforce.interaction.setVisible(true);
    sforce.opencti && sforce.opencti.setSoftphonePanelVisibility({visible: true});
  }

  function ctiSearchAndPop(searchParams, queryParams, callType) {
    function callback(response) {
      connect.getLog().info("ACSFIntegration:ScreenpopManager:ctiSearchAndPop:Response");

      try {
        if (response.success || response.result) {
          connect.getLog().info("ACSFIntegration:ScreenpopManager:ctiSearchAndPop:Result: %s", JSON.stringify(response));

          if (sforce.opencti && Object.keys && Object.keys(response.returnValue).length === 1) {
            _exactMatch = true;
            sessionStorage.setItem("CCP-callExactMatch", "true");
            ctx.ACSFIntegration.CallInformation.processExactMatch(Object.keys(response.returnValue)[0]);
            console.log("********** Found Exactly 1 Match");
          }
          else if (sforce.interaction && Object.keys && Object.keys(JSON.parse(response.result)).length === 1) {
            _exactMatch = true;
            sessionStorage.setItem("CCP-callExactMatch", "true");
            ctx.ACSFIntegration.CallInformation.processExactMatch(Object.keys(JSON.parse(response.result))[0]);
            console.log("********** Found Exactly 1 Match");
          }
          else {
            _exactMatch = false;
            sessionStorage.setItem("CCP-callExactMatch", "false");
            sessionStorage.removeItem("CCP-whoId");
            sessionStorage.removeItem("CCP-whatId");
            console.log("********** Did Not Find Exactly 1 Match");
          }
        } else {
          connect.getLog().info("ACSFIntegration:ScreenpopManager:ctiSearchAndPop:Error: %s", (response.error || JSON.stringify(response.errors)));
        }
      } catch (ex) {
        connect.getLog().error("ACSFIntegration:ScreenpopManager:ctiSearchAndPop:Error: %s", JSON.stringify(ex));
      }
    }

    sforce.interaction && sforce.interaction.searchAndScreenPop(searchParams, queryParams, callType, callback);
    sforce.opencti && sforce.opencti.searchAndScreenPop({
      searchParams: searchParams,
      queryParams: queryParams,
      callType: callType,
      deferred: false,
      callback: callback
    });
  }

  function popCtiUrl(url) {
    function callback(response) {
      try {
        if (response.success || response.result) {
          connect.getLog().info("ACSFIntegration:ScreenpopManager:ctiPop:Result: %s", JSON.stringify(response));
        } else {
          connect.getLog().info("ACSFIntegration:ScreenpopManager:ctiPop:Error: %s", (response.error || JSON.stringify(response.errors)));
        }
      } catch (ex) {
        connect.getLog().error("ACSFIntegration:ScreenpopManager:ctiPop:Error: %s", JSON.stringify(ex));
      }
    }

    sforce.interaction && sforce.interaction.screenPop(url, true, callback);

    sforce.opencti && sforce.opencti.screenPop({
      type: sforce.opencti.SCREENPOP_TYPE.URL,
      params: {
        url: url
      },
      callback: callback
    });
  }

  function cbGetPageInfo(response) {
    if (response.result) {
      connect.getLog().info("ACSFIntegration:cbGetPageInfo: %s", JSON.stringify(response.result));
    } else {
      connect.getLog().error("ACSFIntegration:cbGetPageInfo:Error: %s", JSON.stringify(response.error));
    }
  }

  function searchAndPopAni(contact, connectPhoneFormat ) {
    connect.getLog().info("ACSFIntegration:ScreenpopManager:searchAndPopAni:InboundPhone:Invoked");
    var phoneNumber = contact.getInitialConnection().getAddress().phoneNumber;
    connect.getLog().info("ACSFIntegration:ScreenpopManager:searchAndPopAni:InboundPhone:PN: %s", phoneNumber);
    var phoneParsed = libphonenumber.parse(phoneNumber, { country: { default: connectPhoneFormat.Country } });
    connect.getLog().info("ACSFIntegration:ScreenpopManager:searchAndPopAni:InboundPhone:Parsed: %s | %s", phoneParsed.country, phoneParsed.phone);

    connect.getLog().info("ACSFIntegration:ScreenpopManager:searchAndPopAni:GPICall");
    sforce.interaction && sforce.interaction.getPageInfo(cbGetPageInfo);
    connect.getLog().info("ACSFIntegration:ScreenpopManager:searchAndPopAni:ScreenPopSrch");
    ctiSearchAndPop(phoneParsed.phone, '', 'inbound');
  }

  function popRecordOrSearch(contact, connectPhoneFormat ) {
    var callRecordId = sessionStorage.getItem("CCP-callRecordId") || null;

    if (callRecordId) {
      _exactMatch = true;
      sessionStorage.setItem("CCP-callExactMatch", "true");
      ctx.ACSFIntegration.CallInformation.processExactMatch(sessionStorage.getItem("CCP-callRecordId"));
      popCtiUrl("/" + sessionStorage.getItem("CCP-callRecordId"));
      return;
    }

    var attributes = contact.getAttributes();

    var debug = sessionStorage.getItem("CCP-debug") === 'true';

    if (debug) {
      connect.getLog().info("ACSFIntegration:ScreenpopManager:popRecordOrSearch:attributes: %s", JSON.stringify(attributes));
    }

    var screenPopRecordAttribute = attributes[ACSF_SCREEN_POP_RECORD_ATTRIBUTE_KEY];
    if (screenPopRecordAttribute && screenPopRecordAttribute.value) {
      connect.getLog().info("ACSFIntegration:ScreenpopManager:popRecordOrSearch:popRecordFound: %s", screenPopRecordAttribute.value);
      _exactMatch = true;
      sessionStorage.setItem("CCP-callExactMatch", "true");
      ctx.ACSFIntegration.CallInformation.processExactMatch(screenPopRecordAttribute.value);
      popCtiUrl("/" + screenPopRecordAttribute.value);
      return;
    }

    var screenPopSearchAttribute = attributes[ACSF_SCREEN_POP_SEARCH_ATTRIBUTE_KEY];
    if (screenPopSearchAttribute && screenPopSearchAttribute.value) {
      connect.getLog().info("ACSFIntegration:ScreenpopManager:popRecordOrSearch:popSearchFound: %s", screenPopSearchAttribute.value);
      ctiSearchAndPop(screenPopSearchAttribute.value, '', 'inbound');
      return;
    }

    searchAndPopAni(contact, connectPhoneFormat);
  }
})(this);