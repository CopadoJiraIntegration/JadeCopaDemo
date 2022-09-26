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

  let _script = {};
  let _context = {};
  let _executions = [];

  const NODE_TYPES = {
    //Core
    U_Start: 'U_Start',
    U_End: 'U_End',
    U_GetProperty: 'U_GetProperty',
    U_SetProperty: 'U_SetProperty',
    U_Decision: 'U_Decision',
    U_RestCall: 'U_RestCall',
    U_Log: 'U_Log',
    U_ShowModal: 'U_ShowModal',
    U_SetDomVisible: 'U_SetDomVisible',

    // Salesforce
    U_SFShouldEnableClickToDial: 'U_SFShouldEnableClickToDial',
    U_SFEnableClickToDial: 'U_SFEnableClickToDial',
    U_SFDisableClickToDial: 'U_SFDisableClickToDial',
    U_SFGetAppViewInfo: 'U_SFGetAppViewInfo',
    U_SFGetSoftphoneLayout: 'U_SFGetSoftphoneLayout',
    U_SFRefreshView: 'U_SFRefreshView',
    U_SFShowSoftphonePanel: 'U_SFShowSoftphonePanel',
    U_SFHideSoftphonePanel: 'U_SFHideSoftphonePanel',
    U_SFSetSoftphonePanelHeight: 'U_SFSetSoftphonePanelHeight',
    U_SFSetSoftphonePanelWidth: 'U_SFSetSoftphonePanelWidth',
    U_SFScreenpopObject: 'U_SFScreenpopObject',
    U_SFScreenpopUrl: 'U_SFScreenpopUrl',
    U_SFScreenpopObjectHome: 'U_SFScreenpopObjectHome',
    U_SFScreenpopList: 'U_SFScreenpopList',
    U_SFScreenpopSearch: 'U_SFScreenpopSearch',
    U_SFScreenpopNewRecord: 'U_SFScreenpopNewRecord',
    U_SFSearchAndScreenpop: 'U_SFSearchAndScreenpop',
    U_SFRunApex: 'U_SFRunApex',
    U_SFGetAgentState: 'U_SFGetAgentState',
    U_SFSetAgentState: 'U_SFSetAgentState',
    U_SFLoginAgent: 'U_SFLoginAgent',
    U_SFLogoutAgent: 'U_SFLogoutAgent',
    U_SFSaveLog: 'U_SFSaveLog',
    U_SFLogContact: 'U_SFLogContact',
    U_SFIsDoNotCall: 'U_SFIsDoNotCall',
    U_SFQuery: 'U_SFQuery',

    // Connect Agent
    U_AgentDialNumber: 'U_AgentDialNumber',
    U_AgentMuteAgent: 'U_AgentMuteAgent',
    U_AgentUnmuteAgent: 'U_AgentUnmuteAgent',
    U_AgentGetAgentState: 'U_AgentGetAgentState',
    U_AgentSetAgentState: 'U_AgentSetAgentState',
    U_AgentSetAgentAvailable: 'U_AgentSetAgentAvailable',

    // Connect Contact
    U_ContactGetAttributeValue: 'U_ContactGetAttributeValue',
    U_ContactIsVoice: 'U_ContactIsVoice',
    U_ContactIsChat: 'U_ContactIsChat',
    U_ContactIsInbound: 'U_ContactIsInbound',
    U_ContactIsQueueCallback: 'U_ContactIsQueueCallback',
    U_ContactStatus: 'U_ContactStatus',
    U_ContactPhoneNumber: 'U_ContactPhoneNumber',
  };

  /**
   * @public
   *
   * @class ac.Utils.ScriptExecutor
   * @memberOf ac.Utils
   *
   * @namespace ac.Utils.ScriptExecutor
   */
  ac.Utils.ScriptExecutor = {
    /**
     * @private
     *
     * @returns {Promise<void>}
     */
    init: async () => {},

    /**
     * @public
     *
     * @param {Map} args
     * @param {String} args.source
     * @param {String]} args.event
     * @param {Map<String, Object>} args.params
     *
     * @returns {Promise<void>}
     */
    execute: async (args) => {
      try {
        _script = await _getScriptForSourceAndEvent(args.source, args.event);

        if (!_script || _script.actions === undefined) {
          console.log(`ac.Utils.ScriptExecutor: no script for args:`, args);
          return;
        }

        _context = _initializeContext(args.params);

        console.log(`ac.Utils.ScriptExecutor: context initialized:`, _context);

        _executions = [];

        await _executeAction(_findStartAction());
      } catch (e) {
        console.error(`ac.Utils.ScriptExecutor: error:`, e);
        console.error(`ac.Utils.ScriptExecutor: args:`, args);
      }
    },
  };

  const _executeAction = async (action) => {
    if (action) {
      action.startTimeStamp = new Date().getTime();

      let results = {},
        nextAction = null,
        contact = null;

      ac.Utils.Log.debug({
        message: `${action.name} > ${action.id} > ${action.lib} > ${action.type} executing...`,
      });

      try {
        let test = action.args;
        if (action.args) {
          _expandArgs(test);
        }

        switch (action.type) {
          // Start Core Actions
          case NODE_TYPES.U_Start:
            results.next = action.done;
            break;

          case NODE_TYPES.U_End:
            results.next = null;
            break;

          case NODE_TYPES.U_SetProperty:
            ac.Utils.Common.setProperty(action.args);
            results.next = action.done;
            break;

          case NODE_TYPES.U_GetProperty:
            results = ac.Utils.Common.getProperty(action.args);
            results.next = action.done;
            break;

          case NODE_TYPES.U_Decision:
            results = ac.Utils.Common.decision(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_RestCall:
            results = await ac.Utils.Common.restCall(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_ShowModal:
            ac.Utils.Common.showModal(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_Log:
            ac.Utils.Log.log(action.args);
            results.next = action.done;
            break;

          case NODE_TYPES.U_SetDomVisible:
            ac.Utils.Common.setDomVisible(action.args);
            results.next = action.done;
            break;
          // End Core Actions

          // Start Agent Actions
          case NODE_TYPES.U_AgentDialNumber:
            results = await ac.Utils.Agent.dialNumber(action.args);
            results.next = action.success;
            break;
          // End Agent Actions

          // Start Salesforce Actions
          case NODE_TYPES.U_SFLogContact:
            results = await ac.Utils.Salesforce.logContact(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFShouldEnableClickToDial:
            results = ac.Utils.Salesforce.shouldEnableClickToDial();
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFDisableClickToDial:
            results = await ac.Utils.Salesforce.disableClickToDial();
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFEnableClickToDial:
            results = await ac.Utils.Salesforce.enableClickToDial();
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFHideSoftphonePanel:
            results = await ac.Utils.Salesforce.hideSoftphonePanel();
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFShowSoftphonePanel:
            results = await ac.Utils.Salesforce.showSoftphonePanel();
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFScreenpopObject:
            results = await ac.Utils.Salesforce.screenPopObject(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFScreenpopUrl:
            results = await ac.Utils.Salesforce.screenPopUrl(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFScreenpopObjectHome:
            results = await ac.Utils.Salesforce.screenPopObjectHome(
              action.args
            );
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFScreenpopSearch:
            results = await ac.Utils.Salesforce.screenPopSearch(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFScreenpopNewRecord:
            results = await ac.Utils.Salesforce.screenPopNewRecord(action.args);
            results.next = action.success;
            break;

          // TODO: Evaluate need for generic screenPop behavior
          case NODE_TYPES.U_SFScreenPop:
            results = await ac.Utils.Salesforce.screenPop(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFSearchAndScreenpop:
            results = await ac.Utils.Salesforce.searchAndScreenPop(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFQuery:
          case 'query':
            results = await ac.Utils.Salesforce.query(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFIsDoNotCall:
            results = await ac.Utils.Salesforce.isDoNotCall(action.args);
            results.next = results.isDoNotCall ? action.true : action.false;
            break;

          case NODE_TYPES.U_SFGetAgentState:
            results = await ac.Utils.Salesforce.getAgentState();
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFSetAgentState:
            results = await ac.Utils.Salesforce.setAgentState(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFGetAppViewInfo:
            results = await ac.Utils.Salesforce.getViewInfo();
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFGetSoftphoneLayout:
            results = await ac.Utils.Salesforce.getSoftphoneLayout();
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFRefreshView:
            results = await ac.Utils.Salesforce.refreshView();
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFSetSoftphonePanelHeight:
            results = await ac.Utils.Salesforce.setSoftphonePanelHeight(
              action.args
            );
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFSetSoftphonePanelWidth:
            results = await ac.Utils.Salesforce.setSoftphonePanelWidth(
              action.args
            );
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFScreenpopList:
            results = await ac.Utils.Salesforce.screenPopList(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFSaveLog:
            results = await ac.Utils.Salesforce.saveLog(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFLoginAgent:
            results = await ac.Utils.Salesforce.loginAgent(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFLoginAgent:
            results = await ac.Utils.Salesforce.loginAgent(action.args);
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFLogoutAgent:
            results = await ac.Utils.Salesforce.logoutAgent();
            results.next = action.success;
            break;

          case NODE_TYPES.U_SFRunApex:
            results = await ac.Utils.Salesforce.runApex(action.args);
            results.next = action.success;
            break;
          // End Salesforce Actions

          // Start Connect Agent Actions
          case NODE_TYPES.U_AgentMuteAgent:
            await ac.Utils.Agent.mute();
            results.next = action.success;
            break;

          case NODE_TYPES.U_AgentUnmuteAgent:
            await ac.Utils.Agent.unmute();
            results.next = action.success;
            break;

          case NODE_TYPES.U_AgentGetAgentState:
            results = await ac.Utils.Agent.getAgentState();
            results.next = action.success;
            break;

          case NODE_TYPES.U_AgentSetAgentState:
            const states = await ac.Utils.Agent.getAvailableAgentStates();
            const byType = (s) => s.type == action.args.state;
            // Get state object whose type equals to value of "args.state."
            const state = Object.values(states).find(byType);

            if (state) {
              // Assign state object to the "state" property in args.
              action.args.state = state;
              results = await ac.Utils.Agent.setAgentState(action.args);
              results.next = action.success;
            } else {
              results.next = action.failure;
            }
            break;

          case NODE_TYPES.U_AgentSetAgentAvailable:
            results = await ac.Utils.Agent.setAgentAvailable();
            results.next = action.success;
            break;
          // End Connect Agent Actions

          // Start Contact Actions
          case NODE_TYPES.U_ContactIsVoice:
            contact = await ac.Utils.Contact.getContactFromCurrentSession();
            results.value = ac.Utils.Agent.isVoice(contact);
            results.next = action.success;
            break;

          case NODE_TYPES.U_ContactIsChat:
            contact = await ac.Utils.Contact.getContactFromCurrentSession();
            results.value = ac.Utils.Agent.isChat(contact);
            results.next = action.success;
            break;

          case NODE_TYPES.U_ContactIsInbound:
            contact = await ac.Utils.Contact.getContactFromCurrentSession();
            results.value = ac.Utils.Agent.isInbound(contact);
            results.next = action.success;
            break;

          case NODE_TYPES.U_ContactIsQueueCallback:
            contact = await ac.Utils.Contact.getContactFromCurrentSession();
            results.value = ac.Utils.Agent.isQueueCallback(contact);
            results.next = action.success;
            break;

          case NODE_TYPES.U_ContactStatus:
            contact = await ac.Utils.Contact.getContactFromCurrentSession();
            results.value = ac.Utils.Agent.getContactStatus(contact);
            results.next = action.success;
            break;

          case NODE_TYPES.U_ContactPhoneNumber:
            contact = await ac.Utils.Contact.getContactFromCurrentSession();
            results.value = ac.Utils.Agent.getCustomerPhoneNumber(contact);
            results.next = action.success;
            break;

          case NODE_TYPES.U_ContactGetAttributeValue:
            contact = await ac.Utils.Contact.getContactFromCurrentSession();
            results.value = ac.Utils.Agent.getAttributeValue(
              contact,
              args.attributeName,
              args.defaultValue
            );
            results.next = action.success;
            break;
        }
        // End Contact Actions

        _context.actions[action.id] = {
          name: action.name,
          startTimestamp: action.startTimeStamp,
          endTimestamp: new Date().getTime(),
          success: true,
          results: results,
        };

        nextAction = _findActionById(results.next);

        if (nextAction && nextAction.type !== NODE_TYPES.U_End) {
          _executions.push(`${action.id} > ${nextAction.id}`);
          await _executeAction(nextAction);
        }
      } catch (err) {
        _context.actions[action.id] = {
          name: action.name,
          startTimestamp: action.startTimeStamp,
          endTimestamp: new Date().getTime(),
          success: false,
          errors: err,
        };

        nextAction = _findActionById(action.failure);

        if (nextAction && nextAction.type !== NODE_TYPES.U_End) {
          _executions.push(`${action.id} > failure > ${action.failure}`);
          await _executeAction(_findActionById(action.failure));
        }
      }
    }
  };

  const _initializeContext = (params) => {
    let context = {
      actions: {},
    };

    // Setup system property
    context.system = {
      startTimeStamp: new Date().getTime(),
    };

    // Setup payload property (click to dial, navigation change)
    if (params.payload) {
      context.payload = params.payload;
    }

    // Setup agent property
    if (params.agent) {
      context.agent = ac.Utils.Agent.expandAgent(params.agent);
    }

    // Setup current contact property
    if (params.contact) {
      context.contact = ac.Utils.Contact.expandContact(params.contact);
    }

    return context;
  };

  const _findActionById = (id) => {
    let action = null;

    if (id && _script && _script.actions.length > 0) {
      action = _script.actions.find((action) => {
        return action.id === id;
      });
    }

    return action;
  };

  const _findStartAction = () => {
    let action = null;

    if (_script && _script.actions.length > 0) {
      action = _script.actions.find((action) => {
        return action.type === NODE_TYPES.U_Start;
      });
    }

    return action;
  };

  const _expandArgs = (args) => {
    Object.entries(args).forEach(([key, value]) => {
      if (value && typeof value === 'object') {
        let e = _expandArgs(value);
        return e;
      }

      args[key] = _evaluate(value);
    });
  };

  const _evaluate = (value) => {
    let result;

    if (
      (typeof value === 'string' || value instanceof String) &&
      value.startsWith('$.')
    ) {
      result = JSONPath.JSONPath({
        path: value,
        json: _context,
        wrap: false,
        preventEval: true,
      });
    } else {
      result = value;
    }

    return result;
  };

  const _getScriptForSourceAndEvent = (source, event) =>
    new Promise((resolve, reject) => {
      let ctiAdapter = ac.Utils.Common.getProperty({ key: 'ctiAdapter' });

      try {
        if (ctiAdapter) {
          Visualforce.remoting.Manager.invokeAction(
            ac.Utils.Salesforce.getNamespaceClassPrefix() +
              'AC_Utils.getCtiScript',
            ctiAdapter.Id,
            source,
            event,
            (response, event) => {
              if (event && event.status && response) {
                resolve(
                  ac.Utils.Common.buildResolve(
                    JSON.parse(response.replace(/&quot;/g, '"'))
                  )
                );
              } else {
                reject(
                  ac.Utils.Common.buildReject(
                    '_getScriptForSourceAndEvent error',
                    response.errors
                  )
                );
              }
            }
          );
        }
      } catch (err) {
        reject(
          ac.Utils.Common.buildReject('_getScriptForSourceAndEvent error', err)
        );
      }
    });
})(this);
