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
   * @class ac.Utils.Agent
   * @memberOf ac.Utils
   *
   * @description
   * The ac.Utils.Agent class provides helper methods for Amazon Connect agent scripting.
   *
   * @see https://github.com/aws/amazon-connect-streams/blob/master/Documentation.md#agent-api
   */
  ac.Utils.Agent = {
    /**
     * @private
     * @static
     *
     * @param props
     */
    init: () => {},

    /**
     * Gets the list of quick connects available to the current agent
     *
     * @static
     * @async
     *
     * @returns {Promise<Array|Error>}
     *
     * @example
     * let qcList = await ac.Utils.Agent.getQuickConnectList();
     */
    getQuickConnectList: () =>
      new Promise((resolve, reject) => {
        try {
          const arnList = _getAgent().getAllQueueARNs();

          _getAgent().getEndpoints(arnList, {
            success: (data) => resolve(data),
            failure: (_) => {
              reject(
                ac.Utils.Common.buildReject(
                  'Failed to get quick connection list.',
                  null
                )
              );
            },
          });
        } catch (err) {
          reject(
            ac.Utils.Common.buildReject('getQuickConnectionList error', err)
          );
        }
      }),

    /**
     * Returns a quick connect by name if a name match is found
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.name - The name The name of the quick connect
     * @returns {Object}
     *
     * * @example
     * let qc = await ac.Utils.Agent.getQuickConnectByName({ name: 'My Quick Connect' });
     */
    getQuickConnectByName: async (args) => {
      let quickConnects = null;
      let quickConnect = null;

      try {
        quickConnects = await ac.Utils.Agent.getQuickConnectList();

        if (quickConnects && quickConnects.endpoints) {
          quickConnect = quickConnects.endpoints.find((endpoint) => {
            return endpoint.name.includes(args.name);
          });
        }
      } catch (err) {
        ac.Utils.Log.error(err);
      }

      return quickConnect;
    },

    /**
     *
     * @static
     * @async
     *
     * @returns {Promise<Array|Error>}
     *
     *  @example
     * let tcList = await ac.Utils.Agent.getTransferConnList();
     */
    getTransferConnList: () =>
      new Promise((resolve, reject) => {
        try {
          _getAgent().getEndpoints(agent.getAllQueueARNs(), {
            success: (data) => {
              let endpoints = data.endpoints || [];
              resolve(endpoints);
            },
            failure: (_) => {
              reject(
                ac.Utils.Common.buildReject(
                  'Failed to get transfer connection list',
                  null
                )
              );
            },
          });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('getTransferConnList error', err));
        }
      }),

    /**
     * Generates and returns an endpoint for a provided phone number.
     *
     * @static
     *
     * @param {Object} args
     * @param {String} args.phoneNumber - The phone number for which to generate an endpoint
     *
     * @returns {c}
     *
     * @throws {Error}
     *
     * @example
     * let endpoint = ac.Utils.Agent.getEndpointByPhoneNumber({phoneNumber: '+18885551212' });
     */
    getEndpointByPhoneNumber: (args = null) => {
      if (!phoneNumber) {
        throw ac.Utils.Common.buildError('Phone number required');
      }

      return connect.Endpoint.byPhoneNumber(
        args.phoneNumber.replace(/\s/g, '')
      );
    },

    /**
     * Dials a provided phone number and connects or conferences that endpoint.
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.phoneNumber - The phone number to dial
     *
     * @returns {Promise<Object|Error>}
     *
     * @example
     * ac.Utils.Agent.dialNumber({ phoneNumber: '+18885551212' });
     */
    dialNumber: (args) =>
      new Promise((resolve, reject) => {
        try {
          let voiceContacts = _getAgent().getContacts({
            type: connect.ContactType.VOICE,
          });

          if (voiceContacts && voiceContacts.length <= 1) {
            let endpoint = connect.Address.byPhoneNumber(args.phoneNumber);

            if (
              _getAgent().getContacts({ type: connect.ContactType.VOICE })
                .length === 0
            ) {
              _getAgent().connect(endpoint, {
                success: (data) => {
                  resolve(data);
                },
                failure: (err) => {
                  reject(ac.Utils.Common.buildReject('dialNumber error', err));
                },
              });
            } else {
              voiceContacts[0].addConnection(endpoint, {
                success: (data) => {
                  resolve(data);
                },
                failure: (err) => {
                  reject(ac.Utils.Common.buildReject('dialNumber error', err));
                },
              });
            }
          } else {
            ac.Utils.Log.warn(
              'Could not dial number.  Simultaneous contacts exceed.'
            );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('dialNumber error', err));
        }
      }),

    /**
     * Mutes the agent.
     *
     * @static
     *
     * @throws {Error}
     *
     * @example
     * ac.Utils.Agent.mute();
     */
    mute: () => {
      try {
        _getAgent().mute();
      } catch (err) {
        throw err;
      }
    },

    /**
     * Unmutes the agent
     *
     * @static
     *
     * @throws {Error}
     *
     * @example
     * ac.Utils.Agent.unmute();
     */
    unmute: () => {
      try {
        _getAgent().unmute();
      } catch (err) {
        throw err;
      }
    },

    /**
     * Returns the current agent state.
     *
     * @static
     *
     * @returns {ConnectAgentState}
     *
     * @throws {Error}
     *
     * @example
     * let currentState = ac.Utils.Agent.getAgentState();
     */
    getAgentState: () => {
      try {
        return _getAgent().getState();
      } catch (err) {
        throw ac.Utils.Common.buildError('getAgentState error: ' + err.message);
      }
    },

    /**
     * Sets the agent state by agent state object.
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {Object} args.state - The requested agent state
     *
     * @returns {Promise<Object|Error>}
     */
    setAgentState: (args) =>
      new Promise((resolve, reject) => {
        try {
          _getAgent().setState(args.state, {
            success: (data) => resolve(data),
            failure: (err) => {
              reject(ac.Utils.Common.buildReject('setAgentState error', err));
            },
          });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('setAgentState error', err));
        }
      }),

    /**
     * Sets the agent state by name.
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.stateName - The state name
     *
     * @returns {Promise<Object|Error>}
     */
    setAgentStateByName: async (args) => {
      let availableStates, state;

      try {
        availableStates = await ac.Utils.Agent.getAvailableAgentStates();

        if (availableStates && Object.keys(availableStates).length > 0) {
          state = availableStates[args.stateName];

          if (state) {
            return ac.Utils.Agent.setAgentState(state);
          }
        }
      } catch (err) {
        ac.Utils.Log.error('setAgentStateByName error', err);
      }
    },

    /**
     * Sets the agent state to Available.
     *
     * @static
     * @async
     *
     * @returns {Promise<Object|Error>}
     *
     * @example
     * ac.Utils.Agent.setAgentAvailable();
     */
    setAgentAvailable: () =>
      new Promise((resolve, reject) => {
        try {
          const agentState = _getAgent()
            .getAgentStates()
            .find((item) => item.name === 'Available');

          _getAgent().setState(agentState, {
            success: async (data) => {
              await ac.Utils.Agent.setAgentState(agentState);
              resolve(data);
            },
            failure: (err) => {
              reject(
                ac.Utils.Common.buildReject('setAgentAvailable error', err)
              );
            },
          });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('setAgentAvailable error', err));
        }
      }),

    /**
     * Gets all of the available agent states including custom states.
     *
     * @static
     * @async
     *
     * @returns {Promise<Array|Error>}
     *
     * @example
     * let availableStates = await ac.Utils.Agent.getAvailableStates();
     */
    getAvailableAgentStates: () =>
      new Promise((resolve, reject) => {
        try {
          let states = _getAgent()
            .getAgentStates()
            .map((state) => {
              return {
                key: state.name,
                value: state,
              };
            });

          resolve(
            Object.assign({}, ...states.map((s) => ({ [s.key]: s.value })))
          );
        } catch (err) {
          reject(
            ac.Utils.Common.buildReject('getAvailableAgentStates error', err)
          );
        }
      }),

    /**
     * Gets the agent's user friendly display name for the agent.
     *
     * @static
     *
     * @returns {String}
     *
     * @example
     * let agentName = ac.Utils.Agent.getName();
     */
    getName: () => {
      return _getAgent().getName();
    },

    /**
     * Gets the agent's phone number from the AgentConfiguration object for the agent. This is the phone number
     * that is dialed by Amazon Connect to connect calls to the agent for incoming and outgoing calls if softphone
     * is not enabled.
     *
     * @static
     *
     * @returns {String}
     *
     * @example
     * let agentExtension = ac.Utils.Agent.getExtension();
     */
    getExtension: () => {
      return _getAgent().getExtension();
    },

    /**
     * Gets the current agent's configuration
     *
     * @static
     *
     * @returns {ConnectAgentConfiguration}
     *
     * @example
     * let agentConfig = ac.Utils.Agent.getConfiguration();
     */
    getConfiguration: () => {
      return _getAgent().getConfiguration();
    },

    /**
     * Sets the current agent's configuration
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {Map<String, Object>} args.newConfig - The requested (new) agent configuration
     *
     * @returns {Promise<Object|Error>}
     */
    setConfiguration: (args) =>
      new Promise((resolve, reject) => {
        try {
          _getAgent().setConfiguration(args.newConfig, {
            success: (data) => resolve(data),
            failure: (err) => {
              reject(
                ac.Utils.Common.buildReject('Failed to set configuration', err)
              );
            },
          });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('setConfiguration error', err));
        }
      }),

    /**
     * Gets the current agent's configured desktop phone number
     *
     * @static
     *
     * @returns {String}
     *
     * @throws {Error}
     *
     * @example
     * let phoneNumber = ac.Utils.Agent.getAgentDeskphoneNumber();
     */
    getAgentDeskphoneNumber: () => {
      return _getAgent().getConfiguration().extension;
    },

    /**
     * Returns whether or not the current agent is softphone mode enabled.
     *
     * @static
     *
     * @returns {Boolean}
     *
     * @throws {Error}
     *
     * @example
     * let isSoftphoneEnabled = ac.Utils.Agent.isAgentSoftphoneEnabled();
     */
    isAgentSoftphoneEnabled: () => {
      return _getAgent().getConfiguration().softphoneEnabled;
    },

    /**
     * Changes the current agent to softphone mode.
     *
     * @static
     * @async
     *
     * @returns {Promise<Object|Error>}
     *
     * @example
     * ac.Utils.Agent.changeToSoftPhone();
     *
     * @example
     * await ac.Utils.Agent.changeToSoftPhone();
     */
    changeToSoftPhone: () =>
      new Promise((resolve, reject) => {
        let newConfig = _getAgent().getConfiguration();

        newConfig.softphoneEnabled = true;

        _getAgent().setConfiguration(newConfig, {
          success: function (data) {
            resolve(data);
          },
          failure: function (err) {
            reject(
              ac.Utils.Common.buildReject('Failed to change to softphone', err)
            );
          },
        });
      }),

    /**
     * Changes the current agent to desktop phone mode with the specified phone number.
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.phoneNumber - THe phone number to use in desk phone mode
     *
     * @throws {Error}
     *
     * @example
     * ac.Utils.Agent.changeToDeskphone({});
     *
     * @example
     * ac.Utils.Agent.changeToDeskphone({ phoneNumber: '+18885551212' });
     *
     * @example
     * await ac.Utils.Agent.changeToDeskphone({});
     *
     * @example
     * await ac.Utils.Agent.changeToDeskphone({ phoneNumber: '+18885551212' });
     */
    changeToDeskphone: (args) =>
      new Promise((resolve, reject) => {
        try {
          let newConfig = _getAgent.getConfiguration();

          newConfig.softphoneEnabled = false;

          if (phoneNumber) {
            newConfig.extension = args.phoneNumber;
          }

          _getAgent().setConfiguration(newConfig, {
            success: function (data) {
              resolve(data);
            },
            failure: function (err) {
              reject(
                ac.Utils.Common.buildReject(
                  'Failed to change to deskphone',
                  err
                )
              );
            },
          });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('changeToDeskphone error', err));
        }
      }),

    /**
     * Gets the list of dialable countries for the current agent.
     *
     * @static
     *
     * @returns {Array<String>}
     *
     * @throws {Error}
     *
     * @example
     * let countries = ac.Utils.Agent.getDialableCountries();
     */
    getDialableCountries: () => {
      try {
        return _getAgent().getConfiguration().dialableCountries;
      } catch (err) {
        throw ac.Utils.Common.buildError(
          'getDialableCountries error: ' + err.message
        );
      }
    },

    /**
     * Gets all of the current contacts of the specified type.
     *
     * @static
     *
     * @param {Object} args
     * @param {String} args.type - The type of contact to filter upon (VOICE, CHAT)
     *
     * @returns {Array<ConnectContact>}
     *
     * @example
     * let voiceContacts = ac.Utils.Agent.getContacts({ type: 'VOICE' });
     *
     * @example
     * let chatContacts = ac.Utils.Agent.getContacts({ type: 'CHAT' });
     */
    getContacts: (args) => {
      try {
        if (args.type) {
          return _getAgent().getContacts(args.type);
        } else {
          return _getAgent().getContacts();
        }
      } catch (err) {
        throw ac.Utils.Common.buildError('getContacts error: ' + err.message);
      }
    },

    /**
     * Gets the current agent
     *
     * @static
     *
     * @returns {e}
     *
     * @example
     * let agent = ac.Utils.Agent.getAgent();
     */
    getAgent: () => {
      return _getAgent();
    },

    /**
     * Sets the agent to offline and logs out of Connect and the AWS console
     *
     * @static
     *
     * @returns {Promise<void>}
     *
     * @example
     * ac.Utils.Agent.logout();
     *
     * @example
     * await ac.Utils.Agent.logout();
     */
    logout: async () => {
      try {
        await ac.Utils.Salesforce.hideSoftphonePanel();
        await ac.Utils.Agent.setAgentStateByName('Offline');
      } catch (err) {
        ac.Utils.Log.error(err);
      }

      const connectLogoutUrl = ac.Utils.Common.getProperty({
        key: 'connectLogoutUrl',
      });
      let connectLogoutWindow =
        connectLogoutUrl &&
        window.open(
          String(connectLogoutUrl),
          'Connect Logout Window',
          'width=50, height=50'
        );

      const consoleLogoutUrl = ac.Utils.Common.getProperty({
        key: 'consoleLogoutUrl',
      });
      let consoleLogoutWindow =
        consoleLogoutUrl &&
        window.open(
          String(consoleLogoutUrl),
          'Console Logout Window',
          'width=50, height=50'
        );

      await ac.Utils.Common.delay(3000);

      window.location.reload();

      connectLogoutWindow && connectLogoutWindow.close();
      consoleLogoutWindow && consoleLogoutWindow.close();

      window.scrollTo(0, 0);
    },

    /**
     *
     * @returns {ConnectContact}
     */
    getVoiceContact: () => {
      let contacts = _getAgent().getContacts(connect.ContactType.VOICE);

      if (contacts && contacts.length === 1) {
        return contacts[0];
      }
    },

    /**
     *
     * @returns {Array<ConnectContact>}
     */
    getChatContacts: () => {
      return _getAgent().getContacts({ type: connect.ContactType.CHAT });
    },

    /**
     *
     * @param agent
     *
     * @returns {Object}
     */
    expandAgent: (agent) => {
      let e = {};

      if (agent) {
        try {
          e.state = agent.getState();
        } catch (err) {}
        try {
          e.permissions = agent.getPermissions();
        } catch (err) {}
        try {
          e.configuration = agent.getConfiguration();
        } catch (err) {}
        try {
          e.name = agent.getName();
        } catch (err) {}
        try {
          e.extension = agent.getExtension();
        } catch (err) {}
        try {
          e.dialableCountries = agent.getDialableCountries();
        } catch (err) {}
      }

      return e;
    },

    /**
     *
     * @returns {Number}
     */
    getContactCount: () => {
      return _getAgent().getContacts().length;
    },
  };

  /**
   *
   * @private
   * @returns {ConnectAgent}
   */
  const _getAgent = () => {
    try {
      return new connect.Agent();
    } catch (err) {
      throw err;
    }
  };
})(this);
