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

    let _voicemailDropFeature = null;
    let _voicemailDropQuickConnect = null;

    /**
     * @class ac.Utils.VoicemailDrop
     * @memberOf ac.Utils
     *
     * @description
     * The ac.Utils.VoicemailDrop class provides helper methods for voicemail drops.
     *
     */
    ac.Utils.VoicemailDrop = {
        /**
         * Initializes the ac.Utils.VoicemailDrop utility
         *
         * @protected
         */
        init : async () => {
            try {
                _voicemailDropFeature = await ac.Utils.Common.getFeatureByName('FEATURE_VOICEMAIL_DROP');
                _voicemailDropQuickConnect = ac.Utils.Common.getFeatureSetting(_voicemailDropFeature, 'QuickConnect', String, null);
            }
            catch (err) {
                ac.Utils.Log.error({ message: 'ac.Utils.VoicemailDrop.init() error', exception: err });
            }
        },

        populate : async () => {
            if (_voicemailDropFeature && _voicemailDropFeature.active) {
                await _populate();
                _setVoicemailDropsContainerVisible(true);
            }
        },

        depopulate : () => {
            _depopulate();
            _setVoicemailDropsContainerVisible(false);
        },

        showVoicemailDropContainer : () => {
            _setVoicemailDropsContainerVisible(true);
        },

        hideVoicemailDropContainer :() => {
            _setVoicemailDropsContainerVisible(false);
        }
    };

    const _getVoicemailDrops = () => new Promise((resolve, reject) => {
        try {
            Visualforce.remoting.Manager.invokeAction(
                ac.Utils.Salesforce.getNamespaceClassPrefix() + 'AC_Utils.getVoicemailDrops',
                (response, event) => {
                    if (event && event.status && response) {
                        resolve(ac.Utils.Common.buildResolve(response));
                    } else {
                        reject(ac.Utils.Common.buildReject('_getVoicemailDrops error', response.errors));
                    }
                }
            );
        } catch (err) {
            reject(ac.Utils.Common.buildReject('_getVoicemailDrops error', err));
        }
    });

    const _depopulate = () => {
        $(`${ac.Utils.Common.getDomElements().VOICEMAIL_DROPS_TABLE} > tbody`).empty();
    };

    const _populate = async () => {
        _depopulate();

        let voicemailDrops = await _getVoicemailDrops();

        voicemailDrops.forEach((item) => {
            let id = ac.Utils.Salesforce.getValueWithNamespace(item, 'Id');
            let name = ac.Utils.Salesforce.getValueWithNamespace(item, 'Name');
            let message = ac.Utils.Salesforce.getValueWithNamespace(item, 'Message__c');
            let voicemailDropIcon = getVoicemailDropIcon(id);

            let tr = `<tr data-id="${id}" title="${message}"><td>${name}</td><td>${voicemailDropIcon}</td></tr>`;

            $(`${ac.Utils.Common.getDomElements().VOICEMAIL_DROPS_TABLE} > tbody`).append(tr);
        });

        $('.vmDropAction').click(async (event) => {
            ac.Utils.Common.closeHelperPanel();

            ac.Utils.Agent.mute();

            let vmDropId = event.currentTarget.getAttribute('data-vmDropId');
            let name = _voicemailDropFeature['Settings']['QuickConnect'];

            let voiceContact = ac.Utils.Agent.getVoiceContact();

            if (voiceContact) {
                await _setVoicemailDrop(voiceContact.getContactId(), vmDropId);

                let vmDropEndpoint = await ac.Utils.Agent.getQuickConnectByName({name: name });

                let agent = ac.Utils.Agent.getAgent();

                agent.getContacts(connect.ContactType.VOICE)[0].addConnection(vmDropEndpoint, {
                    success: (data) => {
                        let agentContact = agent.getContacts(connect.ContactType.VOICE)[0];
                        agentContact.getAgentConnection().destroy();
                    },
                    failure: (data) => {
                        ac.Utils.Log.error({ message: 'Error in voicemail drop transfer', exception: data });
                    }
                });
            }
        });
    };

    const _setVoicemailDropsContainerVisible = (state) => {
        if (state === true) {
            $(ac.Utils.Common.getDomElements().VOICEMAIL_DROPS_CONTAINER).removeClass('slds-hide');
        }
        else {
            $(ac.Utils.Common.getDomElements().VOICEMAIL_DROPS_CONTAINER).addClass('slds-hide');
        }
    }

    const getVoicemailDropIcon = (value) => {
        return `
            <span id="vmDrop-${value}" data-vmDropId="${value}" class="slds-icon_container tableIcon vmDropAction">
              <svg 
                aria-hidden="true" 
                class="slds-icon slds-icon_x-small slds-icon-text-default"
                xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink">
                <use xlink:href="/apexpages/slds/latest/assets/icons/utility-sprite/svg/symbols.svg#voicemail_drop"></use>
              </svg>
            </span>
            `;
    };

    const _setVoicemailDrop = (contactId, voicemailDropId) => new Promise((resolve, reject) => {
        try {
             Visualforce.remoting.Manager.invokeAction(
                ac.Utils.Salesforce.getNamespaceClassPrefix() + 'AC_Utils.setVoicemailDrop',
                contactId,
                voicemailDropId,
                (response, event) => {
                    if (event && event.status) {
                        resolve();
                    } else {
                        reject(ac.Utils.Common.buildReject('setVoicemailDrop error', response.errors));
                    }
                }
            );
        } catch (err) {
            reject(ac.Utils.Common.buildReject('setVoicemailDrop error', err));
        }
    })
})(this);
