/**

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

(function(ctx) {
  if (ctx.ACSFIntegration === undefined) {
    ctx.ACSFIntegration = {};
  }

  var _tabLabel;
  var _namespaceObjectPrefix;
  var _namespaceClassPrefix;
  var _ccSettings;

  var _taskAutoCreate;
  var _taskForCallType;
  var _taskAutoUpdateDuration;
  var _taskAction;
  var _publishContactAttributes;

  ctx.ACSFIntegration.CallTask = {
    onAgentHandler : function(namespaceClassPrefix,namespacePagePrefix, tabLabel, ccSettings) {
      connect.getLog().info("ACSFIntegration:CallTask:onAgentHandler invoked");

      _namespaceClassPrefix = namespaceClassPrefix;
      _namespaceObjectPrefix = namespacePagePrefix;

      _tabLabel = tabLabel;
      _ccSettings = ccSettings;

      connect.contact(function (contact) {
        var conns = contact.getConnections();
        var custConn = conns.find(
            c => c.getType() === connect.ConnectionType.INBOUND || c.getType() === connect.ConnectionType.OUTBOUND
        );

        if (!custConn)
          return;

        setCallContextProperty('callType', contact.isInbound() ? 'Inbound' : 'Outbound');

        if (contact.getType() === connect.ContactType.QUEUE_CALLBACK) {
          setCallContextProperty('callSubjectType', 'Queue Callback');
        }
        else {
          setCallContextProperty('callSubjectType', contact.isInbound() ? 'Inbound' : 'Outbound');
        }

        var phoneNumber = custConn.getEndpoint().phoneNumber;
        var containsAtSymbol = phoneNumber.indexOf('@') > -1;
        setCallContextProperty('callPhoneNumber', phoneNumber.substring(0, containsAtSymbol ? phoneNumber.indexOf('@') : phoneNumber.length).replace('sip:', ''));

        _taskAutoCreate = _ccSettings["/reqConnectSFCCPOptions/reqTaskAutoCreate"] === 'true';
        _taskForCallType = _ccSettings["/reqConnectSFCCPOptions/reqTaskForCallType"] || 'inbound';
        _taskAutoUpdateDuration = _ccSettings["/reqConnectSFCCPOptions/reqTaskAutoUpdateDuration"] === 'true';
        _taskAction = _ccSettings["/reqConnectSFCCPOptions/reqTaskAction"] || 'none';
        _publishContactAttributes = _ccSettings["/reqConnectSFCCPOptions/reqPublishContactAttributes"] === 'true';
      });

      connect.agent(function (agent) {
        agent.onStateChange(function () {
          if (agent.getState().type === connect.AgentStateType.ROUTABLE) {
            clearCallContext();
            ctx.ACSFIntegration.CallAttributesDisplay.onEnded(null);
          }
        });
      });
    },

    onIncoming : function(contact) {
      try {
        connect.getLog().info("ACSFIntegration:CallTask:onAgentHandler:ContactOnIncomingHandler invoked");

        if (_taskAutoCreate) {
          if (contact.getType() === connect.ContactType.QUEUE_CALLBACK && (_taskForCallType.indexOf("callback") >= 0 || _taskForCallType.indexOf("any") >= 0)) {
            processContactStart(contact);
          }
        }
      }
      catch (e) {
        connect.getLog().error("ACSFIntegration:CallTask:onIncoming:Error:").withException(e);
      }
    },

    onConnecting : function(contact) {
      try {
        connect.getLog().info("ACSFIntegration:CallTask:onAgentHandler:ContactOnConnectingHandler invoked");

        var callbackInProgress = sessionStorage.getItem('CCP-callbackInProgress') === 'true';

        if (_taskAutoCreate) {
          if (contact.isInbound() && contact.getType() === connect.ContactType.VOICE && (_taskForCallType.indexOf("inbound") >= 0 || _taskForCallType.indexOf("any") >= 0)) {
            processContactStart(contact);
          }
          else if (!contact.isInbound() && contact.getType() === connect.ContactType.VOICE && !callbackInProgress && (_taskForCallType.indexOf("outbound") >= 0 || _taskForCallType.indexOf("any") >= 0)) {
            processContactStart(contact);
          }
        }
      }
      catch (e) {
        connect.getLog().error("ACSFIntegration:CallTask:onConnecting:Error:").withException(e);
      }
    },

    onConnected : function(contact) {
      try {
        connect.getLog().info("ACSFIntegration:CallTask:onAgentHandler:ContactOnConnectedHandler invoked");

        var callbackInProgress = sessionStorage.getItem('CCP-callbackInProgress') === 'true';

        if (_taskAutoCreate) {
          if (contact.isInbound() && contact.getType() === connect.ContactType.VOICE && (_taskForCallType.indexOf("inbound") >= 0 || _taskForCallType.indexOf("any") >= 0)) {
            processContactStart(contact);
          }
          else if (!contact.isInbound() && contact.getType() === connect.ContactType.VOICE && !callbackInProgress && (_taskForCallType.indexOf("outbound") >= 0 || _taskForCallType.indexOf("any") >= 0)) {
            processContactStart(contact);
          }
          else if (contact.isInbound() && contact.getType() === connect.ContactType.QUEUE_CALLBACK && callbackInProgress && (_taskForCallType.indexOf("callback") >= 0 || _taskForCallType.indexOf("any") >= 0)) {
            processContactStart(contact);
          }
        }
      }
      catch (e) {
        connect.getLog().error("ACSFIntegration:CallTask:onConnected:Error:").withException(e);
      }
    },

    onEnded : function(contact) {
      connect.getLog().info("ACSFIntegration:CallTask:onAgentHandler:ContactOnEndedHandler invoked");

      if (_taskAutoCreate) {
        if (_taskAutoUpdateDuration && getCurrentCallContext().callTaskId) {
          updateTask(contact, getCurrentCallContext());
        }

        if (_taskAction === 'end') {
          popTask(getCurrentCallContext());
        }
      }
    }
  };

  /**
   *
   * @param contact
   */
  function processContactStart(contact) {
    var agent = window.ccp.agent;
    //connect.agent(function(agent) {
    setCallContextProperty('callAgentUserName', agent.getConfiguration().username);
    setCallContextProperty('callAgentFriendlyName', agent.getName());
    //});

    setCallContextProperty('callQueue', contact.getQueue().name || '');

    var now = new Date();
    setCallContextProperty('callStartDate', now);
    setCallContextProperty('callStartTime', now.getTime());
    setCallContextProperty('callStartDateTime', now.toISOString());

    if (_publishContactAttributes) {
      setCallContextProperty('callContactAttributes', JSON.stringify(contact.getAttributes()));
    }

    saveInitialTask(contact, getCurrentCallContext());
  }

  /**
   *
   * @param contact
   * @param context
   */
  function saveInitialTask(contact, context) {

    var s = _ccSettings["/reqConnectSFCCPOptions/reqTaskStaticValues"] || "{}";

    var taskStaticValues = JSON.parse(s) || {};

    if (sessionStorage.getItem("CCP-callTaskId") === null || sessionStorage.getItem("CCP-callTaskId") === "")
    {
      setCallContextProperty("contactId",contact.contactId);
      if (sforce.interaction) {
        var initialTaskString = getInitialTaskString(contact, context, taskStaticValues);

        connect.getLog().info("ACSFIntegration:CallTask:saveInitialTask saving task with URL parameters: %s", initialTaskString);

        sforce.interaction.saveLog("Task", initialTaskString, saveInitialTaskCallback);
      }

      if (sforce.opencti) {
        var initialTaskObject = getInitialTaskObject(contact, context, taskStaticValues);

        connect.getLog().info("ACSFIntegration:CallTask:saveInitialTask saving task with object: %s", JSON.stringify(initialTaskObject));

        sforce.opencti.saveLog({
          value: initialTaskObject,
          callback: saveInitialTaskCallback
        });
      }
    }
  }

  /**
   *
   * @param response
   */

  function saveInitialTaskCallback(response) {
    if (response.success === false || response.result === null || response.returnValue === null || response.error !== undefined) {
      connect.getLog().error("ACSFIntegration:CallTask:saveInitialTask failed to save task").withObject(response.error);
      return;
    }

    var taskId  = response.result || response.returnValue.recordId;

    connect.getLog().info("ACSFIntegration:CallTask:saveInitialTask task saved. Id=%s", taskId);

    setCallContextProperty('callTaskId', taskId);

    if (_taskAction === 'start') {
      popTask(getCurrentCallContext());
    }
  }


  /**
   *
   * @param contact
   * @param context
   */
  function updateTask(contact, context) {
    if (context.callActive) {
      var now = new Date();
      setCallContextProperty('callEndDate', now);
      setCallContextProperty('callEndTime', now.getTime());
      setCallContextProperty('callEndDateTime', now.toISOString());

      if (sforce.interaction) {
        var updateTaskString = getUpdateTaskString(contact, getCurrentCallContext());

        connect.getLog().info("ACSFIntegration:CallTask:updateTask updating task with URL parameters: %s ", updateTaskString);

        sforce.interaction && sforce.interaction.saveLog("Task", updateTaskString, updateTaskCallback);
      }

      if (sforce.opencti) {
        var updateTaskObject = getUpdateTaskObject(contact, getCurrentCallContext());

        connect.getLog().info("ACSFIntegration:CallTask:updateTask updating task with object: %s", JSON.stringify(updateTaskObject));

        sforce.opencti && sforce.opencti.saveLog({
          value: updateTaskObject,
          callback: updateTaskCallback
        });
      }
    }
  }

  /**
   *
   * @param response
   */
  function updateTaskCallback(response) {
    if (response.success === false || response.result === null || response.returnValue === null || response.error !== undefined) {
      connect.getLog().error("ACSFIntegration:CallTask:updateTask failed to update task").withObject(response.error);
      return;
    }

    var taskId  = response.result || response.returnValue.recordId;

    connect.getLog().info("ACSFIntegration:CallTask:updateTask task updated. Id=%s", taskId);
  }

  /**
   *
   * @param callContext
   */
  function popTask(callContext) {

    if (callContext.callTaskId) {
      var taskPage = _ccSettings["/reqConnectSFCCPOptions/reqTaskPage"] || '';

      var taskURL = '';

      switch (taskPage) {
        case '':
          taskURL = "/apex/" + _namespaceObjectPrefix + 'ACSFCCP_CallTask' + "?id=" + callContext.callTaskId;
          break;

        case 'DEFAULT_TASK_LAYOUT':
          taskURL = "/" + callContext.callTaskId;
          break;

        default:
          taskURL = "/apex/" + taskPage + "?id=" + callContext.callTaskId + "&ani=" + callContext.callPhoneNumber;
      }

      var objectId = sessionStorage.getItem("CCP-callRecordId");

      if (sforce.console) {
        if (sforce.console.isInConsole()) {
          var targetTabId = null;

          if (objectId != null) {
            getTabObjectMap().then(function (tabObjectMap) {
              targetTabId = tabObjectMap[objectId];

              if (targetTabId) {
                sforce.console.openSubtab(targetTabId, taskURL, true, _tabLabel, null, popTaskCallbackSubtab);
              } else {
                sforce.console.openPrimaryTab(null, taskURL, true, _tabLabel, popTaskCallbackPrimaryTab);
              }
            });
          } else {
            sforce.console.openPrimaryTab(null, taskURL, true, _tabLabel, popTaskCallbackPrimaryTab);
          }
        } else {
          if (sforce.opencti) {
            sforce.opencti.screenPop({
              type: sforce.opencti.SCREENPOP_TYPE.SOBJECT,
              params: {
                recordId: callContext.callTaskId
              },
              callback: popTaskCallbackOpenCtiPop
            });
          } else {
            sforce.interaction.screenPop('/' + callContext.callTaskId, true, popTaskCallbackInteractionPop);

          }
        }
      }
    }
  }

  /**
   *
   * @param result
   */
  function popTaskCallbackSubtab(result) {
    if (result.success) {
      sforce.console && sforce.console.focusSubtabById(result.id, function(result) {
        if (result.success) {
          connect.getLog().info("ACSFIntegration:CallTask:popTaskCallbackSubtab success");
        }
        else {
          connect.getLog().info("ACSFIntegration:CallTask:popTaskCallbackSubtab error: %s", JSON.stringify(result));
        }
      });
    }
    else {
      connect.getLog().error("ACSFIntegration:CallTask:popTaskCallbackSubtab error: %s", JSON.stringify(result));
    }
  }

  /**
   *
   * @param result
   */
  function popTaskCallbackPrimaryTab(result) {
    if (result.success) {
      sforce.console && sforce.console.focusPrimaryTabById(result.id, function(result) {
        if (result.success) {
          connect.getLog().info("ACSFIntegration:CallTask:popTaskCallbackSubtab success");
        }
        else {
          connect.getLog().info("ACSFIntegration:CallTask:popTaskCallbackSubtab error: %s", JSON.stringify(result));
        }
      });
    }
    else {
      connect.getLog().error("ACSFIntegration:CallTask:popTaskCallbackSubtab error: %s", JSON.stringify(result));
    }
  }

  function sleep (time) {
    return new Promise((resolve) => setTimeout(resolve, time));
  }

  /**
   *
   * @param result
   */
  function popTaskCallbackOpenCtiPop(result) {
    if (result.success) {
      connect.getLog().info("ACSFIntegration:CallTask:popTaskCallbackOpenCtiPop success");
    }
    else {
      connect.getLog().info("ACSFIntegration:CallTask:popTaskCallbackOpenCtiPop error: %s", JSON.stringify(result));
    }
  }

  /**
   *
   * @param result
   */
  function popTaskCallbackInteractionPop(result) {
    if (result.success) {
      connect.getLog().info("ACSFIntegration:CallTask:popTaskCallbackInteractionPop success");
    }
    else {
      connect.getLog().info("ACSFIntegration:CallTask:popTaskCallbackInteractionPop error: %s", JSON.stringify(result));
    }
  }

  /**
   *
   * @param name
   * @param value
   */
  function setCallContextProperty(name, value) {
    connect.getLog().info("ACSFIntegration:CallTask:setCallContextProperty setting call context property %s to %s ", name, value);
    sessionStorage.setItem("CCP-" + name, value);
  }

  /**
   *
   */
  function clearCallContext() {
    connect.getLog("########## Clearing call context!!!");
    //sessionStorage.removeItem("CCP-callActive");
    sessionStorage.removeItem("CCP-callQueue");
    sessionStorage.removeItem("CCP-callType");
    sessionStorage.removeItem("CCP-callStartDate");
    sessionStorage.removeItem("CCP-callStartTime");
    sessionStorage.removeItem("CCP-callStartDateTime");
    sessionStorage.removeItem("CCP-callEndDate");
    sessionStorage.removeItem("CCP-callEndTime");
    sessionStorage.removeItem("CCP-callEndDateTime");
    sessionStorage.removeItem("CCP-callPhoneNumber");
    sessionStorage.removeItem("CCP-callAgentUserName");
    sessionStorage.removeItem("CCP-callAgentFriendlyName");
    //sessionStorage.removeItem("CCP-callTaskId");
    sessionStorage.removeItem("CCP-callSubjectType");
    sessionStorage.removeItem("CCP-callRecordId");
    //sessionStorage.removeItem("CCP-callExactMatch");
    sessionStorage.removeItem("CCP-callContactAttributes");
    //sessionStorage.removeItem("CCP-whoId");
    //sessionStorage.removeItem("CCP-whatId");
    //sessionStorage.removeItem("CCP-callbackInProgress");
  }

  /**
   *
   * @returns {{
   *    callStartDate: string,
   *    callEndTime: string,
   *    whoId: string,
   *    callTaskId: string,
   *    callEndDateTime: string,
   *    whatId: string,
   *    callStartTime: string,
   *    callAgentUserName: string,
   *    callEndDate: string,
   *    callActive: string,
   *    callType: string,
   *    callQueue: string,
   *    callPhoneNumber: string,
   *    callStartDateTime: string,
   *    callAgentFriendlyName: string
   *  }}
   */
  function getCurrentCallContext() {
    var result = {
      callActive: sessionStorage.getItem("CCP-callActive"),
      callQueue: sessionStorage.getItem("CCP-callQueue"),
      callType: sessionStorage.getItem("CCP-callType"),
      callStartDate: sessionStorage.getItem("CCP-callStartDate"),
      callStartTime: sessionStorage.getItem("CCP-callStartTime"),
      callStartDateTime: sessionStorage.getItem("CCP-callStartDateTime"),
      callEndDate: sessionStorage.getItem("CCP_callEndDate"),
      callEndTime: sessionStorage.getItem("CCP-callEndTime"),
      callEndDateTime: sessionStorage.getItem("CCP-callEndDateTime"),
      callPhoneNumber: sessionStorage.getItem("CCP-callPhoneNumber"),
      callAgentUserName: sessionStorage.getItem("CCP-callAgentUserName"),
      callAgentFriendlyName: sessionStorage.getItem("CCP-callAgentFriendlyName"),
      callTaskId: sessionStorage.getItem("CCP-callTaskId"),
      callSubjectType: sessionStorage.getItem("CCP-callSubjectType"),
      callRecordId: sessionStorage.getItem("CCP-callRecordId"),
      isExactMatch: sessionStorage.getItem("CCP-callExactMatch"),
      callContactAttributes: JSON.parse(sessionStorage.getItem("CCP-callContactAttributes")),
      whoId: sessionStorage.getItem("CCP-whoId"),
      whatId: sessionStorage.getItem("CCP-whatId"),
      callbackInProgress: sessionStorage.getItem("CCP-callbackInProgress")
    };

    connect.getLog().info("ACSFIntegration:CallTask:getCurrentCallContext Current call context: ").withObject(result);
    return result;
  }

  /**
   *
   * @param callContact
   * @param callContext
   * @param taskStaticValues
   * @returns {string}
   */
  function getInitialTaskString(callContact, callContext, taskStaticValues) {
    var taskObject = getInitialTaskObject(callContact, callContext, taskStaticValues);

    delete taskObject.entityApiName;

    var taskString = Object.keys(taskObject).map((key) => {
      return encodeURIComponent(key) + '=' + encodeURIComponent(taskObject[key])
    }).join('&');

    return taskString;
  }

  /**
   *
   * @param callContact
   * @param callContext
   * @param taskStaticValues
   * @returns {{Status: string, CallObject: *, Type: string, ActivityDate: string | *, TaskSubtype: string, entityApiName: string, Phone: string | *, CallType: string | module.exports.operations.GetAgentSnapshot.output.members.snapshot.members.contacts.member.members.connections.member.members.softphoneMediaInfo.members.callType | {} | module.exports.operations.GetAgentSnapshot.output.members.snapshot.members.contacts.member.members.connections.member.members.softphoneMediaInfo.members.callType, IsClosed: boolean, Subject: string}}
   */
  function getInitialTaskObject(callContact, callContext, taskStaticValues) {
    var queueName = getQueueName(callContext);

    var taskObject = {
      entityApiName: 'Task',
      CallObject: callContact.getContactId(),
      CallType: callContext.callType,
      Type: 'Call',
      IsClosed: true,
      Status: 'Completed',
      ActivityDate: callContext.callStartDateTime,
      Subject: callContext.callSubjectType + " - " + queueName + " - " + callContext.callPhoneNumber,
      TaskSubtype: 'Call',
      Phone: callContext.callPhoneNumber
    };

    if (sessionStorage.getItem("CCP-callExactMatch") === 'true' && callContext.whoId) {
      taskObject.WhoId = callContext.whoId;
    }

    if (sessionStorage.getItem("CCP-callExactMatch") === 'true' && callContext.whatId) {
      taskObject.WhatId = callContext.whatId;
    }

    Object.entries(taskStaticValues).forEach(entry => {
      taskObject[entry[0]] = entry[1];
    });

    return taskObject;
  }

  /**
   *
   * @param callContact
   * @param callContext
   * @returns {string}
   */
  function getUpdateTaskString(callContact, callContext) {
    var taskObject = getUpdateTaskObject(callContact, callContext);

    var taskString = Object.keys(taskObject).map((key) => {
      return encodeURIComponent(key) + '=' + encodeURIComponent(taskObject[key])
    }).join('&');

    return taskString;
  }

  /**
   *
   * @param callContact
   * @param callContext
   * @returns {{CallDurationInSeconds: (*|number), Id: string | *}}
   */
  function getUpdateTaskObject(callContact, callContext) {
    var taskDuration = getTaskDuration(callContact, callContext);

    var taskObject = {
      Id: callContext.callTaskId,
      CallDurationInSeconds: taskDuration
    };

    /*
    if (callContext.whoId) {
      taskObject.WhoId = callContext.whoId;
    }

    if (callContext.whatId) {
      taskObject.WhatId = callContext.whatId;
    }
     */

    return taskObject;
  }

  /**
   *
   * @param callContext
   * @returns {string|*}
   */
  function getQueueName(callContext) {
    var queueName = '';

    if (callContext.callQueue && callContext.callQueue !== '') {
      queueName = callContext.callQueue;
    }
    else {
      var includeAgentFriendlyName = _ccSettings["/reqConnectSFCCPOptions/reqTaskIncludeAgentFriendlyName"] || 'false';

      queueName = callContext.callAgentUserName;
      queueName += includeAgentFriendlyName === 'true' ? ' (' + callContext.callAgentFriendlyName + ')' : '';
    }

    return queueName;
  }

  /**
   *
   * @param callContact
   * @param callContext
   * @returns {number}
   */
  function getTaskDuration(callContact, callContext) {
    if (callContext.callEndTime) {
      return Math.floor((callContext.callEndTime - callContext.callStartTime) / 1000);
    }

    return 0;
  }

  function getPrimaryTabIds() {
    return new Promise((resolve, reject) => {
      sforce.console.getPrimaryTabIds(function(result) {
        if (result && result.ids) {
          resolve(result.ids);
        }
        else {
          reject(null);
        }
      })
    });
  }

  function getObjectOnTab(tabId) {
    return new Promise((resolve, reject) => {
      sforce.console.getPageInfo(tabId, function(result) {
        if (result && result.success) {
          var obj = {
            'objectId': JSON.parse(result.pageInfo).objectId,
            'tabId': tabId
          };

          resolve(obj);
        }
        else {
          reject(null);
        }
      })
    });
  }

  function getTabObjectMap() {
    return new Promise((resolve, reject) => {
      var tabObjectMap = {};

      getPrimaryTabIds().then(function (tabArray) {
        var promises = [];

        tabArray.forEach(function (tabId) {
          promises.push(getObjectOnTab(tabId));
        });

        Promise.all(promises).then(function (values) {
          values.forEach(function(value) {
            if (value.objectId) {
              tabObjectMap[value.objectId] = value.tabId;
            }
          });
          resolve(tabObjectMap);
        }).catch(function (error) {
          resolve(tabObjectMap);
        });
      });
    });
  }
})(this);
