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

    const INIT_CALLBACK_DELAY = 2000;

    /**
     *
     * @private
     *
     * @type {boolean}
     */
    let _isInitialized = false;

    /**
     *
     * @private
     *
     * @type {Window}
     */
    let _loginWindow = null;

    const CALL_CENTER_REGEX = /([^\/]+$)/gm;

    /**
     *
     * @private
     *
     * @class ac.Utils.Initializer
     * @memberOf ac.Utils
     *
     * @namespace ac.Utils.Initializer
     */
    ac.Utils.Initializer = {
        /**
         *
         * @private
         *
         * @param callback
         *
         * @returns {Promise|Error}
         */
        init : async (callback) => {
            try {
                ac.Utils.Log.warn({ message: 'Salesforce Base Url: ' + ac.Utils.Salesforce.getBaseUrl() });
                ac.Utils.Log.warn({ message: 'My Domain Enabled: ' + ac.Utils.Salesforce.isMyDomainEnabled() });

                const _callCenterSettings = await ac.Utils.Salesforce.getCallCenterSettings();

                if (_callCenterSettings) {
                    let settings = {};

                    Object.keys(_callCenterSettings).forEach((setting) => {
                        settings[setting.match(CALL_CENTER_REGEX).join()] = _callCenterSettings[setting];
                    });

                    ac.Utils.Common.setProperty({key: 'callCenterSettings', value: settings});

                    const _ctiAdapter = await ac.Utils.Salesforce.getCtiAdapter({name: _callCenterSettings['/reqGeneralInfo/reqInternalName']});

                    if (_ctiAdapter) {
                        const _instance = ac.Utils.Salesforce.getValueWithNamespace(_ctiAdapter, 'Instance__c');

                        if (_instance === 'default') {
                            await ac.Utils.Salesforce.showSoftphonePanel();

                            ac.Utils.Common.showModal({
                                message: '<p>The Amazon Connect Instance Alias is current set to the default value.</p><p>You must configure a valid CTI Adapter record before proceeding.</p>',
                                config: { escapeClose: false, clickClose: false, showClose: false }
                            });
                            return;
                        }

                        const _baseUrl = `https://${_instance}.awsapps.com/connect`;
                        const _region = ac.Utils.Salesforce.getValueWithNamespace(_ctiAdapter, 'Region__c', 'us-east-1');
                        const _ssoUrl = ac.Utils.Salesforce.getValueWithNamespace(_ctiAdapter, 'SsoUrl__c', '');
                        const _ssoRelayState = he.decode(ac.Utils.Salesforce.getValueWithNamespace(_ctiAdapter, 'SsoRelayState__c', ''));
                        const _softphonePopoutEnabled = ac.Utils.Salesforce.getValueWithNamespace(_ctiAdapter, 'SoftphonePopoutEnabled__c', true);

                        ac.Utils.Common.setProperty({key: 'ctiAdapter', value: _ctiAdapter});

                        let _userDefined = ac.Utils.Salesforce.getValueWithNamespace(_ctiAdapter, 'UserDefined__c') || '{}';
                        if (_userDefined) {
                            try {
                                _userDefined = JSON.parse(_userDefined.replace(/&quot;/g, "\""));
                            } catch (err) {
                                ac.Utils.Common.showModal({message: err, config: {}});
                            }
                        }

                        // Set CCP height
                        let container = $('#ccpPanel');
                        const _ccpHeight = _userDefined['ccpHeight'] || 465;
                        container.height(_ccpHeight);

                        // Set Bottom Panel height
                        let bottomPanel = $('#bottomPanel');
                        const _bottomPanelHeight = _userDefined['bottomPanelHeight'] || 40;
                        bottomPanel.height(_bottomPanelHeight);

                        ac.Utils.Common.setProperty({
                            key: 'consoleLogoutUrl',
                            value: 'https://console.aws.amazon.com/logout!doLogout'
                        });

                        const loginUrl = !_ssoUrl ? `${_baseUrl}/login` : _ssoUrl + '?' + _ssoRelayState;

                        ac.Utils.Common.setProperty({key: 'connectLoginUrl', value: loginUrl});

                        const logoutUrl = `${_baseUrl}/logout`;

                        ac.Utils.Common.setProperty({key: 'connectLogoutUrl', value: logoutUrl});

                        const urlParams = new URLSearchParams(window.location.search);

                        const ccp = urlParams.get('ccpVersion') === '1' ? 'ccp' : 'ccp-v2';

                        const ccpUrl = `${_baseUrl}/${ccp}`;

                        const medialess = ac.Utils.Salesforce.getValueWithNamespace(_ctiAdapter, 'Medialess__c', false);

                        const ccpConfig = {
                            ccpUrl: ccpUrl,
                            loginPopup: false,
                            region: _region,
                            softphone: {
                                allowFramedSoftphone: !medialess
                            }
                        };

                        let customRingtone = ac.Utils.Salesforce.getValueWithNamespace(_ctiAdapter, 'CustomRingtone__c', '');

                        if (customRingtone && customRingtone.startsWith("https://")) {
                            ccpConfig.softphone.ringtoneUrl = customRingtone;
                        }

                        if (!_isInitialized) {
                            setTimeout(function () {
                                if (!_isInitialized) {
                                    $('#loginButton').click();
                                }
                            }, 5000);
                        }

                        connect.core.initCCP(container.get(0), ccpConfig);

                        $('#loginButton').click(() => {
                            if (!_loginWindow || (_loginWindow && _loginWindow.closed)) {
                                _loginWindow = undefined;

                                const width = 500;
                                const height = 600;
                                const left = (screen.width / 2) - (width / 2);
                                const top = (screen.height / 2) - (height / 2);

                                _loginWindow = window.open(loginUrl, "_blank", "width=" + width +
                                    ",height=" + height + ",menubar=no,status=no,toolbar=no,left=" + left + ",top=" + top);
                            } else {
                                _loginWindow.focus();
                            }
                        });

                        await connect.core.getEventBus().subscribe(connect.EventType.TERMINATED, async (e) => {
                            window.location.reload();
                        });

                        connect.agent(async () => {
                            _isInitialized = true;

                            ac.Utils.Common.setProperty({ key: 'CONNECT_INSTANCE_ALIAS', value: _instance });
                            ac.Utils.Common.setProperty({ key: 'CONNECT_REGION', value: _region });

                            if (medialess) {
                                if (_loginWindow) {
                                    _loginWindow.location = ccpUrl;
                                }
                                else {
                                    const width = 500;
                                    const height = 600;
                                    const left = (screen.width / 2) - (width / 2);
                                    const top = (screen.height / 2) - (height / 2);

                                    _loginWindow = window.open(ccpUrl, "_blank", "width=" + width +
                                        ",height=" + height + ",menubar=no,status=no,toolbar=no,left=" + left + ",top=" + top);
                                }
                            }
                            else {
                                _loginWindow && !medialess && _loginWindow.close();
                                _loginWindow = undefined;
                            }

                            if (ac.Utils.Common.isLightning()) {
                                await ac.Utils.Salesforce.setSoftphonePopoutEnabled({ enabled: _softphonePopoutEnabled });
                            }

                            _showSoftphone();

                            ac.Utils.Common.delay(INIT_CALLBACK_DELAY).then(() => callback());
                        });
                    } else {
                        alert('A CTI Adapter record could not be found.');
                    }
                }
            }
            catch (err) {
                await ac.Utils.Salesforce.showSoftphonePanel();
                ac.Utils.Common.showModal({ message: '<p>Unable to initialize the Amazon Connect CTI Adapter for Salesforce.</p><p>Please contact your Salesforce administrator.</p>', config: { escapeClose: false, clickClose: false, showClose: false } });
            }
        }
    };

    /**
     *
     * @private
     */
    const _showSoftphone = () => {
        $('#softphoneContainer').removeClass('slds-hide');
        $('#loginContainer').addClass('slds-hide');
    };
})(this);
