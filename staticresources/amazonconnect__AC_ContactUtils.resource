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
   * @type {{INBOUND: string, CALLBACK: string, OUTBOUND: string, CHAT: string}}
   */
  let CONTACT_TYPE = {
    INBOUND: 'Inbound',
    OUTBOUND: 'Outbound',
    CALLBACK: 'Callback',
    CHAT: 'Chat',
  };

  /**
   * @private
   *
   * @type {{IN_PROGRESS: string, INCOMING: string}}
   */
  let CONTACT_STATUS = {
    INCOMING: 'Incoming',
    IN_PROGRESS: 'In-Progress',
  };

  /**
   * @class ac.Utils.Contact
   * @memberOf ac.Utils
   *
   * @description
   * The ac.Utils.Contact class provides helper methods for Amazon Connect contact (voice / chat) scripting.
   *
   * @see https://github.com/aws/amazon-connect-streams/blob/master/Documentation.md#contact-api
   *
   */
  ac.Utils.Contact = {
    /**
     *
     * @private
     */
    init: () => {},

    /**
     * Returns if the provided contact is a voice contact.
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {Boolean} - Is the contact a voice contact
     *
     * @example
     * let isVoiceContact = ac.Utils.Contact.isVoice(contact);
     */
    isVoice: (contact) => {
      return contact.getType() === connect.ContactType.VOICE;
    },

    /**
     * Returns if the provided contact is a chat contact.
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {Boolean} - Is the contact a chat contact
     *
     * @example
     * let isChatContact = ac.Utils.Contact.isChat(contact);
     */
    isChat: (contact) => {
      return contact.getType() === connect.ContactType.CHAT;
    },

    /**
     * Returns if the provided contact is an inbound contact.
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {Boolean} - Is the contact inbound
     *
     * @example
     * let inbound = ac.Utils.Contact.isInbound(contact);
     */
    isInbound: (contact) => {
      return contact.isInbound();
    },

    /**
     * Returns if the provided contact is a queued callback contact.
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {Boolean} - Is the contact a queue callback
     *
     * @example
     * let queueCallback = ac.Utils.Contact.isQueueCallback(contact);
     */
    isQueueCallback: (contact) => {
      return contact.getType() === connect.ContactType.QUEUE_CALLBACK;
    },

    /**
     * Gets a contact attribute value or default value from a provided contact.
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     * @param {String} attributeName - The contact attribute name
     * @param {String|Number|Object} defaultValue - The value to return if the attribute name is not found
     *
     * @returns {Object}
     *
     * @example
     * let testValue = ac.Utils.Contact.getAttributeValue(contact, 'attributeName', 'This is the default value');
     */
    getAttributeValue: (contact, attributeName, defaultValue = null) => {
      try {
        return contact.getAttributes()[attributeName].value;
      } catch (err) {
        return defaultValue;
      }
    },

    /**
     *
     * @static
     *
     * @param contact
     *
     * @returns {Object}
     *
     * @example
     * let attributes = ac.Utils.Contact.getAttributes(contact);
     */
    getAttributes: (contact) => {
      return contact.getAttributes();
    },

    /**
     * Get a comma separated list of key : value pairs of all contact attributes for the provide contact.
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {String} - THe attribute keys and values as a comma delimited string string
     *
     * @example
     * let allAttributes = ac.Utils.Contact.getAttributesAsString(contact);
     */
    getAttributesAsString: (contact) => {
      let attributes = contact.getAttributes();

      return Object.keys(attributes)
        .map((key) => {
          return attributes[key].name + ' : ' + attributes[key].value;
        })
        .join(', ');
    },

    /**
     * Get the contact type for the provided contact.
     *
     * CHAT, CALLBACK, INBOUND, OUTBOUND
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {String} - The contact type
     *
     * @example
     * let contactType = ac.Utils.Contact.getContactType(contact);
     */
    getContactType: (contact) => {
      if (ac.Utils.Contact.isChat(contact)) {
        return CONTACT_TYPE.CHAT;
      } else {
        if (ac.Utils.Contact.isQueueCallback(contact)) {
          return CONTACT_TYPE.CALLBACK;
        } else {
          return ac.Utils.Contact.isInbound(contact)
            ? CONTACT_TYPE.INBOUND
            : CONTACT_TYPE.OUTBOUND;
        }
      }
    },

    /**
     * Gets the contact status of the provided contact.
     *
     * INCOMING, IN_PROGRESS
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {String} - The contact status
     *
     * @example
     * let contactStatus = ac.Utils.Contact.getContactStatus(contact);
     */
    getContactStatus: (contact) => {
      if (ac.Utils.Contact.getContactType(contact) === CONTACT_TYPE.INBOUND) {
        return CONTACT_STATUS.INCOMING;
      } else {
        return CONTACT_STATUS.IN_PROGRESS;
      }
    },

    /**
     * Gets the customer connection from the provided contact.
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {ConnectConnection} - The customer connection
     *
     * @example
     * let customerConn = ac.Utils.Contact.getCustomerConnection(contact);
     */
    getCustomerConnection: (contact) => {
      try {
        return contact
          .getConnections()
          .find(
            (c) =>
              c.getType() === connect.ConnectionType.INBOUND ||
              c.getType() === connect.ConnectionType.OUTBOUND
          );
      } catch (err) {
        throw err;
      }
    },

    /**
     * Gets the customer phone number from the provided contact.
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {String} - The customer phone number
     *
     * @example
     * let customerPhone = ac.Utils.Contact.getCustomerPhoneNumber(contact);
     */
    getCustomerPhoneNumber: (contact) => {
      try {
        if (
          ac.Utils.Contact.isVoice(contact) ||
          ac.Utils.Contact.isQueueCallback(contact)
        ) {
          let customerConnection = ac.Utils.Contact.getCustomerConnection(
            contact
          );

          if (customerConnection) {
            let phoneNumber = customerConnection.getEndpoint().phoneNumber;

            if (phoneNumber) {
              let containsAtSymbol = phoneNumber.indexOf('@') > -1;
              return phoneNumber
                .substring(
                  0,
                  containsAtSymbol
                    ? phoneNumber.indexOf('@')
                    : phoneNumber.length
                )
                .replace('sip:', '');
            }
          }
        }
      } catch (err) {
        throw err;
      }

      return 'UNAVAILABLE';
    },

    /**
     * Gets the agent connection from the provided contact.
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {ConnectConnection}
     *
     * @example
     * let agentConn = ac.Utils.Contact.getAgentConnection(contact);
     */
    getAgentConnection: (contact) => {
      try {
        return contact.getAgentConnection();
      } catch (err) {
        throw err;
      }
    },

    /**
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {ConnectConnection}
     */
    getInitialConnection: (contact) => {
      try {
        return contact.getInitialConnection();
      } catch (err) {
        throw err;
      }
    },

    /**
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {ConnectConnection}
     */
    getActiveInitialConnection: (contact) => {
      try {
        return contact.getActiveInitialConnection();
      } catch (err) {
        throw err;
      }
    },

    /**
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {ConnectConnection}
     */
    getSingleActiveThirdPartyConnection: (contact) => {
      try {
        return contact.getSingleActiveThirdPartyConnection();
      } catch (err) {
        throw err;
      }
    },

    /**
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     */
    releaseAgentConnection: (contact) =>
      new Promise((resolve, reject) => {
        let agentConnection = contact.getAgentConnection();

        if (agentConnection) {
          agentConnection.destroy({
            success: () => {
              resolve();
            },
            failure: () => {
              reject();
            },
          });
        }
      }),

    // TODO: Remove if not needed
    addQuickConnectConnection: async (contact, name) => {
      let endpoint = await ac.Utils.Agent.getQuickConnectByName({ name: name });
      await _addConnection(contact, endpoint);
    },

    // TODO: Remove if not needed
    addPhoneNumberConnection: async (contact, phoneNumber) => {
      let endpoint = Endpoint.byPhoneNumber(phoneNumber);
      await _addConnection(contact, endpoint);
    },

    /**
     * Get the queue from which the provided contact was delivered.
     *
     * @static
     *
     * @param {ConnectContact} contact - The contact
     *
     * @returns {ConnectQueue} - The queue for this contact
     *
     * @example
     * let queue = ac.Utils.Contact.getQueue(contact);
     */
    getQueue: (contact) => {
      return contact.getQueue();
    },

    expandContact: (contact) => {
      let e = {};

      if (contact) {
        try {
          e.contactId = contact.getContactId();
        } catch (err) {}
        try {
          e.originalContactId = contact.getOriginalContactId();
        } catch (err) {}
        try {
          e.type = contact.getType();
        } catch (err) {}
        try {
          e.status = contact.getStatus();
        } catch (err) {}
        try {
          e.statusDuration = contact.getStatusDuration();
        } catch (err) {}
        try {
          e.queue = contact.getQueue();
        } catch (err) {}
        try {
          e.queueTimestamp = contact.getQueueTimestamp();
        } catch (err) {}
        try {
          e.attributes = contact.getAttributes();
        } catch (err) {}
        try {
          e.isSoftphoneCall = contact.isSoftphoneCall();
        } catch (err) {}
        try {
          e.isInbound = contact.isInbound();
        } catch (err) {}
        try {
          e.isConnected = contact.isConnected();
        } catch (err) {}
        try {
          e.isTransfer = contact.getOriginalContactId() != null;
        } catch (err) {}
        try {
          e.parsedNumber = ac.Utils.Common.parsePhoneNumber(
            ac.Utils.Contact.getCustomerPhoneNumber(contact)
          );
        } catch (err) {}
        try {
          e.channel = ac.Utils.Common.capitalize(
            contact.getType().toLowerCase()
          );
        } catch (err) {}
      }

      return e;
    },
  };

  const _addConnection = async (contact, endpoint) => {
    if (endpoint) {
      contact.addConnection(endpoint, {
        success: () => {
          resolve();
        },
        failure: (err) => {
          reject(err);
        },
      });
    }
  };
})(this);
