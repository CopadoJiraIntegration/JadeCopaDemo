// You must have an AWS account to use the Amazon Connect CTI Adapter.
// Downloading and/or using the Amazon Connect CTI Adapter is subject to the terms of the AWS Customer Agreement,
// AWS Service Terms, and AWS Privacy Notice.
//
// © 2017, Amazon Web Services, Inc. or its affiliates. All rights reserved.
//
// NOTE:  Other license terms may apply to certain, identified software components
// contained within or distributed with the Amazon Connect CTI Adapter if such terms are
// included in the LibPhoneNumber-js and Salesforce Open CTI. For such identified components,
// such other license terms will then apply in lieu of the terms above.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
'use strict';

(function (ac) {
  if (ac.Utils === undefined) {
    ac.Utils = {};
  }

  /**
   * @private
   *
   * @type {{}}
   */
  let _props = {};

  const CONNECT_PROPS = 'CONNECT_PROPS';

  const SALESFORCE_MODES = {
    LIGHTNING: 'Lightning',
    CONSOLE: 'Console',
    CLASSIC: 'Classic',
  };

  const SALESFORCE_OBJECTS = {
    ACCOUNT: {
      name: 'Account',
      prefix: '001',
      type: 'what',
    },
    CONTACT: {
      name: 'Contact',
      prefix: '003',
      type: 'who',
    },
    LEAD: {
      name: 'Lead',
      prefix: '00Q',
      type: 'who',
    },
    CASE: {
      name: 'Case',
      prefix: '500',
      type: 'what',
    },
    TASK: {
      name: 'Task',
      prefix: '00T',
      type: 'what',
    },
    OPPORTUNITY: {
      name: 'Opportunity',
      prefix: '006',
      type: 'what',
    },
  };

  const DOM_ELEMENTS = {
    VOICEMAIL_DROPS_CONTAINER: '#voicemailDropsContainer',
    VOICEMAIL_DROPS_TABLE: '#voicemailDropsTable',

    ATTRIBUTES_CONTAINER: '#attributesContainer',
    ATTRIBUTES_TABLE: '#attributesTable',
  };

  const LOGOUT_STATE_NAME = 'Logout';

  /**
   * @class ac.Utils.Common
   * @memberOf ac.Utils
   *
   * @description
   * The ac.Utils.Common class provides helper methods for general scripting.
   */
  ac.Utils.Common = {
    /**
     * Initializes the ac.Utils.Commons utility
     *
     * @private
     * @static
     *
     * @param {Object} props
     */
    init: (props) => {
      if (props) {
        _props = Object.assign(_props, props);
      }
    },

    /**
     * @static
     *
     * @returns {{CONSOLE: string, LIGHTNING: string, CLASSIC: string}}
     */
    getSalesforceModes: () => {
      return SALESFORCE_MODES;
    },

    /**
     * @static
     *
     * @returns {{ACCOUNT: {prefix: string, name: string, type: string}, CONTACT: {prefix: string, name: string, type: string}, TASK: {prefix: string, name: string, type: string}, OPPORTUNITY: {prefix: string, name: string, type: string}, LEAD: {prefix: string, name: string, type: string}, CASE: {prefix: string, name: string, type: string}}}
     */
    getSalesforceObjects: () => {
      return SALESFORCE_OBJECTS;
    },

    /**
     * @static
     *
     * @returns {{LINKS_TABLE: string, LINKS_INDICATOR: string, LINKS_POPOVER: string, VOICEMAIL_DROPS_TABLE: string, ATTRIBUTES_INDICATOR: string, ATTRIBUTES_TABLE: string, VOICEMAIL_DROPS_POPOVER: string, ATTRIBUTES_POPOVER: string, BOTTOM_PANEL: string, VOICEMAIL_DROPS_INDICATOR: string}}
     */
    getDomElements: () => {
      return DOM_ELEMENTS;
    },

    /**
     *
     * @static
     *
     * @param {Object} results
     *
     * @returns {Object}
     */
    buildResolve: (results) => {
      return results;
    },

    /**
     *
     * @static
     *
     * @param {String} message
     * @param {Error} error
     *
     * @returns {{message: *, error: *}}
     */
    buildReject: (message, error) => {
      return {
        message: message,
        error: error,
      };
    },

    /**
     *
     * @static
     *
     * @param {String} mode
     * @param {Error} error
     *
     * @returns {{message: *, error: *}}
     */
    buildRejectUnsupportedOperation: (mode, error) => {
      return ac.Utils.Common.buildReject(
        `Unsupported operation in ${mode} mode`,
        error
      );
    },

    /**
     *
     * @private
     *
     * @static
     *
     * @param message
     *
     * @returns {Error}
     */
    buildError: (message) => {
      return new Error(message);
    },

    /**
     * Provides a delay in further processing
     *
     * @memberOf ac.Utils.Common
     *
     * @static
     * @async
     *
     * @param {Number} ms - The number of milliseconds to delay
     */
    delay: (ms) => {
      return new Promise((resolve) => setTimeout(resolve, ms));
    },

    /**
     * Updates or adds a key:value to the list of stored properties.
     *
     * @memberOf ac.Utils.Common
     * @static
     *
     * @param {Object} args
     * @param {String} args.key - The property name
     * @param {String | Number | Object} args.value - The property value
     *
     * @see getProperty
     * @see unsetProperty
     * @see getAllProperties
     */
    setProperty: (args) => {
      _.set(_props, args.key, args.value);
      localStorage.setItem(CONNECT_PROPS, JSON.stringify(_props));
    },

    /**
     * Returns the value of a provided key or default value if the key is not found.
     * Primary attempt is made to the in memory props store.  Secondary attempt is made to localStorage
     *
     * @static
     * @param {Object} args
     * @param {String=} args.key - The property name
     * @param {Object} args.defaultValue - The default value to return if the property is not found
     *
     * @returns {String|Number|Object}
     *
     * @see setProperty
     * @see unsetProperty
     * @see getAllProperties
     *
     * @example
     * let testProperty = ac.Utils.Common.getProperty('testName');
     *
     * @example
     * let testProperty = ac.Utils.Common.getProperty('testName', 'This is the default value');
     */
    getProperty: (args) => {
      let value = _.get(_props, args.key, args.defaultValue || null);

      if (value === null && args.defaultValue !== null) {
        let connectProps = localStorage.getItem(CONNECT_PROPS);

        if (connectProps) {
          value = _.get(connectProps, args.key, args.defaultValue || null);
        }
      }

      return value;
    },

    /**
     * Removes a property path from the local property store and localStorage
     *
     * @static
     * @param {Object} args
     * @param {String=} args.key = The property name
     *
     * @see setProperty
     * @see getProperty
     * @see getAllProperties
     */
    unsetProperty: (args) => {
      _.unset(_props, args.key);
      localStorage.setItem(CONNECT_PROPS, JSON.stringify(_props));
    },

    /**
     * Gets all stored properties.
     *
     * @static
     *
     * @returns {Object}
     *
     * @see getProperty
     * @see setProperty
     *
     * @example
     * let props = ac.Utils.Common.getAllProperties();
     */
    getAllProperties: () => {
      return _props;
    },

    /**
     * Generate a UUID
     *
     * @static
     *
     * @returns {String}
     *
     * @example
     * let uuid = ac.Utils.Common.generateUUID();
     */
    generateUUID: () => {
      let dt = new Date().getTime();

      return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, (c) => {
        let r = (dt + Math.random() * 16) % 16 | 0;
        dt = Math.floor(dt / 16);
        return (c === 'x' ? r : (r & 0x3) | 0x8).toString(16);
      });
    },

    setDomVisible: (args) => {
      if (args.visible) {
        $(args.id).removeClass('slds-hide');
      } else {
        $(args.id).addClass('slds-hide');
      }
    },

    /**
     * Formats a provided phone number and country code in E.164 format.
     *
     * @static
     *
     * @param {String} phoneNumber - The phone number to format
     * @param {String} countryCode - The country code to which to format the phone number
     *
     * @returns {String}
     *
     * @example
     * let e164 = ac.Utils.Common.formatPhoneNUmberE164('8885551212', 'US');
     */
    formatPhoneNumberE164: (phoneNumber, countryCode) => {
      if (libphonenumber.isSupportedCountry(countryCode)) {
        return libphonenumber.formatNumber(
          libphonenumber.parse(phoneNumber, countryCode),
          'E.164'
        );
      }

      return libphonenumber.formatNumber(
        libphonenumber.parse(
          phoneNumber,
          ac.Utils.Common.getProperty({
            key: 'defaultCountryCode',
            defaultValue: 'US',
          })
        ),
        'E.164'
      );
    },

    /**
     * Formats a provided phone number in the specified country format.
     *
     * @static
     *
     * @param {String} phoneNumber - The phone number to format
     * @param {String} countryCode - The country code to which to format the phone number
     *
     * @returns {String}
     */
    formatPhoneNumber: (phoneNumber, countryCode) => {
      if (libphonenumber.isSupportedCountry(countryCode)) {
        return libphonenumber.parse(phoneNumber, countryCode).phone;
      }
    },

    /**
     *
     * @static
     *
     * @param {String} phoneNumber
     *
     * @returns {Object}
     */
    parsePhoneNumber: (phoneNumber) => {
      return libphonenumber.parseNumber(phoneNumber);
    },

    /**
     * Capitalize a provided string
     *
     * @static
     *
     * @param {String} s - The string to capitalize
     *
     * @returns {string}
     *
     * @example
     * let capFirstName = ac.Utils.Common.capitalize('joe');
     * let capLastName = ac.Utils.Common.capitalize('smith');
     */
    capitalize: (s) => {
      if (typeof s !== 'string') {
        return '';
      }

      return s.charAt(0).toUpperCase() + s.slice(1);
    },

    /**
     *
     * @static
     *
     * @param {Object} args
     * @param {String} args.message
     * @param {Object} args.config
     *
     */
    showModal: (args) => {
      $('#messageBody').html(args.message);
      $('#messageDialog').modal(args.config || {});
    },

    /**
     *
     * @static
     *
     * @param {Object} args
     * @param {String} args.endpointUrl - The REST endpoint url
     * @param {String} args.type - GET, POST
     * @param {Boolean} args.crossDomain
     */
    restCall: (args) =>
      new Promise((resolve, reject) => {
        $.ajax(args.endpointUrl, {
          type: args.type,
          crossDomain: args.crossDomain,
          accepts: 'application/json',
          cache: false,
          success: (result) => {
            resolve(result);
          },
          error: (response) => {
            reject(response);
          },
        });
      }),

    /**
     *
     * @static
     *
     * @returns {String}
     */
    getMode: () => {
      return _props.mode;
    },

    /**
     *
     * @static
     *
     * @returns {Boolean}
     */
    isLightning: () => {
      return _props.mode === ac.Utils.Common.getSalesforceModes().LIGHTNING;
    },

    /**
     *
     * @static
     *
     * @returns {Boolean}
     */
    isClassic: () => {
      return _props.mode === ac.Utils.Common.getSalesforceModes().CLASSIC;
    },

    /**
     *
     * @static
     *
     * @returns {Boolean}
     */
    isConsole: () => {
      return _props.mode === ac.Utils.Common.getSalesforceModes().CONSOLE;
    },

    /**
     *
     * @param {Object} args
     * @param {String|Number|Boolean} args.operandA
     * @param {String} args.comparator
     * @param {String|Number|Boolean} args.operandB
     * @param {String} args.evaluateAs
     */
    decision: (args) => {
      let operandA, operandB, comparator, result;

      switch (args.evaluateAs.toLowerCase()) {
        case 'string':
          operandA = String(args.operandA);
          operandB = String(args.operandB);
          break;

        case 'number':
          operandA = Number(args.operandA);
          operandB = Number(args.operandB);
          break;

        case 'boolean':
          operandA = args.operandA === 'true' || args.operandA === true;
          operandB = args.operandB === 'true' || args.operandA === true;
          break;

        default:
      }

      try {
        comparator = args.comparator.replace('&lt;', '<').replace('&gt;', '>');

        switch (comparator) {
          case '===':
            result = operandA === operandB;
            break;
          case '!==':
            result = operandA !== operandB;
            break;
          case '>':
            result = operandA > operandB;
            break;
          case '>=':
            result = operandA >= operandB;
            break;
          case '<':
            result = operandA < operandB;
            break;
          case '<=':
            result = operandA <= operandB;
            break;
          default:
            result = false;
        }
      } catch (err) {
        ac.Utils.Log.error({ message: 'decision error', exception: err });
        result = false;
      }

      return { result: result };
    },

    /**
     *
     * @returns {Promise<Feature[]>}
     */
    getFeatures: async () =>
      new Promise((resolve, reject) => {
        let ctiAdapter = ac.Utils.Common.getProperty({ key: 'ctiAdapter' });

        try {
          if (ctiAdapter) {
            Visualforce.remoting.Manager.invokeAction(
              ac.Utils.Salesforce.getNamespaceClassPrefix() +
                'AC_Utils.getFeatures',
              ctiAdapter.Id,
              (response, event) => {
                if (event && event.status && response) {
                  resolve(ac.Utils.Common.buildResolve(response));
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'getFeatures error',
                      response.errors
                    )
                  );
                }
              }
            );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('getFeatures error', err));
        }
      }),

    getFeatureByName: async (name) => {
      let feature = null;

      try {
        let features = await ac.Utils.Common.getFeatures();

        if (features && features.length > 0) {
          feature = features.find((f) => {
            return f.Name === name;
          });
        }
      } catch (err) {
        reject(ac.Utils.Common.buildReject('getFeatureByName error', err));
      }

      if (feature) {
        let active = ac.Utils.Salesforce.getValueWithNamespace(
          feature,
          'Active__c',
          false
        );
        let value = ac.Utils.Salesforce.getValueWithNamespace(
          feature,
          'Value__c',
          null
        );

        feature.active = active;

        if (value) {
          let vals = value.split('\n');

          if (feature) {
            feature['Settings'] = [];

            vals.forEach((v) => {
              let kvp = v.split(':');

              feature['Settings'][kvp[0].trim()] = kvp[1].trim();
            });
          }
        }
      }

      return feature;
    },

    /**
     *
     * @param feature
     * @param setting
     * @param type
     * @param defaultValue
     *
     * @returns {*}
     */
    getFeatureSetting: (feature, setting, type, defaultValue) => {
      let val = null;

      try {
        val = feature['Settings'][setting];

        if (val !== undefined && val !== null) {
          switch (type) {
            case String:
              val = String(val);
              break;

            case Number:
              val = Number(val);
              break;

            case Boolean:
              val = val === 'true' || val === true;
              break;
          }
        } else {
          val = defaultValue;
        }
      } catch (err) {
        val = defaultValue;
      }

      return val;
    },

    openHelperPanel: () => {
      $('#helperMenu').BootSideMenu.open();
    },

    closeHelperPanel: () => {
      $('#helperMenu').BootSideMenu.close();
    },

    /**
     *
     * @protected
     *
     * @param {ConnectAgent} agent
     */
    connectAgentOnInit: async (agent) => {
      if (ac.Utils.Salesforce.shouldEnableClickToDial()) {
        await ac.Utils.Salesforce.enableClickToDial();
      } else {
        await ac.Utils.Salesforce.disableClickToDial();
      }
    },

    /**
     *
     * @protected
     *
     * @param {ConnectAgent} agent
     */
    connectAgentOnContactPending: async (agent) => {},

    /**
     *
     * @protected
     *
     * @param {ConnectAgent} agent
     */
    connectAgentOnSoftphoneError: async (agent) => {},

    /**
     *
     * @protected
     *
     * @param {ConnectAgentStateChange} agentStateChange
     */
    connectAgentOnStateChange: async (agentStateChange) => {
      if (agentStateChange.newState.includes(LOGOUT_STATE_NAME)) {
        await ac.Utils.Agent.logout();
      } else {
        let ctiAdapter = ac.Utils.Common.getProperty({ key: 'ctiAdapter' });

        if (
          ac.Utils.Salesforce.getValueWithNamespace(
            ctiAdapter,
            'PresenceSyncEnabled__c',
            false
          ) &&
          ac.Utils.Common.isLightning()
        ) {
          await ac.Utils.PresenceSync.handleEvent({
            source: 'connectAgentStateChange',
            body: agentStateChange,
          });
        }
      }
    },

    /**
     *
     * @protected
     *
     * @param {ConnectAgent} agent
     */
    connectAgentOnRefresh: async (agent) => {},

    /**
     *
     * @protected
     *
     * @param {ConnectAgent} agent
     */
    connectAgentOnRoutable: async (agent) => {
      ac.Utils.VoicemailDrop.depopulate();
    },

    /**
     *
     * @protected
     *
     * @param {ConnectAgent} agent
     */
    connectAgentOnNotRoutable: async (agent) => {},

    /**
     *
     * @protected
     *
     * @param {ConnectAgent} agent
     */
    connectAgentOnOffline: async (agent) => {},

    /**
     *
     * @protected
     *
     * @param {ConnectAgent} agent
     */
    connectAgentOnAfterCallWork: async (agent) => {},

    /**
     *
     * @protected
     *
     * @param {ConnectAgent} agent
     */
    connectAgentOnError: async (agent) => {},

    /**
     * @protected
     *
     * @param {Object} payload
     */
    connectOnViewContact: async (payload) => {
      ac.Utils.Log.info({
        message: `>>>>>>>>>> Contact ${payload.contactId} is being viewed.`,
      });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectContactOnRefresh: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectContactOnRefresh called' });
      await _contactOnRefresh(contact);
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectVoiceContactOnPending: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectVoiceContactOnPending called' });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectVoiceContactOnIncoming: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectVoiceContactOnIncoming called' });
      await ac.Utils.Salesforce.showSoftphonePanel();
      // await ac.Utils.CtiAttributes.populate(contact.getContactId());
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectVoiceContactOnConnecting: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectVoiceContactOnConnecting called' });
      await _contactOnInit(contact);
      await _createContactChannel(contact);
      await ac.Utils.Salesforce.showSoftphonePanel();

      if (!contact.isInbound()) {
        await ac.Utils.VoicemailDrop.populate();
      }
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectVoiceContactOnAccepted: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectVoiceContactOnAccepted called' });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectVoiceContactOnConnected: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectVoiceContactOnConnected called' });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectVoiceContactOnEnded: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectVoiceContactOnEnded called' });
      await _contactOnEnded(contact);
      await _updateContactChannel(contact);
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectVoiceContactOnMissed: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectVoiceContactOnMissed called' });
      await _contactOnMissed(contact);
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectVoiceContactOnAfterCallWork: async (contact) => {
      ac.Utils.Log.info({
        message: 'ConnectVoiceContactOnAfterCallWork called',
      });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectQueueCallbackContactOnPending: async (contact) => {
      ac.Utils.Log.info({
        message: 'ConnectQueueCallbackContactOnPending called',
      });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectQueueCallbackContactOnAccepted: async (contact) => {
      ac.Utils.Log.info({
        message: 'ConnectQueueCallbackContactOnAccepted called',
      });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectQueueCallbackContactOnIncoming: async (contact) => {
      ac.Utils.Log.info({
        message: 'ConnectQueueCallbackContactOnIncoming called',
      });
      await _contactOnInit(contact);
      await _createContactChannel(contact);
      await ac.Utils.Salesforce.showSoftphonePanel();
      // await ac.Utils.CtiAttributes.populate(contact.getContactId());
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectQueueCallbackContactOnConnecting: async (contact) => {
      ac.Utils.Log.info({
        message: 'ConnectQueueCallbackContactOnConnecting called',
      });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectQueueCallbackContactOnConnected: async (contact) => {
      ac.Utils.Log.info({
        message: 'ConnectQueueCallbackContactOnConnected called',
      });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectQueueCallbackContactOnEnded: async (contact) => {
      ac.Utils.Log.info({
        message: 'ConnectQueueCallbackContactOnEnded called',
      });
      await _contactOnEnded(contact);
      await _updateContactChannel(contact);
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectQueueCallbackContactOnMissed: async (contact) => {
      ac.Utils.Log.info({
        message: 'ConnectQueueCallbackContactOnMissed called',
      });
      await _contactOnMissed(contact);
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectQueueCallbackContactOnAfterCallWork: async (contact) => {
      ac.Utils.Log.info({
        message: 'ConnectQueueCallbackContactOnAfterCallWork called',
      });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectChatContactOnPending: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectChatContactOnPending called' });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectChatContactOnIncoming: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectChatContactOnIncoming called' });
      await _contactOnInit(contact);
      await _createContactChannel(contact);
      await ac.Utils.Salesforce.showSoftphonePanel();
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectChatContactOnConnecting: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectChatContactOnConnecting called' });
      await _contactOnInit(contact);
      await _createContactChannel(contact);
      //await ac.Utils.CtiAttributes.populate(contact.getContactId());
      await ac.Utils.Salesforce.showSoftphonePanel();
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectChatContactOnAccepted: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectChatContactOnAccepted called' });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectChatContactOnConnected: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectChatContactOnConnected called' });
      ac.Utils.Common.setProperty({
        key: `contacts.${contact.getContactId()}.contactStartTime`,
        value: new Date().getTime(),
      });
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectChatContactOnEnded: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectChatContactOnEnded called' });
      await _contactOnEnded(contact);
      await _updateContactChannel(contact);
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectChatContactOnMissed: async (contact) => {
      ac.Utils.Log.info({ message: 'ConnectChatContactOnMissed called' });
      await _contactOnMissed(contact);
    },

    /**
     *
     * @protected
     *
     * @param {ConnectContact} contact
     *
     * @returns {Promise<void>}
     */
    connectChatContactOnAfterCallWork: async (contact) => {
      ac.Utils.Log.info({
        message: 'ConnectChatContactOnAfterCallWork called',
      });
    },

    /**
     *
     * @protected
     *
     * @param {Object} event
     *
     * @returns {Promise<void>}
     */
    salesforcePresencesStatusChanged: async (event) => {
      let ctiAdapter = ac.Utils.Common.getProperty({ key: 'ctiAdapter' });

      if (
        ac.Utils.Salesforce.getValueWithNamespace(
          ctiAdapter,
          'PresenceSyncEnabled__c'
        ) &&
        ac.Utils.Common.isLightning()
      ) {
        await ac.Utils.PresenceSync.handleEvent({
          source: 'salesforceAgentStateChange',
          body: event,
        });
      }
    },

    /**
     *
     * @protected
     *
     * @param {Object} event
     *
     * @returns {Promise<void>}
     */
    salesforcePresenceLogout: async (event) => {
      let ctiAdapter = ac.Utils.Common.getProperty({ key: 'ctiAdapter' });

      if (
        ac.Utils.Salesforce.getValueWithNamespace(
          ctiAdapter,
          'PresenceSyncEnabled__c'
        ) &&
        ac.Utils.Common.isLightning()
      ) {
        await ac.Utils.PresenceSync.handleEvent({
          source: 'salesforceAgentLogout',
          body: event,
        });
      }
    },

    /**
     *
     * @protected
     *
     * @param {Object} event
     *
     * @returns {Promise<void>}
     */
    salesforcePresenceWorkloadChanged: async (event) => {
      let ctiAdapter = ac.Utils.Common.getProperty({ key: 'ctiAdapter' });

      if (
        ac.Utils.Salesforce.getValueWithNamespace(
          ctiAdapter,
          'PresenceSyncEnabled__c'
        ) &&
        ac.Utils.Common.isLightning()
      ) {
        await ac.Utils.PresenceSync.handleEvent({
          source: 'salesforceWorkloadChanged',
          body: event,
        });
      }
    },

    /**
     *
     * @protected
     *
     * @param {Object} event
     *
     * @returns {Promise<void>}
     */
    salesforcePresenceWorkAccepted: async (event) => {
      let ctiAdapter = ac.Utils.Common.getProperty({ key: 'ctiAdapter' });

      if (
        ac.Utils.Salesforce.getValueWithNamespace(
          ctiAdapter,
          'PresenceSyncEnabled__c'
        ) &&
        ac.Utils.Common.isLightning()
      ) {
        await ac.Utils.PresenceSync.handleEvent({
          source: 'salesforceWorkAccepted',
          body: event,
        });
      }
    },

    /**
     *
     * @protected
     *
     * @param {Object} event
     *
     * @returns {Promise<void>}
     */
    salesforcePresenceWorkClosed: async (event) => {
      let ctiAdapter = ac.Utils.Common.getProperty({ key: 'ctiAdapter' });

      if (
        ac.Utils.Salesforce.getValueWithNamespace(
          ctiAdapter,
          'PresenceSyncEnabled__c'
        ) &&
        ac.Utils.Common.isLightning()
      ) {
        await ac.Utils.PresenceSync.handleEvent({
          source: 'salesforceWorkClosed',
          body: event,
        });
      }
    },

    /**
     *
     * @protected
     *
     * @param {Object} payload
     *
     * @example payload
     * {"number":"(769) 555-7272","recordId":"0033i0000032PdBAAU","recordName":"Mark Kingston","objectType":"Contact"}
     */
    salesforceOnClickToDial: async (payload) => {},

    /**
     *
     * @protected
     *
     * @param {Object} payload
     */
    salesforceNavigationChange: async (payload) => {},

    /**
     *
     * @protected
     *
     * @param {OBject} payload
     */
    salesforceHvsWorkStart: async (payload) => {},
  };

  /**
   *
   * @private
   *
   * @param {Object} contact
   */
  const _contactOnInit = async (contact) => {
    const now = new Date();

    let expandedContact = ac.Utils.Contact.expandContact(contact);
    expandedContact.contactMissed = false;
    expandedContact.contactStartDate = now;
    expandedContact.contactStartDateTime = now.toISOString();

    ac.Utils.Common.setProperty({
      key: `contacts.${contact.getContactId()}`,
      value: expandedContact,
    });
  };

  /**
   *
   * @private
   *
   * @param {Object} contact
   */
  const _contactOnEnded = async (contact) => {
    const now = new Date();
    ac.Utils.Common.setProperty({
      key: `contacts.${contact.getContactId()}.contactStatus`,
      value: ac.Utils.Common.getProperty({
        key: 'contactMissed',
        defaultValue: false,
      })
        ? 'Missed'
        : 'Completed',
    });
    ac.Utils.Common.setProperty({
      key: `contacts.${contact.getContactId()}.contactEndDate`,
      value: now,
    });
    ac.Utils.Common.setProperty({
      key: `contacts.${contact.getContactId()}.contactEndTime`,
      value: now.getTime(),
    });
    ac.Utils.Common.setProperty({
      key: `contacts.${contact.getContactId()}.contactEndDateTime`,
      value: now.toISOString(),
    });

    let contactStartTime = ac.Utils.Common.getProperty({
      key: `contacts.${contact.getContactId()}.contactStartTime`,
      defaultValue: 0,
    });
    contactStartTime = parseInt(contactStartTime, 10);

    let contactEndTime = ac.Utils.Common.getProperty({
      key: `contacts.${contact.getContactId()}.contactEndTime`,
      defaultValue: 0,
    });
    contactEndTime = parseInt(contactEndTime, 10);

    ac.Utils.Common.setProperty({
      key: `contacts.${contact.getContactId()}.contactInteractionDuration`,
      value: Math.floor((contactEndTime - contactStartTime) / 1000),
    });

    if (
      ac.Utils.Common.getProperty({
        key: 'currentContactId',
        defaultValue: '',
      }) === contact.getContactId()
    ) {
      ac.Utils.Common.setProperty({ key: 'currentContactId', value: null });
    }
  };

  /**
   *
   * @private
   *
   * @param {ConnectContact} contact
   *
   * @returns {Promise<void>}
   */
  const _contactOnMissed = async (contact) => {
    ac.Utils.Common.setProperty({
      key: `contacts.${contact.getContactId()}.contactMissed`,
      value: true,
    });
  };

  /**
   *
   * @private
   *
   * @param {ConnectContact} contact
   *
   * @returns {Promise<void>}
   */
  const _contactOnRefresh = async (contact) => {
    let props = ac.Utils.Common.getProperty({
      key: `contacts.${contact.getContactId()}`,
    });

    if (props) {
      _.assign(props, ac.Utils.Contact.expandContact(contact));
    }

    props.lastRefreshed = new Date().getTime();

    ac.Utils.Common.setProperty({
      key: `contacts.${contact.getContactId()}`,
      value: props,
    });

    // Cleanup contacts
    let now = new Date().getTime();

    Object.entries(
      ac.Utils.Common.getProperty({ key: 'contacts', defaultValue: {} })
    ).forEach(([key, value]) => {
      if (now - value.lastRefreshed > 2 * 60 * 1000) {
        ac.Utils.Common.unsetProperty({ key: `contacts.${key}` });
      }
    });
  };

  /**
   *
   * @private
   *
   * @param {ConnectContact} contact
   *
   * @returns {Promise<Object|Error>}
   */
  const _createContactChannel = async (contact) => {
    try {
      let agent = ac.Utils.Agent.getAgent();

      let contactType = ac.Utils.Contact.getContactType(contact);

      let contactStatus = ac.Utils.Contact.getContactStatus(contact);

      let namespace = ac.Utils.Salesforce.getNamespacePagePrefix();

      let contactChannel = {};

      contactChannel[namespace + 'AgentName__c'] = agent.getName();
      contactChannel[
        namespace + 'AgentLoginUsername__c'
      ] = agent.getConfiguration().username;
      contactChannel[namespace + 'ContactId__c'] = contact.getContactId();
      contactChannel[namespace + 'QueueName__c'] =
        contact.getQueue().name || '';
      contactChannel[namespace + 'InitiationMethod__c'] = contactType;
      contactChannel[namespace + 'CallStatus__c'] = contactStatus;
      contactChannel[
        namespace + 'Attributes__c'
      ] = ac.Utils.Contact.getAttributesAsString(contact);

      if (
        ac.Utils.Contact.isVoice(contact) ||
        ac.Utils.Contact.isQueueCallback(contact)
      ) {
        let customerPhoneNumber = ac.Utils.Contact.getCustomerPhoneNumber(
          contact
        );

        contactChannel[namespace + 'Channel__c'] = 'VOICE';
        contactChannel[namespace + 'CustomerNumber__c'] = customerPhoneNumber;
      } else {
        contactChannel[namespace + 'Channel__c'] = 'CHAT';
      }

      let result = await ac.Utils.Salesforce.saveLog({
        type: namespace + 'AC_ContactChannels__c',
        recordId: null,
        fields: contactChannel,
      });

      if (result) {
        ac.Utils.Common.setProperty({
          key: `contacts.${contact.getContactId()}.contactChannelId`,
          value: result.recordId,
        });
      }

      return result;
    } catch (err) {
      throw err;
    }
  };

  /**
   *
   * @private
   *
   * @param {Boolean} visible
   */
  const _setBottomPanelVisible = (visible) => {
    if (visible) {
      $(DOM_ELEMENTS.BOTTOM_PANEL).removeClass('slds-hide');
    } else {
      $(DOM_ELEMENTS.BOTTOM_PANEL).addClass('slds-hide');
    }
  };

  /**
   *
   * @private
   *
   * @param {ConnectContact} contact
   *
   * @returns {Promise<Object|Error>}
   */
  const _updateContactChannel = async (contact) => {
    let result = null;

    try {
      let contactChannelId = ac.Utils.Common.getProperty({
        key: `contacts.${contact.getContactId()}.contactChannelId`,
        defaultValue: null,
      });

      if (contactChannelId) {
        let contactEntry = ac.Utils.Common.getProperty({
          key: `contacts.${contact.getContactId()}`,
          defaultValue: null,
        });

        if (contactEntry) {
          let namespace = ac.Utils.Salesforce.getNamespacePagePrefix();

          let contactChannel = {};
          contactChannel['Id'] = contactChannelId;
          contactChannel[namespace + 'CallStartTimestamp__c'] =
            contactEntry.contactStartDateTime;
          contactChannel[namespace + 'CallEndTimestamp__c'] =
            contactEntry.contactEndDateTime;
          contactChannel[namespace + 'CallStatus__c'] =
            contactEntry.contactStatus;
          contactChannel[namespace + 'InteractionDuration__c'] =
            contactEntry.contactInteractionDuration;

          result = await ac.Utils.Salesforce.saveLog({
            type: namespace + 'AC_ContactChannels__c',
            recordId: contactChannelId,
            fields: contactChannel,
          });
        }
      }
    } catch (err) {
      throw err;
    }

    return result;
  };
})(this);
