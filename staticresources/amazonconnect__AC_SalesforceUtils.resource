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
   * @class ac.Utils.Salesforce
   * @memberOf ac.Utils
   *
   * @description
   * The ac.Utils.Salesforce class provides helper methods for Salesforce scripting.
   */
  ac.Utils.Salesforce = {
    /**
     * Initializes the ac.Utils.Salesforce utility
     *
     * @private
     */
    init: async () => {},

    /**
     * Returns entity field value taking into account any namespace value
     *
     * @static
     *
     * @param {Object} entity - The object
     * @param {String} field - The field
     * @param {String|Number|Boolean|Object} defaultValue - The default value
     *
     * @returns {Object}
     */
    getValueWithNamespace: (entity, field, defaultValue = null) => {
      try {
        if (!field.endsWith('__c') && !field.endsWith('__r')) {
          return entity.hasOwnProperty(field) ? entity[field] : defaultValue;
        } else {
          let namespace = _getNamespacePagePrefix();

          return entity.hasOwnProperty(`${namespace}${field}`)
            ? entity[`${namespace}${field}`]
            : defaultValue;
        }
      } catch (err) {
        ac.Utils.Log.error('getValueWithNamespace error');
        return defaultValue;
      }
    },

    /**
     * Gets the current page namespace with prepended "__" (double underscore)
     *
     * @static
     *
     * @returns {String}
     */
    getNamespacePagePrefix: () => {
      return _getNamespacePagePrefix();
    },

    /**
     * Returns the object ID of the primary tab on which the browser
     * is focused. This method is only available in API version 25.0 or later.
     *
     * @static
     *
     *
     * @see:  https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_getfocusedprimarytabobjectid.htm
     *
     * @returns {String}
     */
    getFocusedPrimaryTabObjectId: () => {
      return new Promise((resolve, reject) => {
        if (ac.Utils.Common.isLightning() || ac.Utils.Common.isConsole()) {
          const errMsg =
            "Returning the primary tab object ID on which the browser is focused wasn't successful.";

          const callback = (result) => {
            if (result.success) {
              resolve(result.id);
            } else {
              reject(ac.Utils.Common.buildReject(errMsg));
            }
          };
          if (sforce.console && sforce.console) {
            sforce.console.getFocusedPrimaryTabObjectId(callback);
          } else {
            reject(
              ac.Utils.Common.buildReject('Console library is not available.')
            );
          }
        } else {
          reject(
            ac.Utils.Common.buildRejectUnsupportedOperation(
              ac.Utils.Common.getMode(),
              null
            )
          );
        }
      });
    },

    /**
     * Returns the object ID of the subtab on which the browser is focused.
     * For example, a case ID or account ID. This method is only available
     * in API version 24.0 or later.
     *
     * @static
     *
     *
     * @see: https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_getfocusedsubtabobjectid.htm
     *
     * @returns {String}
     */
    getFocusedSubtabObjectId: () => {
      return new Promise((resolve, reject) => {
        if (ac.Utils.Common.isLightning() || ac.Utils.Common.isConsole()) {
          const errMsg =
            "Returning the object ID of the focused subtab wasn't successful.";

          const callback = (result) => {
            if (result.success) {
              resolve(result.id);
            } else {
              reject(ac.Utils.Common.buildReject(errMsg));
            }
          };
          if (sforce.console && sforce.console) {
            sforce.console.getFocusedSubtabObjectId(callback);
          } else {
            reject(
              ac.Utils.Common.buildReject('Console library is not available.')
            );
          }
        } else {
          reject(
            ac.Utils.Common.buildRejectUnsupportedOperation(
              ac.Utils.Common.getMode(),
              null
            )
          );
        }
      });
    },

    /**
     * Gets the current class namespace with prepended "." (period)
     *
     * @static
     *
     * @returns {String}
     */
    getNamespaceClassPrefix: () => {
      return _getNamespaceClassPrefix();
    },

    /**
     * Gets call center settings
     *
     * @static
     * @async
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_getcallcentersettings_lex.htm
     */
    getCallCenterSettings: () =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.getCallCenterSettings({
                callback: (response) => {
                  if (response && response.success) {
                    resolve(response.returnValue);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'getCallCenterSettings error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            sforce.interaction &&
              sforce.interaction.cti &&
              sforce.interaction.cti.getCallCenterSettings((response) => {
                if (response && response.result) {
                  resolve(JSON.parse(response.result));
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'getCallCenterSettings error',
                      response.error
                    )
                  );
                }
              });
          }
        } catch (err) {
          reject(err);
        }
      }),

    /**
     * @static
     * @async
     *
     * @returns {Promise<Boolean | Error>}
     */
    isInConsole: () =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            resolve(true);
          } else {
            sforce.interaction &&
              sforce.interaction.isInConsole((response) => {
                if (response && response.result) {
                  resolve(response.result);
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'isInConsole error',
                      response.error
                    )
                  );
                }
              });
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('isInConsole error', err));
        }
      }),

    /**
     * Gets the cti adatper object for the specified name
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.name - The cti adapter name
     *
     * @returns {Promise<Object | Error>}
     */
    getCtiAdapter: (args) =>
      new Promise((resolve, reject) => {
        try {
          Visualforce.remoting.Manager.invokeAction(
            _getNamespaceClassPrefix() + 'AC_Utils.getCtiAdapter',
            args.name,
            (response, event) => {
              if (event && event.status) {
                resolve(response);
              } else {
                reject(
                  ac.Utils.Common.buildReject(
                    'getCtiAdapter error',
                    response.errors
                  )
                );
              }
            }
          );
        } catch (err) {
          reject(ac.Utils.Common.buildReject('getCtiAdapter error', err));
        }
      }),

    /**
     * Logs a contact as a Salesforce task
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.type - The entity type
     * @param {String} args.recordId - The record id (null to create a new record)
     * @param {Map<String, Object>} args.fields - The entity field values
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_savelog_lex.htm
     */
    logContact: (args) =>
      new Promise((resolve, reject) => {
        try {
          let value = args.fields;

          if (ac.Utils.Common.isLightning()) {
            if (args.recordId) {
              value.Id = args.recordId;
            } else {
              value.entityApiName = args.type;
            }

            sforce.opencti &&
              sforce.opencti.saveLog({
                value: value,
                callback: (response) => {
                  if (response && response.success) {
                    resolve(response.returnValue);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'logContact error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            if (args.recordId) {
              value.Id = args.recordId;
            }

            sforce.interaction &&
              sforce.interaction.saveLog(
                args.type,
                $.param(value),
                (response) => {
                  if (response && response.result) {
                    resolve(response.result);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'saveLog error',
                        response.error
                      )
                    );
                  }
                }
              );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('saveLog error', err));
        }
      }),

    /**
     * Examines Amazon Connect permissions for outbound calling to determine if click-to-dial should be enabled
     *
     * @static
     *
     * @returns {Boolean}
     *
     * @throws {Error}
     */
    shouldEnableClickToDial: () => {
      const agent = ac.Utils.Agent.getAgent();

      if (!agent) {
        throw ac.Utils.Common.buildError('Agent cannot be undefined');
      }

      return !!agent.getPermissions().includes('outboundCall');
    },

    /**
     * Disables click-to-dial within the Salesforce UI
     *
     * @static
     * @async
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_disableclicktodial_lex.htm
     */
    disableClickToDial: () =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.disableClickToDial({
                callback: (response) => {
                  if (response && response.success) {
                    resolve(true);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'disableClickToDial error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            sforce.interaction &&
              sforce.interaction.cti &&
              sforce.interaction.cti.disableClickToDial((response) => {
                if (response && response.result) {
                  resolve(response.result);
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'disableClickToDial error',
                      response.error
                    )
                  );
                }
              });
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('disableClickToDial error', err));
        }
      }),

    /**
     * Enables click-to-dial within the Salesforce UI
     *
     * @static
     * @async
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_enableclicktodial_lex.htm
     */
    enableClickToDial: () =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.enableClickToDial({
                callback: (response) => {
                  if (response && response.success) {
                    resolve(true);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'disableClickToDial error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            sforce.interaction &&
              sforce.interaction.cti &&
              sforce.interaction.cti.enableClickToDial((response) => {
                if (response && response.result) {
                  resolve(response.result);
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'disableClickToDial error',
                      response.error
                    )
                  );
                }
              });
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('disableClickToDial error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @returns {Promise<Object|Error>}
     *
     * @see (Lightning) https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_getappviewinfo_lex.htm
     * @see (Classic / Console) https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_getpageinfo.htm
     */
    getViewInfo: () =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.getAppViewInfo({
                callback: (response) => {
                  if (response && response.success) {
                    resolve(response.returnValue);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'getViewInfo error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            sforce.interaction &&
              sforce.interaction.getPageInfo((response) => {
                if (response && response.result) {
                  resolve(response.result);
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'getViewInfo error',
                      response.error
                    )
                  );
                }
              });
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('getViewInfo error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_getsoftphonelayout_lex.htm
     */
    getSoftphoneLayout: () =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.getSoftphoneLayout({
                callback: (response) => {
                  if (response && response.success) {
                    resolve(response.returnValue);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'getSoftphoneLayout error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            sforce.interaction &&
              sforce.interaction.cti &&
              sforce.interaction.cti.getSoftphoneLayout((response) => {
                if (response && response.result) {
                  resolve(response.result);
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'getSoftphoneLayout error',
                      response.error
                    )
                  );
                }
              });
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('getSoftphoneLayout error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_refreshview_lex.htm
     */
    refreshView: () =>
      new Promise((resolve, reject) => {
        try {
          sforce.opencti &&
            sforce.opencti.refreshView({
              callback: (response) => {
                if (response && response.success) {
                  resolve();
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'refreshView error',
                      response.errors
                    )
                  );
                }
              },
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('refreshView error', err));
        }
      }),

    /**
     * Shows the softphone panel if it is currently not being shown
     *
     * @static
     * @async

     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_setsoftphonepanelvisibility_lex.htm
     */
    showSoftphonePanel: async () => {
      try {
        if (ac.Utils.Common.isLightning()) {
          let isSoftphoneVisible = await _isSoftphonePanelVisible();

          if (!isSoftphoneVisible) {
            await _setSoftphonePanelVisibility(true);
          }
        }
      } catch (err) {
        throw err;
      }
    },

    /**
     * Hides the softphone panel if it is currently being shown
     *
     * @static
     * @async

     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_setsoftphonepanelvisibility_lex.htm
     */
    hideSoftphonePanel: async () => {
      try {
        if (ac.Utils.Common.isLightning()) {
          const isSoftphoneVisible = await _isSoftphonePanelVisible();

          if (isSoftphoneVisible) {
            await _setSoftphonePanelVisibility(false);
          }
        }
      } catch (err) {
        throw err;
      }
    },

    /**
     * Screnpops a record based upon a Salesforce Id
     *
     * @static
     * @async

     * @param {Object} args
     * @param {String} args.recordId - The record id to pop
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_screenpop_lex.htm
     */
    screenPopObject: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.screenPop({
                type: sforce.opencti.SCREENPOP_TYPE.SOBJECT,
                params: {
                  recordId: args.recordId,
                },
                callback: (response) => {
                  if (response.success) {
                    resolve();
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'screenPopObject error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            sforce.interaction &&
              sforce.interaction.screenPop(
                `/${args.recordId}`,
                true,
                (response) => {
                  if (response && response.result) {
                    resolve();
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'screenPopObject error',
                        response.error
                      )
                    );
                  }
                }
              );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('screenPopObject error', err));
        }
      }),

    /**
     * Screenpops to the specified screenPopData configuration
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.type - The entity type
     * @param {Map<String, Object>} args.params - The screenpop data.  Typically returned from a deferred call to searchAndScreenPop
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_screenpop_lex.htm
     */
    screenPop: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.screenPop({
                type: args.type,
                params: args.params,
                callback: (response) => {
                  if (response.success) {
                    resolve();
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'screenPopUrl error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            resolve();
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('screenPopUrl error', err));
        }
      }),

    /**
     * Screenpops a url in a new browser tab or browser window
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.url - The url to pop
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_screenpop_lex.htm
     */
    screenPopUrl: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.screenPop({
                type: sforce.opencti.SCREENPOP_TYPE.URL,
                params: {
                  url: args.url,
                },
                callback: (response) => {
                  if (response.success) {
                    resolve();
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'screenPopUrl error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            sforce.interaction &&
              sforce.interaction.screenPop(args.url, true, (response) => {
                if (response && response.result) {
                  resolve();
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'screenPopObject error',
                      response.error
                    )
                  );
                }
              });
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('screenPopUrl error', err));
        }
      }),

    /**
     * Screenpops to an object's home page
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.scope - The scope
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_screenpop_lex.htm
     */
    screenPopObjectHome: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.screenPop({
                type: sforce.opencti.SCREENPOP_TYPE.OBJECT_HOME,
                params: {
                  scope: args.scope,
                },
                callback: (response) => {
                  if (response.success) {
                    resolve();
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'screenPopObjectHome error',
                        response.errors
                      )
                    );
                  }
                },
              });
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('screenPopObjectHome error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.listViewId - The list view id
     * @param {String} args.scope - The scope
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_screenpop_lex.htm
     */
    screenPopList: (args) =>
      new Promise((resolve, reject) => {
        try {
          sforce.opencti &&
            sforce.opencti.screenPop({
              type: sforce.opencti.SCREENPOP_TYPE.LIST,
              params: {
                listViewId: args.listViewId,
                scope: args.scope,
              },
              callback: (response) => {
                if (response.success) {
                  resolve();
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'screenPopList error',
                      response.errors
                    )
                  );
                }
              },
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('screenPopList error', err));
        }
      }),

    /**
     * Screen pops to search results based upon the search input.
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.searchString - The string for which to search
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_screenpop_lex.htm
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_screenpop_lex.htm
     */
    screenPopSearch: (args) =>
      new Promise((resolve, reject) => {
        try {
          sforce.opencti &&
            sforce.opencti.screenPop({
              type: sforce.opencti.SCREENPOP_TYPE.SEARCH,
              params: {
                searchString: args.searchString,
              },
              callback: (response) => {
                if (response.success) {
                  resolve();
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'screenPopSearch error',
                      response.errors
                    )
                  );
                }
              },
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('screenPopSearch error', err));
        }
      }),

    /**
     * Screen pops to a new record of the specified type with specified default field values
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.entityName - The Salesforce object type (Account, Contact, Lead, etc)
     * @param {Map<String, Object>} args.defaultFieldValues
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_screenpop_lex.htm
     */
    screenPopNewRecord: (args) =>
      new Promise((resolve, reject) => {
        try {
          sforce.opencti &&
            sforce.opencti.screenPop({
              type: sforce.opencti.SCREENPOP_TYPE.NEW_RECORD_MODAL,
              params: {
                entityName: args.entityName,
                defaultFieldValues: args.defaultFieldValues,
              },
              callback: (response) => {
                if (response.success) {
                  resolve();
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'screenPopNewRecord error',
                      response.errors
                    )
                  );
                }
              },
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('screenPopNewRecord error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.apexClass - The apex class
     * @param {String} args.methodName - The method name
     * @param {Map<String, Object>} args.methodParams - The parameters
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_runapex_lex.htm
     */
    runApex: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.runApex({
                apexClass: args.apexClass,
                methodName: args.methodName,
                methodParams: args.methodParams,
                callback: (response) => {
                  if (response.success) {
                    resolve(response.returnValue);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'runApex error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            sforce.opencti &&
              sforce.opencti.runApex(
                args.apexClass,
                args.methodName,
                args.methodParams,
                (response) => {
                  if (response && response.result) {
                    resolve(response.result);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'runApex error',
                        response.error
                      )
                    );
                  }
                }
              );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('runApex error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.searchParams - String to search.
     * @param {String} args.queryParams - Specifies the query parameters to pass to the URL. Query parameters are only passed to the URL if the screen pop option is set to Pop to Visualforce.
     * @param {Map} args.defaultFieldValues - Optional. If you set up your softphone to pop to a new entity when there are no search results (for inbound calls), you can use this argument to specify the default fields for the screen pop. For example, when the screen pop opens for the new entity it’s pre-populated with the fields you’ve specified.
     * @param {OpenCtiCallType} args.callType - Specifies the type of call, such as inbound, outbound, internal, or null. Per the settings in the softphone layout, the call type determines which objects to search for any matches.
     * @param {Boolean} args.deferred - Specifies whether the screen pop is performed immediately following the search or if it’s performed later. If the screen pop is performed later, a JSON object is returned. This object must be passed unmodified to sforce.opencti.screenPop to perform the operation.
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_searchandscreenpop_lex.htm
     */
    searchAndScreenPop: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.searchAndScreenPop({
                searchParams: args.searchParams,
                queryParams: args.queryParams,
                defaultFieldValues: args.defaultFieldValues,
                callType: args.callType,
                deferred: args.deferred,
                callback: (response) => {
                  const { returnValue } = response;
                  const recordCount = Object.keys(returnValue || {}).length;

                  if (response.success) {
                    if (recordCount === 1) {
                      const firstKey = Object.keys(returnValue)[0];
                      const record = returnValue[firstKey];
                      returnValue['Id'] = record.Id;
                      returnValue['Name'] = record.Name;
                      returnValue['RecordType'] = record.RecordType;
                      returnValue['ExactMatch'] = true;
                    } else {
                      returnValue['ExactMatch'] = false;
                      returnValue['recordCount'] = recordCount;
                    }
                    resolve(returnValue);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'searchAndScreenPop error',
                        response.errors || response
                      )
                    );
                  }
                },
              });
          } else {
            sforce.interaction &&
              sforce.interaction &&
              sforce.interaction.searchAndScreenPop(
                args.searchParams,
                args.queryParams,
                args.callType,
                (response) => {
                  if (response && response.result) {
                    response.result['recordCount'] = Object.keys(
                      response.result
                    ).length;
                    resolve(JSON.parse(response.result));
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'searchAndScreenPop error',
                        response.error
                      )
                    );
                  }
                }
              );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('searchAndScreenPop error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_getservicepresencestatusid.htm
     */
    getAgentState: () =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.console &&
              sforce.console.presence &&
              sforce.console.presence.getServicePresenceStatusId((result) => {
                if (result.success) {
                  resolve(result);
                } else {
                  reject(
                    ac.Utils.Common.buildReject('getAgentState error', null)
                  );
                }
              });
          } else {
            reject(
              ac.Utils.Common.buildRejectUnsupportedOperation(
                ac.Utils.Common.getMode(),
                null
              )
            );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('getAgentState error', err));
        }
      }),

    /**
     * Sets the Salesforce agent state id
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.state - The agent state
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_setservicepresencestatus.htm
     */
    setAgentState: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            state &&
              sforce.console &&
              sforce.console.presence &&
              sforce.console.presence.setServicePresenceStatus(
                args.state,
                (result) => {
                  if (result.success) {
                    resolve(result);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'setAgentState error',
                        result.errors
                      )
                    );
                  }
                }
              );
          } else {
            reject(
              ac.Utils.Common.buildRejectUnsupportedOperation(
                ac.Utils.Common.getMode(),
                null
              )
            );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('setAgentState error', err));
        }
      }),

    /**
     * Sets the Salesforce agent state by state name
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.stateName - The agent state name
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_setservicepresencestatus.htm
     */
    setAgentStateByName: async (args) => {
      try {
        if (ac.Utils.Common.isLightning()) {
          let availableStates, state;

          availableStates = await ac.Utils.Salesforce.getAvailableAgentStates();

          if (availableStates && availableStates.length > 0) {
            state = availableStates[args.stateName];

            if (state) {
              resolve(await ac.Utils.Salesforce.setAgentState(state));
            }
          }
        } else {
          reject(
            ac.Utils.Common.buildRejectUnsupportedOperation(
              ac.Utils.Common.getMode(),
              null
            )
          );
        }
      } catch (err) {
        reject(ac.Utils.Common.buildReject('setAgentStateByName error', err));
      }
    },

    /**
     *
     * @static
     * @async
     *
     * @returns {Promise<SalesforceAgentState[]|Error>}
     */
    getAvailableAgentStates: () =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            Visualforce.remoting.Manager.invokeAction(
              _getNamespaceClassPrefix() +
                'AC_Utils.getServicePresenceStatuses',
              (result, event) => {
                if (event.status && result) {
                  let states = result.map((state) => {
                    return {
                      key: state.developerName,
                      value: state.id.substr(0, 15),
                    };
                  });

                  states.push({
                    key: 'Offline',
                    value: 'Offline',
                  });

                  resolve(
                    Object.assign(
                      {},
                      ...states.map((s) => ({
                        [s.key]: s.value,
                      }))
                    )
                  );
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'getAvailableAgentStates error',
                      result.errors
                    )
                  );
                }
              }
            );
          } else {
            reject(
              ac.Utils.Common.buildRejectUnsupportedOperation(
                ac.Utils.Common.getMode(),
                null
              )
            );
          }
        } catch (err) {
          reject(
            ac.Utils.Common.buildReject('getAvailableAgentStates error', err)
          );
        }
      }),

    /**
     * Logs in the salesforce agent by state id
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @oaran {String} args.state - The state
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_login.htm
     */
    loginAgent: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            args.state &&
              sforce.console &&
              sforce.console.presence &&
              sforce.console.presence.login(args.state, (result) => {
                if (result.success) {
                  resolve(result);
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'loginAgent error',
                      result.errors
                    )
                  );
                }
              });
          } else {
            reject(
              ac.Utils.Common.buildRejectUnsupportedOperation(
                ac.Utils.Common.getMode(),
                null
              )
            );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('loginAgent error', err));
        }
      }),

    /**
     * Logs in the stalesforce agent by state name
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.stateName - The state name
     *
     * @returns {Promise<Object|Error>}
     */
    loginAgentByName: async (args) => {
      let availableStates, state;

      try {
        availableStates = await ac.Utils.Salesforce.getAvailableAgentStates();

        if (availableStates && Object.keys(availableStates).length > 0) {
          state = availableStates[args.stateName];

          if (state) {
            return ac.Utils.Salesforce.loginAgent(state);
          }
        }
      } catch (err) {
        ac.Utils.Log.error('setAgentStateByName error', err);
      }
    },

    /**
     * Logs out the Salesforce agent
     *
     * @static
     * @async
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_logout.htm
     */
    logoutAgent: () =>
      new Promise((resolve, reject) => {
        try {
          sforce.console &&
            sforce.console.presence &&
            sforce.console.presence.logout((result) => {
              if (result.success) {
                resolve(result);
              } else {
                reject(
                  ac.Utils.Common.buildReject(
                    'logoutAgent error',
                    result.errors
                  )
                );
              }
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('logoutAgent error', err));
        }
      }),

    /**
     * Gets teh agent's current workload
     *
     * @static
     * @async
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_getAgentWorkload.htm
     */
    getAgentWorkload: () =>
      new Promise((resolve, reject) => {
        try {
          sforce.console &&
            sforce.console.presence &&
            sforce.console.presence.getAgentWorkload((result) => {
              if (result.success) {
                resolve(result);
              } else {
                reject(
                  ac.Utils.Common.buildReject(
                    'getAgentWorkload error',
                    result.errors
                  )
                );
              }
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('getAgentWorkload error', err));
        }
      }),

    /**
     * Saves or updates a Salesforce object
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.type - The entity type
     * @param {String} args.recordId - The record id (null to create a new record)
     * @param {Map<String, Object>} args.fields - The entity field values
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_savelog_lex.htm
     */
    saveLog: (args) =>
      new Promise((resolve, reject) => {
        try {
          let value = args.fields;

          if (ac.Utils.Common.isLightning()) {
            if (args.recordId) {
              value.Id = args.recordId;
            } else {
              value.entityApiName = args.type;
            }

            sforce.opencti &&
              sforce.opencti.saveLog({
                value: value,
                callback: (response) => {
                  if (response && response.success) {
                    resolve(response.returnValue);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'saveLog error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            if (args.recordId) {
              value.Id = args.recordId;
            }

            sforce.interaction &&
              sforce.interaction.saveLog(
                args.type,
                $.param(value),
                (response) => {
                  if (response && response.result) {
                    resolve(response.result);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'saveLog error',
                        response.error
                      )
                    );
                  }
                }
              );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('saveLog error', err));
        }
      }),

    /**
     * Open primary tab.
     *
     * Opens a new primary tab to display the content of the specified URL, which can be relative or absolute. You can also override an existing tab. This method is only available in API version 20.0 or later.
     *
     *
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {Object} args.id - id of tab
     * @param {Object} args.url - URL of the opened primary tab.
     * @param {Object} args.active - If true, the opened primary tab displays immediately. If false, the opened primary tab displays in the background and the current tab maintains focus.
     * @param {Object} args.tabLabel - Optional label of the opened primary tab. If a label isn't specified, External Page displays.
     * @param {Object} args.name - Optional name of the opened primary tab.
     *
     * @returns {Promise<string|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_openprimarytab.htm
     */
    openPrimaryTab: (args) =>
      new Promise((resolve, reject) => {
        const { id, url, active, tabLabel, name } = args || {};
        const openSuccess = (result) => resolve(result.id);
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.console.openPrimaryTab(
              id,
              url,
              active,
              tabLabel,
              openSuccess,
              name
            );
          } else {
            // TODO: verify this works in Classic
            sforce.console.openPrimaryTab(
              id,
              url,
              active,
              tabLabel,
              openSuccess,
              name
            );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('openPrimaryTab error', err));
        }
      }),

    /**
     * Open sub tab.
     *
     *
     Opens a new subtab (within a primary tab) that displays the content of a specified URL, which can be relative or absolute. You can also override an existing subtab. Use to open a new subtab on a primary tab via the primary tab's ID. This method is only available in API version 20.0 or later.
     *
     *
     *
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {Object} args.primaryTabId - id of primary tab
     * @param {Object} args.url - URL of the opened primary tab.
     * @param {Object} args.active - If true, the opened primary tab displays immediately. If false, the opened primary tab displays in the background and the current tab maintains focus.
     * @param {Object} args.tabLabel - Optional label of the opened primary tab. If a label isn't specified, External Page displays.
     * @param {Object} args.name - Optional name of the opened primary tab.
     *
     * @returns {Promise<string|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_openprimarytab.htm
     */
    openSubtab: (args) =>
      new Promise((resolve, reject) => {
        const { id, url, active, tabLabel, name } = args || {};
        const openSuccess = (result) => resolve(result.id);
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.console.openSubtab(
              id,
              url,
              active,
              tabLabel,
              openSuccess,
              name
            );
          } else {
            // TODO: verify this works in Classic
            sforce.console.openSubtab(
              id,
              url,
              active,
              tabLabel,
              openSuccess,
              name
            );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('openSubtab error', err));
        }
      }),

    /**
     * Executes an arbitrary SOQL statement and returns the results
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.soql - The SOQL query to execute
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.ajax.meta/ajax/sforce_api_ajax_more_samples_asynch.htm
     */
    query: (args) =>
      new Promise((resolve, reject) => {
        try {
          sforce.connection &&
            sforce.connection.query(args.soql, {
              onSuccess: (result) => {
                resolve(result);
              },
              onFailure: (err) => {
                reject(ac.Utils.Common.buildReject('query error', err));
              },
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('query error', err));
        }
      }),

    /**
     *
     * @satic
     * @async
     *
     * @param {Object} args
     * @param {String} args.queryLocator - The query locator
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.ajax.meta/ajax/sforce_api_ajax_more_samples_asynch.htm
     */
    queryMore: (args) =>
      new Promise((resolve, reject) => {
        try {
          sforce.connection &&
            sforce.connection.queryMore(args.queryLocator, {
              onSuccess: (result) => {
                resolve(result);
              },
              onFailure: (err) => {
                reject(ac.Utils.Common.buildReject('queryMore error', err));
              },
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('queryMore error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.soql - The SOQL query to execute
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.ajax.meta/ajax/sforce_api_ajax_more_samples_asynch.htm
     */
    queryAll: (args) =>
      new Promise((resolve, reject) => {
        try {
          sforce.connection &&
            sforce.connection.queryAll(args.soql, {
              onSuccess: (result) => {
                resolve(result);
              },
              onFailure: (err) => {
                reject(ac.Utils.Common.buildReject('queryAll error', err));
              },
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('queryAll error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {Array<String>} args.fields
     * @param {String} args.type
     * @param {Array<String>} args.ids
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.ajax.meta/ajax/sforce_api_ajax_more_samples_asynch.htm
     */
    retrieve: (args) =>
      new Promise((resolve, reject) => {
        try {
          sforce.connection &&
            sforce.connection.retrieve(args.fields, args.type, args.ids, {
              onSuccess: (result) => {
                resolve(result);
              },
              onFailure: (err) => {
                reject(ac.Utils.Common.buildReject('retrieve error', err));
              },
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('retrieve error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.searchString
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.ajax.meta/ajax/sforce_api_ajax_more_samples_asynch.htm
     */
    search: (args) =>
      new Promise((resolve, reject) => {
        try {
          sforce.connection &&
            sforce.connection.search(args.searchString, {
              onSuccess: (result) => {
                resolve(result);
              },
              onFailure: (err) => {
                reject(ac.Utils.Common.buildReject('search error', err));
              },
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('search error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @param {Object} args
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.ajax.meta/ajax/sforce_api_ajax_more_samples_asynch.htm
     */
    update: (args) =>
      new Promise((resolve, reject) => {
        try {
          sforce.connection &&
            sforce.connection.update(args.sobjects, {
              onSuccess: (result) => {
                resolve(result);
              },
              onFailure: (err) => {
                reject(ac.Utils.Common.buildReject('update error', err));
              },
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('update error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.externalIdFieldName
     * @param {Object[]} args.sobjects
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.ajax.meta/ajax/sforce_api_ajax_more_samples_asynch.htm
     */
    upsert: (args) =>
      new Promise((resolve, reject) => {
        try {
          sforce.connection &&
            sforce.connection.update(args.externalIdFieldName, args.sobjects, {
              onSuccess: (result) => {
                resolve(result);
              },
              onFailure: (err) => {
                reject(ac.Utils.Common.buildReject('upsert error', err));
              },
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('upsert error', err));
        }
      }),

    /**
     *
     * @static
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.ajax.meta/ajax/sforce_api_ajax_more_samples_asynch.htm
     */
    getUserInfo: () =>
      new Promise((resolve, reject) => {
        try {
          sforce.connection &&
            sforce.connection.getUserInfo({
              onSuccess: (result) => {
                resolve(result);
              },
              onFailure: (err) => {
                reject(ac.Utils.Common.buildReject('getUserInfo error', err));
              },
            });
        } catch (err) {
          reject(ac.Utils.Common.buildReject('getUserInfo error', err));
        }
      }),

    /**
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.workId
     * @param {String} args.disposition
     * @param {String} args.taskId
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_cti.meta/api_cti/sforce_api_cti_hvs_lex.htm
     */
    completeHvsWorkWithTaskSaved: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.hvs &&
              sforce.opencti.hvs.completeWork({
                workId: args.workId,
                attributes: {
                  disposition: args.disposition,
                  taskId: args.taskId,
                },
                callback: () => {
                  resolve();
                },
              });
          } else {
            resolve();
          }
        } catch (err) {
          reject(
            ac.Utils.Common.buildReject(
              'completeHvsWorkWithTaskSaved error',
              err
            )
          );
        }
      }),

    /**
     * Sets the softphone panel popout capability
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {Boolean} args.enabled
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_setcustomconsolecomponentpopoutable.htm
     */
    setSoftphonePopoutEnabled: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.console &&
              sforce.console.setCustomConsoleComponentPopoutable(
                args.enabled,
                (result) => {
                  if (result.success) {
                    resolve();
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'setSoftphonePopoutEnabled error',
                        result.errors
                      )
                    );
                  }
                }
              );
          } else {
            resolve();
          }
        } catch (err) {
          reject(
            ac.Utils.Common.buildReject('setSoftphonePopoutEnabled error', err)
          );
        }
      }),

    /**
     * Gets the collection of top level (primary) tab ids displayed in the Salesforce UI
     *
     * @static
     * @async
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_getprimarytabids.htm
     */
    getPrimaryTabIds: () =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning() || ac.Utils.Common.isConsole()) {
            sforce.console &&
              sforce.console.getPrimaryTabIds((result) => {
                if (result && result.ids) {
                  resolve(result.ids);
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      'getPrimaryTabIds error',
                      result.errors
                    )
                  );
                }
              });
          } else {
            reject(
              ac.Utils.Common.buildRejectUnsupportedOperation(
                ac.Utils.Common.getMode(),
                null
              )
            );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('getPrimaryTabIds error', err));
        }
      }),

    /**
     * Gets the object id being displayed on the given tabId
     *
     * @static
     * @async
     *
     * @param {Object} args
     * @param {String} args.tabId - The tab Id
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_getpageinfo.htm
     */
    getObjectOnTab: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning() || ac.Utils.Common.isConsole()) {
            sforce.console &&
              sforce.console.getPageInfo(args, tabId, (result) => {
                if (result && result.success) {
                  let obj = {
                    objectId: JSON.parse(result.pageInfo).objectId,
                    tabId: tabId,
                  };

                  resolve(obj);
                } else {
                  reject(null);
                }
              });
          } else {
            reject(
              ac.Utils.Common.buildRejectUnsupportedOperation(
                ac.Utils.Common.getMode(),
                null
              )
            );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('getObjectOnTab error', err));
        }
      }),

    /**
     * Gets a map of all visibble primary tabs and their associated objects (if available)
     *
     * @returns {Promise<Object|Error>}
     *
     * @see https://developer.salesforce.com/docs/atlas.en-us.api_console.meta/api_console/sforce_api_console_getprimarytabids.htm
     */
    getTabObjectMap: () =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning() || ac.Utils.Common.isConsole()) {
            let tabObjectMap = {};

            ac.Utils.Salesforce.getPrimaryTabIds().then((tabArray) => {
              let promises = [];

              tabArray.forEach((tabId) => {
                promises.push(ac.Utils.Salesforce.getObjectOnTab(tabId));
              });

              Promise.all(promises)
                .then((values) => {
                  values.forEach((value) => {
                    if (value.objectId) {
                      tabObjectMap[value.objectId] = value.tabId;
                    }
                  });
                  resolve(tabObjectMap);
                })
                .catch((error) => {
                  resolve(tabObjectMap);
                });
            });
          } else {
            reject(
              ac.Utils.Common.buildRejectUnsupportedOperation(
                ac.Utils.Common.getMode(),
                null
              )
            );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('getTabObjectMap error', err));
        }
      }),

    /**
     *
     * @param {Object} args
     * @param {String[]} args.urls - An array of URLs. The first URL is a primary tab and subsequent URLs are subtabs. Note that the last URL is the subtab on which the console is focused. These URLs can be standard Salesforce URLs or relative URLs.
     *
     * @returns {Promise<String|Error>}
     */
    generateConsoleUrl: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning() || ac.Utils.Common.isConsole()) {
            sforce.console &&
              sforce.console.generateConsoleUrl(args.urls, (result) => {
                if (result && result.success) {
                  resolve(result);
                } else {
                  reject(ac.Utils.Common.buildReject('getConsoleUrl error'));
                }
              });
          } else {
            reject(
              ac.Utils.Common.buildRejectUnsupportedOperation(
                ac.Utils.Common.getMode(),
                null
              )
            );
          }
        } catch (err) {
          reject(ac.Utils.Common.buildReject('generateConsoleUrl error', err));
        }
      }),

    /**
     * Gets the do not call value for the provided object (Contact) id
     *
     * @param {Object} args
     * @param {String} args.recordId - The object id
     * @param {Boolean} args.defaultValue - The default value
     * @returns {Promise<Object|Error>}
     */
    isDoNotCall: (args) =>
      new Promise((resolve, reject) => {
        try {
          Visualforce.remoting.Manager.invokeAction(
            _getNamespaceClassPrefix() + 'AC_Utils.isDoNotCall',
            args.recordId,
            (response, event) => {
              if (event && event.status && response) {
                resolve({ isDoNotCall: response });
              } else {
                resolve({ isDoNotCall: false });
              }
            }
          );
        } catch (err) {
          resolve({ isDoNotCall: args.defaultValue || false });
        }
      }),

    /**
     *
     * @static
     *
     * @returns {String}
     */
    getBaseUrl: () => {
      const url = window.location.href;
      const baseURL = url.substring(0, url.indexOf('/', 14));

      return baseURL + '/';
    },

    /**
     *
     * @static
     *
     * @returns {Boolean}
     */
    isMyDomainEnabled: () => {
      const baseUrl = ac.Utils.Salesforce.getBaseUrl();

      return baseUrl.endsWith('my.salesforce.com') || baseUrl.includes('--');
    },

    /**
     * Gets the internal presence sync context
     *
     * @static
     *
     * @returns {Object}
     */
    getOmnichannelContext: () => {
      return ac.Utils.PresenceSync.getContext();
    },

    /**
     * Sets the softphone panel height
     * @static
     *
     * @param {Object} args
     * @param {Number} args.height - The softphone panel height
     *
     * @returns {Promise<void>}
     *
     * @example
     * setSoftphoneHeight({ height: 600 });
     *
     * @example
     * await setSoftphoneHeight({ height: 600 });
     */
    setSoftphonePanelHeight: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.setSoftphonePanelHeight({
                heightPX: args.height,
                callback: (response) => {
                  if (response && response.success) {
                    resolve(response.returnValue);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'setSoftphonePanelHeight error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            sforce.interaction &&
              sforce.interaction.cti &&
              sforce.interaction.cti.setSoftphoneHeight(
                args.height,
                (response) => {
                  if (response && response.result) {
                    resolve();
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'setSoftphonePanelHeight error',
                        response.errors
                      )
                    );
                  }
                }
              );
          }
        } catch (err) {
          reject(
            ac.Utils.Common.buildReject('setSoftphonePanelHeight error', err)
          );
        }
      }),

    /**
     * Sets the softphone panel width
     * @static
     *
     * @param {Object} args
     * @param {Number} args.width - The softphone panel width
     *
     * @returns {Promise<Object|Error>}
     *
     * @example
     * setSoftphoneWidth({ width: 400 });
     *
     * @example
     * await setSoftphoneWidth({ width: 400 });
     */
    setSoftphonePanelWidth: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.setSoftphonePanelWidth({
                widthPX: args.width,
                callback: (response) => {
                  if (response && response.success) {
                    resolve(response.returnValue);
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'setSoftphonePanelWidth error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            sforce.interaction &&
              sforce.interaction.cti &&
              sforce.interaction.cti.setSoftphoneWidth(
                args.width,
                (response) => {
                  if (response && response.result) {
                    resolve();
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'setSoftphonePanelWidth error',
                        response.errors
                      )
                    );
                  }
                }
              );
          }
        } catch (err) {
          reject(
            ac.Utils.Common.buildReject('setSoftphonePanelWidth error', err)
          );
        }
      }),

    /**
     * Sets the softphone panel label
     *
     * @typedef {{ label: string}} payload
     *
     * @static
     *
     * @param {Object} args - The softphone panel label in the utility bar
     * @param {String} args.label
     *
     * @returns {Promise<Object|Error>}
     *
     * @example
     * setSoftphoneLabel({ label: 'Amazon Connect' });
     *
     * @example
     * await setSoftphoneLabel({ label: 'Amazon Connect' });
     */
    setSoftphonePanelLabel: (args) =>
      new Promise((resolve, reject) => {
        try {
          if (ac.Utils.Common.isLightning()) {
            sforce.opencti &&
              sforce.opencti.setSoftphonePanelWidth({
                label: args.label,
                callback: (response) => {
                  if (response && response.success) {
                    resolve();
                  } else {
                    reject(
                      ac.Utils.Common.buildReject(
                        'setSoftphonePanelLabel error',
                        response.errors
                      )
                    );
                  }
                },
              });
          } else {
            resolve();
          }
        } catch (err) {
          reject(
            ac.Utils.Common.buildReject('setSoftphonePanelLabel error', err)
          );
        }
      }),
  };

  /**
   * @private
   *
   * @static
   * @async
   *
   * @returns {Promise|Error}
   */
  const _isSoftphonePanelVisible = () =>
    new Promise((resolve, reject) => {
      try {
        if (ac.Utils.Common.isLightning()) {
          sforce.opencti &&
            sforce.opencti.isSoftphonePanelVisible({
              callback: (response) => {
                if (response && response.success) {
                  resolve(response.returnValue.visible);
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      '_isSoftphonePanelVisible error',
                      response.errors
                    )
                  );
                }
              },
            });
        } else {
          sforce.interaction &&
            sforce.interaction.isVisible((response) => {
              if (response && response.result) {
                resolve(response.result);
              } else {
                reject(
                  ac.Utils.Common.buildReject(
                    '_isSoftphonePanelVisible error',
                    response.error
                  )
                );
              }
            });
        }
      } catch (err) {
        reject(
          ac.Utils.Common.buildReject('_isSoftphonePanelVisible error', err)
        );
      }
    });

  /**
   * @private
   *
   * @static
   * @async
   *
   * @param visible
   *
   * @returns {Promise|Error}
   */
  const _setSoftphonePanelVisibility = (visible) =>
    new Promise((resolve, reject) => {
      try {
        if (ac.Utils.Common.isLightning()) {
          sforce.opencti &&
            sforce.opencti.setSoftphonePanelVisibility({
              visible: visible,
              callback: (response) => {
                if (response && response.success) {
                  resolve(response.returnValue);
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      '_setSoftphonePanelVisibility error',
                      response.errors
                    )
                  );
                }
              },
            });
        } else {
          sforce.interaction &&
            sforce.interaction.setSoftphonePanelVisibility(
              visible,
              (response) => {
                if (response && response.result) {
                  resolve();
                } else {
                  reject(
                    ac.Utils.Common.buildReject(
                      '_setSoftphonePanelVisibility error',
                      response.errors
                    )
                  );
                }
              }
            );
        }
      } catch (err) {
        reject(
          ac.Utils.Common.buildReject('_setSoftphonePanelVisibility error', err)
        );
      }
    });

  /**
   * @private
   *
   * @returns {String}
   */
  const _getNamespacePagePrefix = () => {
    return ac.Utils.Common.getProperty({ key: 'namespacePagePrefix' });
  };

  /**
     * @private

     * @returns {String}
     */
  const _getNamespaceClassPrefix = () => {
    return ac.Utils.Common.getProperty({ key: 'namespaceClassPrefix' });
  };
})(this);
