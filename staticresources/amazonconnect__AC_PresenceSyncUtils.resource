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
     * @type {boolean}
     */
    let _presenceSyncEnabled = false;
    /**
     *
     * @private
     *
     * @type {Array}
     */
    let _presenceSyncRules = [];

    /**
     *
     * @private
     *
     * @type {Array}
     */
    let _connectStates = [];

    /**
     *
     * @private
     *
     * @type {Array}
     */
    let _salesforceStates = [];

    let _lastEventShiftThreshold = 750;

    let _lastConnectEventTimestamp = Date.now();

    let _lastSalesforceEventTimestamp = Date.now();

    /**
     *
     * @type {{}}
     * @private
     */
    let _context = {};

    /**
     * Milliseconds elapsed since last event to allow events to process
     *
     * @private
     *
     * @type {number}
     */
    const _throttleTime = 1000;

    /**
     *
     * @type {{salesforceWorkloadChanged: string, salesforceAgentStateChange: string, connectAgentStateChange: string, salesforceWorkAccepted: string}}
     */
    const PRESENCE_SYNC_SOURCE = {
        connectAgentStateChange: 'connectAgentStateChange',
        salesforceAgentStateChange: 'salesforceAgentStateChange',
        salesforceAgentLogout: 'salesforceAgentLogout',
        salesforceWorkAccepted: 'salesforceWorkAccepted',
        salesforceWorkClosed: 'salesforceWorkClosed',
        salesforceWorkloadChanged: 'salesforceWorkloadChanged'
    };

    /**
     *
     * @type {{connectAgentState: string, salesforceAgentState: string}}
     */
    const PRESENCE_SYNC_DESTINATION = {
        connectAgentState: 'connectAgentState',
        salesforceAgentState: 'salesforceAgentState'
    };

    /**
     *
     * @type {{connectAgentNewState: string, salesforceNewWorkloadPct: string, staticValue: string, salesforceConfiguredCapacity: string, salesforceServiceChannel: string, salesforceNewWorkload: string, connectAgentOldState: string, salesforceAgentOldState: string, salesforcePreviousWorkload: string, salesforcePreviousWorkloadPct: string, salesforceAgentNewState: string}}
     */
    const PRESENCE_SYNC_OPERAND = {
        connectAgentOldState: 'connectAgentOldState',
        connectAgentNewState: 'connectAgentNewState',
        salesforceAgentOldState: 'salesforceAgentOldState',
        salesforceAgentNewState: 'salesforceAgentNewState',
        salesforceServiceChannel: 'salesforceServiceChannel',
        salesforcePreviousWorkload: 'salesforcePreviousWorkload',
        salesforcePreviousWorkloadPct: 'salesforcePreviousWorkloadPct',
        salesforceNewWorkload: 'salesforceNewWorkload',
        salesforceNewWorkloadPct: 'salesforceNewWorkloadPct',
        salesforceConfiguredCapacity: 'salesforceConfiguredCapacity',
        staticValue: 'staticValue'
    };

    /**
     *
     * @type {Array}
     */
    const LOCKED_STATES = [
        'Busy',
        'Pending',
        'PendingBusy',
        'CallingCustomer',
        'BusyPhone'
    ];

    /**
     * @class ac.Utils.PresenceSync
     * @memberOf ac.Utils
     *
     * @namespace ac.Utils.PresenceSync
     */
    ac.Utils.PresenceSync = {
        /**
         * Initializes the ac.Utils.PresenceSync utility
         *
         * @private
         * @static
         * @async
         */
        init : async () => {
            let ctiAdapter = ac.Utils.Common.getProperty({ key: 'ctiAdapter'});

            _presenceSyncEnabled = ctiAdapter != null ? ac.Utils.Salesforce.getValueWithNamespace(ctiAdapter, 'PresenceSyncEnabled__c') : false;

            _context = {
                previousEvent: {},
                currentEvent: {},
                connect: {
                    oldState: '',
                    newState: ''
                },
                salesforce: {
                    oldState: '',
                    newState: '',
                    serviceChannel: '',
                    serviceChannels: {}
                }
            };

            if (_presenceSyncEnabled) {
                try {
                    await ac.Utils.PresenceSync.loadAvailableStates();
                }
                catch (err) {
                    ac.Utils.Log.error({ message: 'Error loading available states', exception: err });
                }

                let connectAgentState = await ac.Utils.Agent.getAgentState();
                _context.connect.currentState = connectAgentState.name;

                try {
                    let salesforceAgentState = await ac.Utils.Salesforce.getAgentState();
                    _context.salesforce.currentState = salesforceAgentState.statusApiName;
                }
                catch (err) {
                    _context.salesforce.currentState = 'Offline';
                }
            }
            else {
                ac.Utils.Log.warn({ message: 'Presence sync is not enabled' });
            }
        },

        /**
         * Get the current presence sync context
         *
         * @static
         *
         * @returns {{Object}}
         */
        getContext : () => {
            return _context;
        },

        /**
         * Enable presence sync
         *
         * @static
         */
        enablePresenceSync : () => {
            _presenceSyncEnabled = true;
        },

        /**
         * Disable presence sync
         *
         * @static
         */
        disablePresenceSync : () => {
            _presenceSyncEnabled = false;
        },

        /**
         * Returns value of presence sync enabled
         *
         * @returns {boolean}
         */
        isPresenceSyncEnabed : () => {
            return _presenceSyncEnabled;
        },

        /**
         *
         * @private
         * @static
         * @async
         *
         * @param event
         */
        handleEvent : async (event) => {
            if (_presenceSyncEnabled) {
                await _updateContext(event);

                _presenceSyncRules = _getPresenceSyncRules();

                let rules = _filterRules(event.source);

                if (rules && rules.length > 0) {
                    _processRules(rules);
                } else {
                    ac.Utils.Log.warn({ message: `No presence sync rules configured for event ${JSON.stringify(event)}]` });
                }

                _context.currentEvent = {};
            }
        },

        /**
         *
         * @private
         * @static
         * @async
         *
         * @returns {Promise<void>}
         */
        loadAvailableStates : async () => {
            try {
                _connectStates = await ac.Utils.Agent.getAvailableAgentStates();
                ac.Utils.Log.info({ message: `Amazon Connect Available Agent States: ${JSON.stringify(_connectStates, null, 1)}` });

                _salesforceStates = await ac.Utils.Salesforce.getAvailableAgentStates();
                ac.Utils.Log.info({ message: `Salesforce Available Agent States: ${JSON.stringify(_salesforceStates, null, 1)}` });
            }
            catch (err) {
                _presenceSyncEnabled = false;
                ac.Utils.Log.error({ message: `Failure in AC_PresenceSyncUtils.init(): ${JSON.stringify(err, null, 1)}` });
                ac.Utils.Log.warn({ message: 'Presence sync is being disabled!!!' });
            }
        }
    };

    /**
     *
     * @private
     * @static
     * @async
     *
     * @param event
     */
     const _updateContext = async (event) => {
        try {
            _context.previousEvent = _context.currentEvent;
            _context.currentEvent = event;

            let workDetail, capacity;

            let connectState = ac.Utils.Agent.getAgentState();
            _context.connect.currentState = connectState.name;

            try {
                let salesforceState = await ac.Utils.Salesforce.getAgentState();
                _context.salesforce.currentState = await salesforceState.statusApiName;
            }
            catch (err) {
                _context.salesforce.currentState = 'Offline';
            }

            switch (event.source) {
                case PRESENCE_SYNC_SOURCE.connectAgentStateChange:
                    _context.connect.newState = _context.connect.currentState;
                    break;
                case PRESENCE_SYNC_SOURCE.salesforceAgentStateChange:
                    _context.salesforce.newState = _context.salesforce.currentState;
                    break;
                case PRESENCE_SYNC_SOURCE.salesforceAgentLogout:
                    _context.salesforce.newState = 'Offline';
                    break;
                case PRESENCE_SYNC_SOURCE.salesforceWorkAccepted:
                    try {
                        workDetail = await _getWorkDetail(event.body.workId);

                        if (workDetail) {
                            _context.salesforce.serviceChannel = workDetail.serviceChannel;

                            let serviceChannelEntry = _context.salesforce.serviceChannels[workDetail.serviceChannel];

                            if (serviceChannelEntry) {
                                serviceChannelEntry.workload += workDetail.capacityWeight;
                            }
                            else {
                                serviceChannelEntry = {
                                    workload: workDetail.capacityWeight
                                };
                            }

                            _context.salesforce.serviceChannels[workDetail.serviceChannel] = serviceChannelEntry;
                        }
                    }
                    catch (err) {
                        ac.Utils.Log.error({ exception: err });
                    }
                    break;
                case PRESENCE_SYNC_SOURCE.salesforceWorkClosed:
                    try {
                        workDetail = await _getWorkDetail(event.body.workId);

                        if (workDetail) {
                            _context.salesforce.serviceChannels[workDetail.serviceChannel].workload -= workDetail.capacityWeight;
                        }
                    }
                    catch (err) {
                        ac.Utils.Log.error({ exception: err });
                    }
                    break;
                case PRESENCE_SYNC_SOURCE.salesforceWorkloadChanged:
                    _context.salesforce.configuredCapacity = parseInt(event.body.configuredCapacity);
                    _context.salesforce.previousWorkload = parseInt(event.body.previousWorkload);
                    _context.salesforce.newWorkload = parseInt(event.body.newWorkload);
                    _context.salesforce.previousWorkloadPct = parseInt(event.body.configuredCapacity) === 0 ? 1 :
                        parseInt(event.body.previousWorkload) / parseInt(event.body.configuredCapacity);
                    _context.salesforce.newWorkloadPct = parseInt(event.body.configuredCapacity) === 0 ? 1 :
                        parseInt(event.body.newWorkload) / parseInt(event.body.configuredCapacity);
                    break;
                default:
                    break;
            }
        }
        catch (err) {
        }
    };

    /**
     *
     * @private
     * @static
     *
     * @param source
     * @returns {Object}
     */
    const _filterRules = (source) => {
        if (_presenceSyncRules && _presenceSyncRules.length > 0) {
            return _presenceSyncRules.filter(function (rule) {
                return ac.Utils.Salesforce.getValueWithNamespace(rule, 'Source__c') === source;
            });
        }
        else {
            return [];
        }
    };

    /**
     *
     * @private
     * @static
     *
     * @param rules
     */
    const _processRules = (rules) => {
        rules.forEach(async (rule) => {
            await _processRule(rule);
        })
    };

    /**
     *
     * @private
     * @static
     *
     * @param rule
     */
    const _processRule = async (rule) => {
        let operandA = ac.Utils.Salesforce.getValueWithNamespace(rule, 'OperandA__c');
        let operandAValue;

        if (operandA === PRESENCE_SYNC_OPERAND.staticValue) {
            operandAValue = ac.Utils.Salesforce.getValueWithNamespace(rule, 'OperandACustom__c');
        }
        else {
            operandAValue = _expandOperand(operandA);
        }

        let operandB = ac.Utils.Salesforce.getValueWithNamespace(rule, 'OperandB__c');
        let operandBValue;

        if (operandB === PRESENCE_SYNC_OPERAND.staticValue) {
            operandBValue = ac.Utils.Salesforce.getValueWithNamespace(rule, 'OperandBCustom__c');
        }
        else {
            operandBValue = _expandOperand(operandB);
        }

        let comparator = ac.Utils.Salesforce.getValueWithNamespace(rule, 'Comparator__c');

        let comparison = _processComparison(operandAValue, comparator, operandBValue);

        if (comparison) {
            let canProcessChange;
            let destination = ac.Utils.Salesforce.getValueWithNamespace(rule, 'Destination__c');
            let targetAgentState = ac.Utils.Salesforce.getValueWithNamespace(rule, 'Value__c');

            if (destination === PRESENCE_SYNC_DESTINATION.connectAgentState) {
                canProcessChange = _canProcessStateChange(destination, _context.connect.currentState, targetAgentState);
            }
            else {
                canProcessChange = _canProcessStateChange(destination, _context.salesforce.currentState, targetAgentState);
            }

            if (targetAgentState && canProcessChange) {
                await mt(destination, targetAgentState);
            }
        }
    };

    /**
     *
     * @private
     * @static
     *
     * @param operand
     *
     * @returns {string|number}
     */
    const _expandOperand = (operand) => {
        let value;

        switch (operand) {
            case PRESENCE_SYNC_OPERAND.connectAgentOldState:
                value = _context.connect.currentState;
                break;
            case PRESENCE_SYNC_OPERAND.connectAgentNewState:
                value = _context.connect.newState;
                break;
            case PRESENCE_SYNC_OPERAND.salesforceAgentOldState:
                value = _context.salesforce.currentState;
                break;
            case PRESENCE_SYNC_OPERAND.salesforceAgentNewState:
                value = _context.salesforce.newState;
                break;
            case PRESENCE_SYNC_OPERAND.salesforcePreviousWorkload:
                value = _context.salesforce.previousWorkload;
                break;
            case PRESENCE_SYNC_OPERAND.salesforcePreviousWorkloadPct:
                value = _context.salesforce.previousWorkloadPct;
                break;
            case PRESENCE_SYNC_OPERAND.salesforceNewWorkload:
                value = _context.salesforce.newWorkload;
                break;
            case PRESENCE_SYNC_OPERAND.salesforceNewWorkloadPct:
                value = _context.salesforce.newWorkloadPct;
                break;
            case PRESENCE_SYNC_OPERAND.salesforceConfiguredCapacity:
                value = _context.salesforce.configuredCapacity;
                break;
            case PRESENCE_SYNC_OPERAND.salesforceServiceChannel:
                value = _context.salesforce.serviceChannel;
                break;
            default: // Literal value without expansion
                value = operand;
        }

        return value;
    };

    /**
     *
     * @private
     * @static
     *
     * @param operandA
     * @param comparator
     * @param operandB
     *
     * @returns {boolean}
     */
    const _processComparison = (operandA, comparator, operandB) => {
        let a, b, result;

        if ($.isNumeric(operandA) && $.isNumeric(operandB)) {
            a = parseFloat(operandA);
            b = parseFloat(operandB);
        }
        else {
            a = operandA.toString();
            b = operandB.toString();
        }

        try {
            comparator = comparator.replace('&lt;', '<').replace('&gt;', '>');

            switch (comparator) {
                case '===':
                    result = a === b;
                    break;
                case '!==':
                    result = a !== b;
                    break;
                case '>':
                    result = a > b;
                    break;
                case '>=':
                    result = a >= b;
                    break;
                case '<':
                    result = a < b;
                    break;
                case '<=':
                    result = a <= b;
                    break;
                default:
                    result = false;
            }
        }
        catch (err) {
            ac.Utils.Log.error({ message: '_processComparison error', exception: err });
        }

        return result;
    };

    /**
     *
     * @private
     * @static
     *
     * @param destination
     * @param currentState
     * @param newState
     *
     * @returns {boolean}
     */
    const _canProcessStateChange = (destination, currentState, newState) => {
        let canProcessStateChange = true;

        try {
            if (destination && destination === PRESENCE_SYNC_DESTINATION.connectAgentState) {
                if (currentState && newState) {
                    if (currentState === newState || ($.inArray(currentState, LOCKED_STATES) > -1 || $.inArray(newState, LOCKED_STATES) > -1)) {
                        ac.Utils.Log.warn({ message: `Connect agent current state [${currentState}] cannot be changed to [${newState}]` });
                        canProcessStateChange = false;
                    }
                }
            }
            else if (destination && destination === PRESENCE_SYNC_DESTINATION.salesforceAgentState) {
                if (currentState && newState) {
                    if (currentState === newState) {
                        ac.Utils.Log.warn({ message: `Salesforce agent current state [${currentState}] cannot be changed to [${newState}]` });
                        canProcessStateChange = false;
                    }
                }
            }
            else {
                canProcessStateChange = false;
            }
        }
        catch (err) {
            ac.Utils.Log.error({ message: '_canProcessStateChange error', exception: err });
            canProcessStateChange = false;
        }

        return canProcessStateChange;
    };

    /**
     *
     * @private
     * @static
     * @async
     *
     * @param workId
     *
     * @returns {Promise}
     */
    const _getWorkDetail = (workId) => new Promise((resolve, reject) => {
        try {
            Visualforce.remoting.Manager.invokeAction(
                ac.Utils.Salesforce.getNamespaceClassPrefix() + 'AC_Utils.getWorkHolder',
                workId,
                function (result, event) {
                    if (event.status && result) {
                        resolve(ac.Utils.Common.buildResolve(result));
                    } else {
                        reject(ac.Utils.Common.buildReject('_getWorkDetail error', event.message));
                    }
                }
            );
        }
        catch (err) {
            reject(err)
        }
    });

    /**
     *
     * @private
     */
    const _setLastConnectEventTimestamp = () => {
        const now = Date.now();
        ac.Utils.Log.info({ message: `_lastConnectEventTimestamp shift: ${(now - _lastConnectEventTimestamp)}` });
        _lastConnectEventTimestamp = now
        ac.Utils.Log.info({ message: `new _lastConnectEventTimestamp: ${_lastConnectEventTimestamp}` });
    };

    const _setLastSalesforceEventTimestamp = () => {
        const now = Date.now();
        ac.Utils.Log.info({ message: `_lastSalesforceEventTimestamp shift: ${(now - _lastSalesforceEventTimestamp)}` });
        _lastSalesforceEventTimestamp = now;
        ac.Utils.Log.info({ message: `new _lastSalesforceEventTimestamp: ${_lastSalesforceEventTimestamp}` });
    }

    const _setAgentState = async (destination, state) => {
        const now = Date.now();

        if (destination == PRESENCE_SYNC_DESTINATION.connectAgentState) {
            if (now - _lastConnectEventTimestamp > _lastEventShiftThreshold) {
                await _setConnectAgentState(state);
                _setLastConnectEventTimestamp();
            }
            else {
                ac.Utils.Log.warn({ message: '_setAgentState [Connect] called too soon... Ignoring request...' });
            }
        }
        else {
            if (now - _lastSalesforceEventTimestamp > _lastEventShiftThreshold) {
                await _setSalesforceAgentState(state);
                _setLastSalesforceEventTimestamp();
            }
            else {
                ac.Utils.Log.warn({ message: '_setAgentState [Salesforce] called too soon... Ignoring request...' });
            }
        }
    };

    /**
     *
     * @private
     * @static
     * @async
     *
     * @param state
     *
     * @returns {Promise}
     */
    const _setConnectAgentState = async (state) => {
        try {
            let connectState = _connectStates[state];

            if (connectState) {
                ac.Utils.Log.info({ message: `Setting connect agent state [${state}]` });

                await ac.Utils.Agent.setAgentState(connectState);

                _context.connect.oldState = _context.connect.currentState;
                _context.connect.newState = state;
                _context.connect.currentState = null;
            }
            else {
                ac.Utils.error({ message: `Could not find Connect state for [${state}]` });
            }
        }
        catch (err) {
            ac.Utils.Log.error({ message: '_setConnectAgentState error', exception: err });
        }
    };

    /**
     *
     * @private
     *
     * @static
     * @async
     *
     * @param state
     *
     * @returns {Promise<void>}
     */
    const _setSalesforceAgentState = async (state) => {
        try {
            let salesforceState = _salesforceStates[state];

            if (salesforceState) {
                ac.Utils.Log.info({ message: `Setting salesforce agent state [${state}]` });

                if (state === 'Offline') {
                    await ac.Utils.Salesforce.logoutAgent();
                } else {
                    await ac.Utils.Salesforce.setAgentState(salesforceState);
                }

                _context.salesforce.oldState = _context.salesforce.currentState;
                _context.salesforce.newState = state;
                _context.salesforce.currentState = null;
            }
            else {
                ac.Utils.error({ message: `Could not find Salesforce state for [${state}]` });
            }
        }
        catch (err) {
            ac.Utils.Log.error({ message: '_setSalesforceAgentState error', exception: err });
        }
    };

    const _getPresenceSyncRules = () => new Promise((resolve, reject) => {
        let ctiAdapter = ac.Utils.Common.getProperty({ key: 'ctiAdapter' });

        try {
            if (ctiAdapter) {
                Visualforce.remoting.Manager.invokeAction(
                    ac.Utils.Salesforce.getNamespaceClassPrefix() + 'AC_Utils.getPresenceSyncRules',
                    ctiAdapter.Id,
                    (response, event) => {
                        if (event && event.status && response) {
                            resolve(ac.Utils.Common.buildResolve(response));
                        } else {
                            reject(ac.Utils.Common.buildReject('_getPresenceSyncRules error', response.errors));
                        }
                    }
                );
            }
        } catch (err) {
            reject(ac.Utils.Common.buildReject('_getPresenceSyncRules error', err));
        }
    });

    _.mixin({
        memoizeDebounce: function(func, wait=0, options={}) {
            var mem = _.memoize(function() {
                return _.debounce(func, wait, options)
            }, options.resolver);
            return function(){mem.apply(this, arguments).apply(this, arguments)}
        }
    });

    _.mixin({
        memoizeThrottle: function(func, wait=0, options={}) {
            var mem = _.memoize(function() {
                return _.throttle(func, wait, options)
            }, options.resolver);
            return function(){mem.apply(this, arguments).apply(this, arguments)}
        }
    });

    let mt = _.memoizeThrottle(_setAgentState, _throttleTime, { leading: true, trailing: false });

})(this);
