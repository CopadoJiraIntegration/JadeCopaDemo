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
   *
   * @enum
   * @type {{INIT: string, SALESFORCE_UI: string, CONNECT_AGENT: string, CONNECT_CHAT_CONTACT: string, SALESFORCE_AGENT: string, CONNECT_VOICE_CONTACT: string}}
   */
  const SCRIPT_SOURCES = {
    INIT: 'init',
    CONNECT_AGENT: 'connectAgent',
    CONNECT_VOICE_CONTACT: 'connectVoiceContact',
    CONNECT_QUEUE_CALLBACK_CONTACT: 'connectQueueCallbackContact',
    CONNECT_CHAT_CONTACT: 'connectChatContact',
    SALESFORCE_AGENT: 'salesforceAgent',
    SALESFORCE_UI: 'salesforceUI',
  };

  /**
   *
   * @enum
   * @type {{ON_INCOMING: string, ON_CONNECTING: string, ON_NAVIGATION_CHANGE: string, ON_AFTER_CALL_WORK: string, ON_CLICK_TO_DIAL: string, ON_ACCEPTED: string, ON_ENDED: string, ON_REFRESH: string, ON_STATE_CHANGE: string, ON_WORK_ACCEPTED: string, ON_MESSAGE_SENT: string, INIT: string, ON_NOT_ROUTABLE: string, ON_OFFLINE: string, ON_ROUTABLE: string, ON_CONNECTED: string, ON_ERROR: string, ON_MESSAGE_RECEIVED: string, ON_WORKLOAD_CHANGED: string, ON_LOGOUT: string}}
   */
  const SCRIPT_EVENTS = {
    INIT: 'onInit', // connect agent + connect contact
    ON_CONTACT_PENDING: 'onContactPending', // connect agent
    ON_SOFTPHONE_ERROR: 'onSoftphoneError', // connect agent
    ON_INCOMING: 'onIncoming', // connect contact
    ON_CONNECTING: 'onConnecting', // connect contact
    ON_ACCEPTED: 'onAccepted', // connect contact
    ON_CONNECTED: 'onConnected', // connect contact
    ON_ENDED: 'onEnded', // connect contact
    ON_MISSED: 'onMissed', // connect contact
    ON_STATE_CHANGE: 'onStateChange', // connect agent + salesforce agent
    ON_REFRESH: 'onRefresh', // connect agent + connect contact
    ON_ROUTABLE: 'onRoutable', // connect agent
    ON_NOT_ROUTABLE: 'onNotRoutable', // connect agent
    ON_OFFLINE: 'onOffline', // connect agent
    ON_ERROR: 'onError', // connect agent
    ON_AFTER_CALL_WORK: 'onAfterCallWork', // connect agent
    ON_WORK_ACCEPTED: 'onWorkAccepted', // salesforce agent
    ON_WORK_CLOSED: 'onWorkClosed', // salesforce agent
    ON_WORKLOAD_CHANGED: 'onWorkloadChanged', // salesforce agent
    ON_LOGOUT: 'onLogout', // salesforce agent,
    ON_CLICK_TO_DIAL: 'onClickToDial',
    ON_NAVIGATION_CHANGE: 'onNavigationChange', // salesforce ui
    ON_HVS_WORK_START: 'onHvsWorkStart', // salesforce ui
    ON_MESSAGE_RECEIVED: 'onMessageReceived', // connect chat contact
    ON_MESSAGE_SENT: 'onMessageSent', // connect chat contact
    ON_PENDING: 'onPending', // connect contact
  };

  /**
   * @class ac.Utils.CtiUtils
   * @memberOf ac.Utils
   *
   * @description
   * The ac.Utils.Utils class provides helper methods for cti integration.
   */
  ac.Utils.Cti = {
    /**
     * Initializes the ac.Utils.CtiUtils utility
     *
     * @private
     */
    init: () => {
      connect.core.onViewContact(async (event) => {
        ac.Utils.Log.info({ message: '********** Core onViewContact' });
        ac.Utils.Common.setProperty({
          key: 'currentContactId',
          value: event.contactId,
        });
        await ac.Utils.CtiAttributes.populate(event.contactId);
      });

      connect.agent(async (agent) => {
        ac.Utils.Log.info({ message: '********** Agent init' });
        await ac.Utils.Common.connectAgentOnInit(agent);
        await ac.AC_ScriptBuilder.execute(
          _buildExecutionPayload(
            SCRIPT_SOURCES.CONNECT_AGENT,
            SCRIPT_EVENTS.INIT,
            { agent: agent }
          )
        );

        const contacts = agent.getContacts();
        if (contacts.length > 0) {
          for (const contact of contacts) {
            ac.Utils.Common.setProperty({
              key: `contacts.${contact.getContactId()}`,
              value: ac.Utils.Contact.expandContact(contact),
            });
          }

          // onViewContact (which loads attributes) does not invoke
          // when screen is refreshed, so we must manually invoke it here
          connect.core.viewContact(contacts[0].getContactId());
        }

        agent.onStateChange(async (agentStateChange) => {
          ac.Utils.Log.info({ message: '********** Agent onStateChange' });
          await ac.Utils.Common.connectAgentOnStateChange(agentStateChange);
          await ac.AC_ScriptBuilder.execute(
            _buildExecutionPayload(
              SCRIPT_SOURCES.CONNECT_AGENT,
              SCRIPT_EVENTS.ON_STATE_CHANGE,
              { agent: agent, agentStateChange: agentStateChange }
            )
          );
        });

        agent.onContactPending(async (agent) => {
          ac.Utils.Log.info({ message: '********** Agent onContactPending' });
          await ac.Utils.Common.connectAgentOnContactPending(agent);
          await ac.AC_ScriptBuilder.execute(
            _buildExecutionPayload(
              SCRIPT_SOURCES.CONNECT_AGENT,
              SCRIPT_EVENTS.ON_CONTACT_PENDING,
              { agent: agent }
            )
          );
        });

        agent.onSoftphoneError(async (agent) => {
          ac.Utils.Log.info({ message: '********** Agent onSoftphoneError' });
          await ac.Utils.Common.connectAgentOnSoftphoneError(agent);
          await ac.AC_ScriptBuilder.execute(
            _buildExecutionPayload(
              SCRIPT_SOURCES.CONNECT_AGENT,
              SCRIPT_EVENTS.ON_SOFTPHONE_ERROR,
              { agent: agent }
            )
          );
        });

        agent.onRoutable(async (agent) => {
          ac.Utils.Log.info({ message: '********** Agent onRoutable' });
          await ac.Utils.Common.connectAgentOnRoutable(agent);
          await ac.AC_ScriptBuilder.execute(
            _buildExecutionPayload(
              SCRIPT_SOURCES.CONNECT_AGENT,
              SCRIPT_EVENTS.ON_ROUTABLE,
              { agent: agent }
            )
          );
        });

        agent.onNotRoutable(async (agent) => {
          ac.Utils.Log.info({ message: '********** Agent onNotRoutable' });
          await ac.Utils.Common.connectAgentOnNotRoutable(agent);
          await ac.AC_ScriptBuilder.execute(
            _buildExecutionPayload(
              SCRIPT_SOURCES.CONNECT_AGENT,
              SCRIPT_EVENTS.ON_NOT_ROUTABLE,
              { agent: agent }
            )
          );
        });

        agent.onOffline(async (agent) => {
          ac.Utils.Log.info({ message: '********** Agent onOffline' });
          await ac.Utils.Common.connectAgentOnOffline(agent);
          await ac.AC_ScriptBuilder.execute(
            _buildExecutionPayload(
              SCRIPT_SOURCES.CONNECT_AGENT,
              SCRIPT_EVENTS.ON_OFFLINE,
              { agent: agent }
            )
          );
        });

        agent.onAfterCallWork(async (agent) => {
          ac.Utils.Log.info({ message: '********** Agent onAfterCallWork' });
          await ac.Utils.Common.connectAgentOnAfterCallWork(agent);
          await ac.AC_ScriptBuilder.execute(
            _buildExecutionPayload(
              SCRIPT_SOURCES.CONNECT_AGENT,
              SCRIPT_EVENTS.ON_AFTER_CALL_WORK,
              { agent: agent }
            )
          );
        });

        agent.onError(async (agent) => {
          ac.Utils.Log.info({ message: '********** Agent onError' });
          await ac.Utils.Common.connectAgentOnError(agent);
          await ac.AC_ScriptBuilder.execute(
            _buildExecutionPayload(
              SCRIPT_SOURCES.CONNECT_AGENT,
              SCRIPT_EVENTS.ON_ERROR,
              { agent: agent }
            )
          );
        });
      });

      connect.contact(async (contact) => {
        ac.Utils.Log.info({ message: '########## Contact init' });
        try {
          if (contact) {
            ac.Utils.Log.info({
              message: `${contact.contactId} - ${contact.getType()}`,
            });
            contact.onRefresh(async (contact) => {
              ac.Utils.Log.info({ message: '########## Contact onRefresh' });
              if (contact) {
                await ac.Utils.Common.connectContactOnRefresh(contact);
              }
            });
            contact.onAccepted(async (contact) => {
              ac.Utils.Log.info({ message: '########## Contact onAccepted' });
              if (contact) {
                if (!contact.getType) {
                  console.log('---- contact: ', contact);
                }
                // FIXME: contact.getType is not a function.
                const contactType = contact.getType ? contact.getType() : null;
                if (contactType === connect.ContactType.VOICE) {
                  await ac.Utils.Common.connectVoiceContactOnAccepted(contact);
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_VOICE_CONTACT,
                      SCRIPT_EVENTS.ON_ACCEPTED,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                } else if (contactType === connect.ContactType.QUEUE_CALLBACK) {
                  await ac.Utils.Common.connectQueueCallbackContactOnAccepted(
                    contact
                  );
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT,
                      SCRIPT_EVENTS.ON_ACCEPTED,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                } else if (contactType === connect.ContactType.CHAT) {
                  await ac.Utils.Common.connectChatContactOnAccepted(contact);
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_CHAT_CONTACT,
                      SCRIPT_EVENTS.ON_ACCEPTED,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                }
              }
            });
            contact.onPending(async (contact) => {
              ac.Utils.Log.info({ message: '########## Contact onPending' });
              if (contact) {
                if (contact.getType() === connect.ContactType.VOICE) {
                  await ac.Utils.Common.connectVoiceContactOnPending(contact);
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_VOICE_CONTACT,
                      SCRIPT_EVENTS.ON_PENDING,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                } else if (
                  contact.getType() === connect.ContactType.QUEUE_CALLBACK
                ) {
                  await ac.Utils.Common.connectQueueCallbackContactOnPending(
                    contact
                  );
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT,
                      SCRIPT_EVENTS.ON_PENDING,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                } else if (contact.getType() === connect.ContactType.CHAT) {
                  await ac.Utils.Common.connectChatContactOnPending(contact);
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_CHAT_CONTACT,
                      SCRIPT_EVENTS.ON_PENDING,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                }
              }
            });
            contact.onIncoming(async (contact) => {
              ac.Utils.Log.info({ message: '########## Contact onIncoming' });
              if (contact) {
                if (contact.getType() === connect.ContactType.QUEUE_CALLBACK) {
                  await ac.Utils.Common.connectQueueCallbackContactOnIncoming(
                    contact
                  );
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT,
                      SCRIPT_EVENTS.ON_INCOMING,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                }
              }
            });
            contact.onConnecting(async (contact) => {
              ac.Utils.Log.info({ message: '########## Contact onConnecting' });
              if (contact) {
                try {
                  if (contact.getType() === connect.ContactType.VOICE) {
                    await ac.Utils.Common.connectVoiceContactOnConnecting(
                      contact
                    );
                    const payload = _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_VOICE_CONTACT,
                      SCRIPT_EVENTS.ON_CONNECTING,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    );
                    await ac.AC_ScriptBuilder.execute(payload);
                  } else if (
                    contact.getType() === connect.ContactType.QUEUE_CALLBACK
                  ) {
                    await ac.Utils.Common.connectQueueCallbackContactOnConnecting(
                      contact
                    );
                    await ac.AC_ScriptBuilder.execute(
                      _buildExecutionPayload(
                        SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT,
                        SCRIPT_EVENTS.ON_CONNECTING,
                        { contact: contact, agent: ac.Utils.Agent.getAgent() }
                      )
                    );
                  } else if (contact.getType() === connect.ContactType.CHAT) {
                    await ac.Utils.Common.connectChatContactOnConnecting(
                      contact
                    );
                    await ac.AC_ScriptBuilder.execute(
                      _buildExecutionPayload(
                        SCRIPT_SOURCES.CONNECT_CHAT_CONTACT,
                        SCRIPT_EVENTS.ON_CONNECTING,
                        { contact: contact, agent: ac.Utils.Agent.getAgent() }
                      )
                    );
                  }
                } catch (e) {
                  ac.Utils.Log.debug({
                    message: `########## ERROR: Contact onConnecting: ${e}`,
                  });
                  console.error(e);
                }
              }
            });
            contact.onConnected(async (contact) => {
              ac.Utils.Log.info({ message: '########## Contact onConnected' });
              if (contact) {
                if (contact.getType() === connect.ContactType.VOICE) {
                  await ac.Utils.Common.connectVoiceContactOnConnected(contact);
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_VOICE_CONTACT,
                      SCRIPT_EVENTS.ON_CONNECTED,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                } else if (
                  contact.getType() === connect.ContactType.QUEUE_CALLBACK
                ) {
                  await ac.Utils.Common.connectQueueCallbackContactOnConnected(
                    contact
                  );
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT,
                      SCRIPT_EVENTS.ON_CONNECTED,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                } else if (contact.getType() === connect.ContactType.CHAT) {
                  await ac.Utils.Common.connectChatContactOnConnected(contact);
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_CHAT_CONTACT,
                      SCRIPT_EVENTS.ON_CONNECTED,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                  contact
                    .getAgentConnection()
                    .getMediaController()
                    .then((controller) => {
                      controller.onMessage(async (msg) => {
                        let payload = {
                          contactId: msg.data.ContactId,
                          initialContactId: msg.data.InitialContactId,
                          displayName: msg.data.DisplayName,
                          participantRole: msg.data.ParticipantRole,
                          participantId: msg.data.ParticipantId,
                          content: msg.data.Content,
                        };
                        if (
                          msg.chatDetails.participantId ===
                          msg.data.ParticipantId
                        ) {
                          ac.Utils.Log.info({
                            message: '########## Chat onMessageSent',
                          });
                          await ac.AC_ScriptBuilder.execute(
                            _buildExecutionPayload(
                              SCRIPT_SOURCES.CONNECT_CHAT_CONTACT,
                              SCRIPT_EVENTS.ON_MESSAGE_SENT,
                              {
                                payload: payload,
                                contact: contact,
                                agent: ac.Utils.Agent.getAgent(),
                              }
                            )
                          );
                        } else {
                          ac.Utils.Log.info({
                            message: '########## Chat onMessageReceived',
                          });
                          await ac.AC_ScriptBuilder.execute(
                            _buildExecutionPayload(
                              SCRIPT_SOURCES.CONNECT_CHAT_CONTACT,
                              SCRIPT_EVENTS.ON_MESSAGE_RECEIVED,
                              {
                                payload: payload,
                                contact: contact,
                                agent: ac.Utils.Agent.getAgent(),
                              }
                            )
                          );
                        }
                      });
                    });
                }
              }
            });
            contact.onEnded(async (contact) => {
              ac.Utils.Log.info({ message: '########## Contact onEnded' });
              if (contact) {
                if (contact.getType() === connect.ContactType.VOICE) {
                  await ac.Utils.Common.connectVoiceContactOnEnded(contact);
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_VOICE_CONTACT,
                      SCRIPT_EVENTS.ON_ENDED,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                } else if (
                  contact.getType() === connect.ContactType.QUEUE_CALLBACK
                ) {
                  await ac.Utils.Common.connectQueueCallbackContactOnEnded(
                    contact
                  );
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT,
                      SCRIPT_EVENTS.ON_ENDED,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                } else if (contact.getType() === connect.ContactType.CHAT) {
                  await ac.Utils.Common.connectChatContactOnEnded(contact);
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_CHAT_CONTACT_CONTACT,
                      SCRIPT_EVENTS.ON_ENDED,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                }
              }
            });

            contact.onDestroy(async (contact) => {
              ac.Utils.Log.info({ message: '########## Contact onDestroy' });
              ac.Utils.CtiAttributes.depopulate();
            });

            contact.onMissed(async (contact) => {
              ac.Utils.Log.info({ message: '########## Contact onMissed' });
              if (contact) {
                if (contact.getType() === connect.ContactType.VOICE) {
                  await ac.Utils.Common.connectVoiceContactOnMissed(contact);
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_VOICE_CONTACT,
                      SCRIPT_EVENTS.ON_MISSED,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                } else if (
                  contact.getType() === connect.ContactType.QUEUE_CALLBACK
                ) {
                  await ac.Utils.Common.connectQueueCallbackContactOnMissed(
                    contact
                  );
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT,
                      SCRIPT_EVENTS.ON_MISSED,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                } else if (contact.getType() === connect.ContactType.CHAT) {
                  await ac.Utils.Common.connectChatContactOnMissed(contact);
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_CHAT_CONTACT,
                      SCRIPT_EVENTS.ON_MISSED,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                }
              }
            });
            contact.onACW(async (contact) => {
              ac.Utils.Log.info({ message: '########## Contact onACW' });
              if (contact) {
                if (contact.getType() === connect.ContactType.VOICE) {
                  await ac.Utils.Common.connectVoiceContactOnAfterCallWork(
                    contact
                  );
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_VOICE_CONTACT,
                      SCRIPT_EVENTS.ON_AFTER_CALL_WORK,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                } else if (
                  contact.getType() === connect.ContactType.QUEUE_CALLBACK
                ) {
                  await ac.Utils.Common.connectQueueCallbackContactOnAfterCallWork(
                    contact
                  );
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT,
                      SCRIPT_EVENTS.ON_AFTER_CALL_WORK,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                } else if (contact.getType() === connect.ContactType.CHAT) {
                  await ac.Utils.Common.connectChatContactOnAfterCallWork(
                    contact
                  );
                  await ac.AC_ScriptBuilder.execute(
                    _buildExecutionPayload(
                      SCRIPT_SOURCES.CONNECT_CHAT_CONTACT,
                      SCRIPT_EVENTS.ON_AFTER_CALL_WORK,
                      { contact: contact, agent: ac.Utils.Agent.getAgent() }
                    )
                  );
                }
              }
            });
          }
        } catch (err) {
          ac.Utils.Log.error({ message: 'Contact Error', exception: err });
        }
      });

      if (ac.Utils.Common.isLightning() || ac.Utils.Common.isConsole()) {
        sforce &&
          sforce.console &&
          sforce.console.addEventListener(
            sforce.console.ConsoleEvent.PRESENCE.STATUS_CHANGED,
            async (payload) => {
              await ac.Utils.Common.salesforcePresencesStatusChanged(payload);
              await ac.AC_ScriptBuilder.execute(
                _buildExecutionPayload(
                  SCRIPT_SOURCES.SALESFORCE_AGENT,
                  SCRIPT_EVENTS.ON_STATE_CHANGE,
                  {
                    payload: payload,
                    agent: ac.Utils.Agent.getAgent(),
                  }
                )
              );
            }
          );
      }

      if (ac.Utils.Common.isLightning() || ac.Utils.Common.isConsole()) {
        sforce &&
          sforce.console &&
          sforce.console.addEventListener(
            sforce.console.ConsoleEvent.PRESENCE.LOGOUT,
            async (payload) => {
              await ac.Utils.Common.salesforcePresenceLogout(payload);
              await ac.AC_ScriptBuilder.execute(
                _buildExecutionPayload(
                  SCRIPT_SOURCES.SALESFORCE_AGENT,
                  SCRIPT_EVENTS.ON_LOGOUT,
                  {
                    payload: payload,
                    agent: ac.Utils.Agent.getAgent(),
                  }
                )
              );
            }
          );
      }

      if (ac.Utils.Common.isLightning() || ac.Utils.Common.isConsole()) {
        sforce &&
          sforce.console &&
          sforce.console.addEventListener(
            sforce.console.ConsoleEvent.PRESENCE.WORKLOAD_CHANGED,
            async (payload) => {
              await ac.Utils.Common.salesforcePresenceWorkloadChanged(payload);
              await ac.AC_ScriptBuilder.execute(
                _buildExecutionPayload(
                  SCRIPT_SOURCES.SALESFORCE_AGENT,
                  SCRIPT_EVENTS.ON_WORKLOAD_CHANGED,
                  {
                    payload: payload,
                    agent: ac.Utils.Agent.getAgent(),
                  }
                )
              );
            }
          );
      }

      if (ac.Utils.Common.isLightning() || ac.Utils.Common.isConsole()) {
        sforce &&
          sforce.console &&
          sforce.console.addEventListener(
            sforce.console.ConsoleEvent.PRESENCE.WORK_ACCEPTED,
            async (payload) => {
              await ac.Utils.Common.salesforcePresenceWorkAccepted(payload);
              await ac.AC_ScriptBuilder.execute(
                _buildExecutionPayload(
                  SCRIPT_SOURCES.SALESFORCE_AGENT,
                  SCRIPT_EVENTS.ON_WORK_ACCEPTED,
                  {
                    payload: payload,
                    agent: ac.Utils.Agent.getAgent(),
                  }
                )
              );
            }
          );
      }

      if (ac.Utils.Common.isLightning() || ac.Utils.Common.isConsole()) {
        sforce &&
          sforce.console &&
          sforce.console.addEventListener(
            sforce.console.ConsoleEvent.PRESENCE.WORK_CLOSED,
            async (payload) => {
              await ac.Utils.Common.salesforcePresenceWorkClosed(payload);
              await ac.AC_ScriptBuilder.execute(
                _buildExecutionPayload(
                  SCRIPT_SOURCES.SALESFORCE_AGENT,
                  SCRIPT_EVENTS.ON_WORK_CLOSED,
                  {
                    payload: payload,
                    agent: ac.Utils.Agent.getAgent(),
                  }
                )
              );
            }
          );
      }

      if (ac.Utils.Common.isLightning()) {
        sforce &&
          sforce.opencti &&
          sforce.opencti.onClickToDial({
            listener: async (payload) => {
              await ac.Utils.Common.salesforceOnClickToDial(payload);
              await ac.AC_ScriptBuilder.execute(
                _buildExecutionPayload(
                  SCRIPT_SOURCES.SALESFORCE_UI,
                  SCRIPT_EVENTS.ON_CLICK_TO_DIAL,
                  {
                    payload: payload,
                    agent: ac.Utils.Agent.getAgent(),
                  }
                )
              );
            },
          });
      }

      if (ac.Utils.Common.isClassic() || ac.Utils.Common.isConsole()) {
        sforce &&
          sforce.interaction &&
          sforce.interaction.cti &&
          sforce.interaction.cti.onClickToDial(async (payload) => {
            // Reformat payload to match sforce.opencti.onClickToDial payload
            let result = JSON.parse(payload.result);

            let p = {
              number: result.number,
              recordId: result.objectId,
              recordName: result.displayName,
              objectType: result.objectName,
              personAccount: result.personAccount,
            };

            await ac.Utils.Common.salesforceOnClickToDial(p);
            await ac.AC_ScriptBuilder.execute(
              _buildExecutionPayload(
                SCRIPT_SOURCES.SALESFORCE_UI,
                SCRIPT_EVENTS.ON_CLICK_TO_DIAL,
                {
                  payload: p,
                  agent: ac.Utils.Agent.getAgent(),
                }
              )
            );
          });
      }

      if (ac.Utils.Common.isLightning()) {
        sforce &&
          sforce.console &&
          sforce.opencti.onNavigationChange({
            listener: async (payload) => {
              await ac.Utils.Common.salesforceNavigationChange(payload);
              await ac.AC_ScriptBuilder.execute(
                _buildExecutionPayload(
                  SCRIPT_SOURCES.SALESFORCE_UI,
                  SCRIPT_EVENTS.ON_NAVIGATION_CHANGE,
                  {
                    payload: payload,
                    agent: ac.Utils.Agent.getAgent(),
                  }
                )
              );
            },
          });
      }

      if (ac.Utils.Common.isLightning()) {
        sforce &&
          sforce.opencti &&
          sforce.opencti.hvs &&
          sforce.opencti.hvs.onWorkStart({
            listener: async (payload) => {
              await ac.Utils.Common.salesforceHvsWorkStart(payload);
              await ac.AC_ScriptBuilder.execute(
                _buildExecutionPayload(
                  SCRIPT_SOURCES.SALESFORCE_UI,
                  SCRIPT_EVENTS.ON_HVS_WORK_START,
                  {
                    payload: payload,
                    agent: ac.Utils.Agent.getAgent(),
                  }
                )
              );
            },
          });
      }
    },
  };

  /**
   *
   * @param {SCRIPT_SOURCES} source
   * @param {SCRIPT_EVENTS} event
   * @param {Object} params
   * @returns {{source: *, event: *, params: *}}
   * @private
   */
  const _buildExecutionPayload = (source, event, params) => {
    return {
      source: source,
      event: event,
      params: params,
    };
  };
})(this);
