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

(function(ac) {
    if (ac.Utils === undefined) {
        ac.Utils = {};
    }

    /**
     *
     * @private
     *
     * @type {Map}
     */
    let _props = {};

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
        SALESFORCE_UI: 'salesforceUI'
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
        ON_PENDING: 'onPending' // connect contact
    };

    /**
     *
     * @enum
     * @type {{INBOUND: string, OUTBOUND: string}}
     */
    const SCRIPT_TYPES = {
        INBOUND: 'ac_inbound',
        OUTBOUND: 'ac_outbound'
    };

    /**
     * @private
     *
     * @class ac.Utils.Script
     * @memberOf ac.Utils
     *
     * @namespace ac.Utils.Script
     */
    ac.Utils.Script = {
        /**
         *
         * @private
         *
         * @param props
         *
         * @returns {Promise<void>}
         */
        init: async (props) => {
            _props = props;
        },

        /**
         *
         * @param ctiScripts
         *
         * @returns {string}
         */
        getFinalScript: (ctiScripts) => {
            let finalScript = '';

            finalScript += '(function (ac) {';

            finalScript += _getProcessedScripts(ctiScripts, SCRIPT_SOURCES.INIT, SCRIPT_EVENTS.INIT);

            // Generate Agent portion
            let agentTemplate =
                `
                connect.agent((agent) => {
                    ac.Utils.Common.connectAgentOnInit(agent);
                    ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_AGENT, SCRIPT_EVENTS.INIT)}
                    
                    agent.onStateChange( async (agentStateChange) => {
                        ac.Utils.Common.connectAgentOnStateChange(agentStateChange);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_AGENT, SCRIPT_EVENTS.ON_STATE_CHANGE)}
                    });
                    
                    agent.onContactPending(async(agent) => {
                        ac.Utils.Common.connectAgentOnContactPending(agent);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_AGENT, SCRIPT_EVENTS.ON_CONTACT_PENDING)}
                    });
                    
                     agent.onSoftphoneError(async(agent) => {
                        ac.Utils.Common.connectAgentOnSoftphoneError(agent);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_AGENT, SCRIPT_EVENTS.ON_SOFTPHONE_ERROR)}
                    });
                    
                    agent.onRefresh(async (agent) => {
                        ac.Utils.Common.connectAgentOnRefresh(agent);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_AGENT, SCRIPT_EVENTS.ON_REFRESH)}
                    });
                    
                    agent.onRoutable(async (agent) => {
                        ac.Utils.Common.connectAgentOnRoutable(agent);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_AGENT, SCRIPT_EVENTS.ON_ROUTABLE)}
                    });
                    
                    agent.onNotRoutable(async (agent) => {
                        ac.Utils.Common.connectAgentOnNotRoutable(agent);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_AGENT, SCRIPT_EVENTS.ON_NOT_ROUTABLE)}
                    });
                    
                    agent.onOffline(async (agent) => {
                        ac.Utils.Common.connectAgentOnOffline(agent);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_AGENT, SCRIPT_EVENTS.ON_OFFLINE)}
                    });
                    
                     agent.onAfterCallWork(async (agent) => {
                        ac.Utils.Common.connectAgentOnAfterCallWork(agent);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_AGENT, SCRIPT_EVENTS.ON_AFTER_CALL_WORK)}
                    });
                    
                    agent.onError(async (agent) => {
                        ac.Utils.Common.connectAgentOnError(agent);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_AGENT, SCRIPT_EVENTS.ON_ERROR)}
                    });
                });
                `;

            finalScript += agentTemplate;

            // Generate Contact portion
            let contactTemplate =
                `
                connect.contact(async (contact) => {
                    if (contact) {
                        if (contact.getType() === connect.ContactType.VOICE) {
                            ac.Utils.Common.connectVoiceContactOnInit(contact);
                            ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_VOICE_CONTACT, SCRIPT_EVENTS.INIT)}
                        }
                        else if (contact.getType() === connect.ContactType.QUEUE_CALLBACK) {
                            ac.Utils.Common.connectQueueCallbackContactOnInit(contact);
                            ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT, SCRIPT_EVENTS.INIT)}
                        }
                        else if (contact.getType() === connect.ContactType.CHAT) {
                            ac.Utils.Common.connectChatContactOnInit(contact);
                            ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_CHAT_CONTACT, SCRIPT_EVENTS.INIT)}
                        }
                    }
                    else {
                        ac.Utils.Log.error('contact.init -> contact is null!!!');
                    }   
                    
                    contact.onPending(async (contact) => {
                        if (contact) {
                            if (contact.getType() === connect.ContactType.VOICE) {
                                ac.Utils.Common.connectVoiceContactOnPending(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_VOICE_CONTACT, SCRIPT_EVENTS.ON_PENDING)}
                            }   
                            else if (contact.getType() === connect.ContactType.QUEUE_CALLBACK) {
                                ac.Utils.Common.connectQueueCallbackContactOnPending(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT, SCRIPT_EVENTS.ON_PENDING)}
                            }     
                            else if (contact.getType() === connect.ContactType.CHAT) {
                                ac.Utils.Common.connectChatContactOnPending(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_CHAT_CONTACT, SCRIPT_EVENTS.ON_PENDING)}
                            }  
                        }
                        else {
                            ac.Utils.Log.error('contact.onPending -> contact is null!!!');
                        }      
                    });
                    
                    contact.onIncoming(async (contact) => {
                        if (contact) {
                            if (contact.getType() === connect.ContactType.QUEUE_CALLBACK) {
                                ac.Utils.Common.connectQueueCallbackContactOnIncoming(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT, SCRIPT_EVENTS.ON_INCOMING)}
                            }    
                        }
                        else {
                            ac.Utils.Log.error('contact.onIncoming -> contact is null!!!');
                        }      
                    });
                    
                    contact.onConnecting(async (contact) => {
                        if (contact) {
                            if (contact.getType() === connect.ContactType.VOICE) {
                                ac.Utils.Common.connectVoiceContactOnConnecting(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_VOICE_CONTACT, SCRIPT_EVENTS.ON_CONNECTING)}
                            }
                            else if (contact.getType() === connect.ContactType.QUEUE_CALLBACK) {
                                ac.Utils.Common.connectQueueCallbackContactOnConnecting(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT, SCRIPT_EVENTS.ON_CONNECTING)}
                            }
                            else if (contact.getType() === connect.ContactType.CHAT) {
                                ac.Utils.Common.connectChatContactOnConnecting(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_CHAT_CONTACT, SCRIPT_EVENTS.ON_CONNECTING)}
                            }
                        }
                        else {
                            ac.Utils.Log.error('contact.onConnecting -> contact is null!!!');
                        }    
                    });
                    
                    contact.onAccepted(async (contact) => {
                        if (contact) {
                            if (contact.getType() === connect.ContactType.VOICE) {
                                ac.Utils.Common.connectVoiceContactOnAccepted(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_VOICE_CONTACT, SCRIPT_EVENTS.ON_ACCEPTED)}
                            }    
                            else if (contact.getType() === connect.ContactType.QUEUE_CALLBACK) {
                                ac.Utils.Common.connectQueueCallbackContactOnAccepted(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT, SCRIPT_EVENTS.ON_ACCEPTED)}
                            }    
                            else if (contact.getType() === connect.ContactType.CHAT) {
                                ac.Utils.Common.connectChatContactOnAccepted(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_CHAT_CONTACT, SCRIPT_EVENTS.ON_ACCEPTED)}
                            }
                        }
                        else {
                            ac.Utils.Log.error('contact.onAccepted -> contact is null!!!');
                        }    
                    });
                    
                    contact.onConnected(async (contact) => {
                        if (contact) {
                            if (contact.getType() === connect.ContactType.VOICE) {
                                ac.Utils.Common.connectVoiceContactOnConnected(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_VOICE_CONTACT, SCRIPT_EVENTS.ON_CONNECTED)}
                            }
                            else if (contact.getType() === connect.ContactType.QUEUE_CALLBACK) {
                                ac.Utils.Common.connectQueueCallbackContactOnConnected(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT, SCRIPT_EVENTS.ON_CONNECTED)}
                            }
                            else if (contact.getType() === connect.ContactType.CHAT) {
                                ac.Utils.Common.connectChatContactOnConnected(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_CHAT_CONTACT, SCRIPT_EVENTS.ON_CONNECTED)}
                                
                                contact.getAgentConnection().getMediaController().then(controller => {
                                    controller.onMessage(async (msg) => {
                                        let message = {
                                            contactId: msg.data.ContactId,
                                            initialContactId: msg.data.InitialContactId,
                                            displayName: msg.data.DisplayName,
                                            participantRole: msg.data.ParticipantRole,
                                            content: msg.data.Content
                                        };
       
                                        if (msg.chatDetails.participantId === msg.data.ParticipantId) {
                                            ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_CHAT_CONTACT, SCRIPT_EVENTS.ON_MESSAGE_SENT)}    
                                        }
                                        else {
                                            ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_CHAT_CONTACT, SCRIPT_EVENTS.ON_MESSAGE_RECEIVED)}
                                        }
                                    })
                                });
                            }
                        }
                         else {
                            ac.Utils.Log.error('contact.onConnected -> contact is null!!!');
                        }    
                    });
                    
                    contact.onEnded(async (contact) => {
                        if (contact) {
                            if (contact.getType() === connect.ContactType.VOICE) {
                                ac.Utils.Common.connectVoiceContactOnEnded(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_VOICE_CONTACT, SCRIPT_EVENTS.ON_ENDED)}
                            } 
                            else if (contact.getType() === connect.ContactType.QUEUE_CALLBACK) {
                                ac.Utils.Common.connectQueueCallbackContactOnEnded(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT, SCRIPT_EVENTS.ON_ENDED)}
                            }       
                            else if (contact.getType() === connect.ContactType.CHAT) {
                                ac.Utils.Common.connectChatContactOnEnded(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_CHAT_CONTACT, SCRIPT_EVENTS.ON_ENDED)}
                            }
                        }
                         else {
                            ac.Utils.Log.error('contact.onEnded -> contact is null!!!');
                        }    
                    });
                    
                    contact.onMissed(async (contact) => {
                        if (contact) {
                            if (contact.getType() === connect.ContactType.VOICE) {
                                ac.Utils.Common.connectVoiceContactOnMissed(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_VOICE_CONTACT, SCRIPT_EVENTS.ON_MISSED)}
                            }  
                            else if (contact.getType() === connect.ContactType.QUEUE_CALLBACK) {
                                ac.Utils.Common.connectQueueCallbackContactOnMissed(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT, SCRIPT_EVENTS.ON_MISSED)}
                            }     
                            else if (contact.getType() === connect.ContactType.CHAT) {
                                ac.Utils.Common.connectChatContactOnMissed(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_CHAT_CONTACT, SCRIPT_EVENTS.ON_MISSED)}
                            }
                        }
                         else {
                            ac.Utils.Log.error('contact.onMissed -> contact is null!!!');
                        }    
                    });
                    
                    contact.onACW(async (contact) => {
                        if (contact) {
                            if (contact.getType() === connect.ContactType.VOICE) {
                                ac.Utils.Common.connectVoiceContactOnAfterCallWork(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_VOICE_CONTACT, SCRIPT_EVENTS.ON_AFTER_CALL_WORK)}
                            }  
                            else if (contact.getType() === connect.ContactType.QUEUE_CALLBACK) {
                                ac.Utils.Common.connectQueueCallbackContactOnAfterCallWork(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_QUEUE_CALLBACK_CONTACT, SCRIPT_EVENTS.ON_AFTER_CALL_WORK)}
                            }    
                            else if (contact.getType() === connect.ContactType.CHAT) {
                                ac.Utils.Common.connectChatContactOnAfterCallWork(contact);
                                ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.CONNECT_CHAT_CONTACT, SCRIPT_EVENTS.ON_AFTER_CALL_WORK)}
                            }
                        }
                         else {
                            ac.Utils.Log.error('contact.onACW -> contact is null!!!');
                        }    
                    });
                });
                `;

            finalScript += contactTemplate;

            // Generate Salesforce portion
            let salesforceTemplate =
                `
                sforce.console.addEventListener(
                    sforce.console.ConsoleEvent.PRESENCE.STATUS_CHANGED,
                    (event) => {
                        ac.Utils.Common.salesforcePresencesStatusChanged(event);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.SALESFORCE_AGENT, SCRIPT_EVENTS.ON_STATE_CHANGE)}
                     }
                );

                sforce.console.addEventListener(
                    sforce.console.ConsoleEvent.PRESENCE.LOGOUT,
                    (event) => {
                        ac.Utils.Common.salesforcePresenceLogout(event);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.SALESFORCE_AGENT, SCRIPT_EVENTS.ON_LOGOUT)}
                    }
                );

                sforce.console.addEventListener(
                    sforce.console.ConsoleEvent.PRESENCE.WORKLOAD_CHANGED,
                    (event) => {
                        ac.Utils.Common.salesforcePresenceWorkloadChanged(event);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.SALESFORCE_AGENT, SCRIPT_EVENTS.ON_WORKLOAD_CHANGED)}
                    }
                );

                sforce.console.addEventListener(
                    sforce.console.ConsoleEvent.PRESENCE.WORK_ACCEPTED,
                    (event) => {
                        ac.Utils.Common.salesforcePresenceWorkAccepted(event);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.SALESFORCE_AGENT, SCRIPT_EVENTS.ON_WORK_ACCEPTED)}
                    }
                );
                
                sforce.console.addEventListener(
                    sforce.console.ConsoleEvent.PRESENCE.WORK_CLOSED,
                    (event) => {
                        ac.Utils.Common.salesforcePresenceWorkClosed(event);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.SALESFORCE_AGENT, SCRIPT_EVENTS.ON_WORK_CLOSED)}
                    }
                );
                
                sforce.opencti.onClickToDial({
                    listener: async (payload) => {
                        await ac.Utils.Common.salesforceOnClickToDial(payload);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.SALESFORCE_UI, SCRIPT_EVENTS.ON_CLICK_TO_DIAL)}
                    }
                });
                
                sforce.opencti.onNavigationChange({
                    listener: async (payload) =>  {
                        ac.Utils.Common.salesforceNavigationChange(payload);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.SALESFORCE_UI, SCRIPT_EVENTS.ON_NAVIGATION_CHANGE)}
                    }
                });
                
                sforce.opencti.hvs.onWorkStart({
                    listener: async (payload) =>  {
                        ac.Utils.Common.salesforceHvsWorkStart(payload);
                        ${_getProcessedScripts(ctiScripts, SCRIPT_SOURCES.SALESFORCE_UI, SCRIPT_EVENTS.ON_HVS_WORK_START)}
                    }
                });
                `;

            finalScript += salesforceTemplate;

            finalScript += '})(this);';

            return finalScript;
        }
    };

    /**
     *
     * @private
     *
     * @param ctiScripts
     * @param source
     * @param event
     *
     * @returns {Array<String>}
     */
    const _getProcessedScripts = (ctiScripts, source, event) => {
        return ctiScripts
            .filter((ctiScript) => {
                return ac.Utils.Salesforce.getValueWithNamespace(ctiScript, 'Active__c')
                    && ac.Utils.Salesforce.getValueWithNamespace(ctiScript, 'Source__c') === source
                    && ac.Utils.Salesforce.getValueWithNamespace(ctiScript, 'Event__c') === event;
            }).map((ctiScript) => {
                return _wrapCtiScript(ctiScript);
            }).join('\n');
    };

    /**
     *
     * @private
     *
     * @param ctiScript
     *
     * @returns {string}
     */
    const _wrapCtiScript = (ctiScript) => {
        const name = ac.Utils.Salesforce.getValueWithNamespace(ctiScript, 'Name');
        const script = he.decode(ac.Utils.Salesforce.getValueWithNamespace(ctiScript, 'Script__c') || '');
        const debug = ac.Utils.Salesforce.getValueWithNamespace(ctiScript, 'DebuggerBreakpoint__c') ? 'debugger;' : '';

        debug && ac.Utils.Log.info('Script [' + ac.Utils.Salesforce.getValueWithNamespace(ctiScript, 'Name') + '] is loaded in debug mode!!!');

        return (
            `
            ${debug}
            try { 
                ac.Utils.Log.info('Entering script [${name}]');
                ${script} 
                ac.Utils.Log.info('Exiting script [${name}]');
            }
            catch (err) { 
                ac.Utils.Log.info('Error in script [${name}]');
                ac.Utils.Log.error(err); 
            }
            `);
    };
})(this);
