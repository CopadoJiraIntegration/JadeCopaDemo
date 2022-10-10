window.EnvelopeConfigurationBaseService = function (component, helper, successLabel, errorLabel) {
  var NamespaceLocale = {};

  function ApplicationConfiguration(data, dsData) {
    try {
      var LocalizationSettings = new LocalizationService(data.labels);
      var databaseObjects = new DatabaseObjects(data.objectLayouts, JSON.parse(dsData.templateJson), JSON.parse(dsData.signingGroupJson));
      databaseObjects.cache();
      LocalizationSettings.cache();
      NamespaceLocale = new NamespaceService(data.objects, data.fieldMap, data.paths);
      this.GlobalActions = {
        getDatabaseService: getDatabaseService
      };
      this.recordWrapper = new EnvelopeConfiguration(data.record);
      this.Recipients = resolveRecipients(data.recipients);
      this.Documents = resolveDocuments(data.documents);
      this.Mappings = {};
      this.Mappings.CCRM = resolveMapping(data.ccrm);
      this.Mappings.CCTM = resolveMapping(data.cctm);
      this.AdvancedParameters = data.advancedParams;
      this.AdvancedParametersTypes = data.advancedParamsTypes;
      this.Layouts = data.layouts;
      this.NamespaceService = NamespaceLocale;
      this.isInitReady = true;
    } catch (err) {
      displayError(err);
    }
  }

  ApplicationConfiguration.prototype.refresh = function () {
    getAppConfig(component.get("v.recordId"), true);
    closeModal(component);
  };

  ApplicationConfiguration.prototype.setAdvancedParameters = function (params) {
    this.AdvancedParameters = params;
  };

  ApplicationConfiguration.prototype.globalSave = function () {
    databaseSave(component);
  };

  ApplicationConfiguration.prototype.cache = function () {
    window.AppConfig = this;
    component.set('v.AppConfig', this);
  };

  var getErrorMessage = function (error) {
    var message = '';
    if (error) {
      if (error.getError) {
        var errors = error.getError();
        message = errors;
        if (!$A.util.isEmpty(errors)) {
          message = errors[0].message;
        }
      } else if (error.message) {
        message = error.message;
      } else {
        message = error;
      }
    }
    return message;
  };

  var displayError = function (error) {
    toastNotification(errorLabel, getErrorMessage(error), 'error');
  };

  ApplicationConfiguration.prototype.displayError = displayError;

  var displaySuccess = function (message) {
    toastNotification(successLabel, message, 'success');
  };

  ApplicationConfiguration.prototype.displaySuccess = displaySuccess;

  function LocalizationService(labels) {
    this.labels = labels;
  }

  LocalizationService.prototype.cache = function () {
    component.set("v.Localization", this);
    window.DocuSignLocalization = this;
  };

  function NamespaceService(sObjectsList, fields, paths) {
    this.sObjects = sObjectsList;
    this.fields = fields;
    this.paths = paths;

    this.convertToSalesforce = function (record, type) {
      if (!NamespaceLocale) {
        var AppConfig = component.get("v.AppConfig");
        NamespaceLocale = AppConfig.NamespaceService;
      }
      var response = {};
      var objectPrefix = type + '.';
      for (var propt in record) {
        if (propt !== 'databaseUpdate' || propt !== 'databaseInsert' || propt !== 'databaseActions') {
          response[NamespaceLocale.fields[objectPrefix + propt]] = record[propt];
        }
      }
      return response;
    };
  }

  function DatabaseObjects(layouts, templates, signingGroups) {
    var templateResult = {};
    templates.forEach(function (t) {
      templateResult[t.id.value] = t;
    });
    this.templates = templateResult;

    var sgRes = {};
    signingGroups.forEach(function (s) {
      sgRes[s.id] = s;
    });
    this.signingGroups = sgRes;
  }

  DatabaseObjects.prototype.cache = function () {
    window.DatabaseObjects = this;
    component.set('v.DatabaseObjects', this);
  };

  DatabaseObjects.prototype.getSigningGroupMembers = function (sgId) {
    return this.signingGroups[sgId].members.map(function (sg) {
      return sg.username;
    }).join(', ');
  };

  function databaseService(ns) {
    this.databaseActions = {
      insertCustomParameterMaps: component.get('c.insertCustomParameterMaps'),
      updateParameters: component.get('c.updateParameters')
    };
    NamespaceLocale = ns;
  }

  databaseService.prototype.newRecipient = function (startingOrder, type, ecId) {
    var recipient = new Recipient(null);
    recipient.Order__c = startingOrder;
    recipient.Type__c = type;
    recipient.EnvelopeConfiguration__c = ecId;
    return recipient;
  };

  databaseService.prototype.newDocument = function (startingOrder, type, ecId) {
    var doc = new Document(null);
    doc.Order__c = startingOrder;
    doc.Type__c = type;
    doc.displayType = doc.Type__c === 'DSTemplate' ? DocuSignLocalization.labels['DocuSignTemplate'] : DocuSignLocalization.labels['FileUpload'];
    doc.EnvelopeConfiguration__c = ecId;
    return doc;
  };

  databaseService.prototype.newMapping = function (type, ecId) {
    var map = new Mapping(null);
    map.Type__c = type;
    map.EnvelopeConfiguration__c = ecId;
    return map;
  };

  databaseService.prototype.newAdvancedParameter = function (key, sequence) {
    return new AdvancedParameter(key, sequence);
  };

  databaseService.prototype.bulkInsert = function (records) {
    var action = this.databaseActions.insertCustomParameterMaps;
    return new Promise(function (resolve, reject) {
      var databaseRecords = [];
      records.forEach(function (rec) {
        databaseRecords.push(rec.convert(true));
      });
      action.setParams({
        records: JSON.stringify(databaseRecords)
      });
      action.setCallback(this, function (response) {
        if (response.getState() === "SUCCESS") {
          resolve(true);
        } else {
          reject(false);
        }
      });
      $A.enqueueAction(action);
    });
  };

  databaseService.prototype.updateParameters = function (envelopeConfigurationId, parameters) {
    var action = this.databaseActions.updateParameters;
    return new Promise(function (resolve, reject) {
      action.setParams({
        envelopeConfigurationId: envelopeConfigurationId,
        parameterJson: JSON.stringify(parameters)
      });
      action.setCallback(this, function (response) {
        if (response.getState() === "SUCCESS") {
          resolve(response.getReturnValue());
        } else {
          reject(new Error(getErrorMessage(response)));
        }
      });
      $A.enqueueAction(action);
    });
  };

  databaseService.prototype.getRecord = function (id, records) {
    var response = records.filter(function (rec) {
      return rec.Id === id;
    });
    return response[0];
  };

  function EnvelopeConfiguration(sObject) {
    this.Id = sObject["Id"];
    this.Name = sObject["Name"];
    this.CEM__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.CEM__c"]];
    this.CES__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.CES__c"]];
    this.SCS__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.SCS__c"]];
    this.LA__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.LA__c"]];
    this.LF__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.LF__c"]];
    this.OCO__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.OCO__c"]];
    this.SEM__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.SEM__c"]];
    this.SES__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.SES__c"]];
    this.SRS__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.SRS__c"]];
    this.SSB__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.SSB__c"]];
    this.STB__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.STB__c"]];
    this.LoadDefaultContacts__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.LoadDefaultContacts__c"]];
    this.Object_Type__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.Object_Type__c"]];
    this.ReminderEnabled__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.ReminderEnabled__c"]];
    this.ReminderFrequency__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.ReminderFrequency__c"]];
    this.ReminderDelay__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.ReminderDelay__c"]];
    this.ExpireEnabled__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.ExpireEnabled__c"]];
    this.ExpireAfter__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.ExpireAfter__c"]];
    this.ExpireWarn__c = sObject[NamespaceLocale.fields["EnvelopeConfiguration__c.ExpireWarn__c"]];

    this.databaseActions = {
      update: component.get("c.updateEnvelopeConfiguration")
    };
  }

  EnvelopeConfiguration.prototype.databaseUpdate = function () {
    this.databaseActions.update.setParams({
      record: this.convert(false)
    });
    this.databaseActions.update.setCallback(this, function (response) {
      if (response.getState() === "SUCCESS") {
        getAppConfig(this.Id, true);
        displaySuccess(DocuSignLocalization.labels['DecSaveSuccess']);
      } else {
        displayError(response);
      }
    });
    $A.enqueueAction(this.databaseActions.update);
  };

  EnvelopeConfiguration.prototype.convert = function (fullObject) {
    if (!NamespaceLocale) {
      var AppConfig = component.get("v.AppConfig");
      NamespaceLocale = AppConfig.NamespaceService;
    }
    var response = {};
    var objectPrefix = 'EnvelopeConfiguration__c' + '.';
    for (var propt in this) {
      if (propt !== 'convert' || propt !== 'databaseUpdate' || propt !== 'databaseInsert' || propt !== 'databaseActions') {
        response[NamespaceLocale.fields[objectPrefix + propt]] = this[propt];
      }
    }
    if (fullObject) return response;
    return JSON.stringify(response);
  };

  function AdvancedParameter(key, sequence) {
    this.key = key;
    this.value = '';
    this.sequence = sequence < 0 ? 0 : sequence;
    this.saved = false;
  }

  AdvancedParameter.prototype.convert = function (fullObject) {
    if (!NamespaceLocale) {
      var AppConfig = component.get("v.AppConfig");
      NamespaceLocale = AppConfig.NamespaceService;
    }
    var response = {};
    var objectPrefix = 'CustomParameterMap__c' + '.';
    for (var propt in this) {
      if (propt !== 'convert' || propt !== 'databaseUpdate' || propt !== 'databaseInsert' || propt !== 'databaseActions') {
        response[NamespaceLocale.fields[objectPrefix + propt]] = this[propt];
      }
    }
    if (fullObject) return response;
    return JSON.stringify(response);
  };

  function Recipient(recipient) {
    if (recipient) {
      this.Id = recipient.Id;
      this.Action__c = recipient[NamespaceLocale.fields["Recipient__c.Action__c"]];
      this.Authentication__c = recipient[NamespaceLocale.fields["Recipient__c.Authentication__c"]];
      this.FirstName__c = recipient[NamespaceLocale.fields["Recipient__c.FirstName__c"]];
      this.LastName__c = recipient[NamespaceLocale.fields["Recipient__c.LastName__c"]];
      this.Email__c = recipient[NamespaceLocale.fields["Recipient__c.Email__c"]];
      this.Role__c = recipient[NamespaceLocale.fields["Recipient__c.Role__c"]];
      this.Order__c = recipient[NamespaceLocale.fields["Recipient__c.Order__c"]];
      this.Type__c = recipient[NamespaceLocale.fields["Recipient__c.Type__c"]];
      this.EnvelopeConfiguration__c = recipient[NamespaceLocale.fields["Recipient__c.EnvelopeConfiguration__c"]];
      this.Message__c = recipient[NamespaceLocale.fields["Recipient__c.Message__c"]];
      this.Phone__c = recipient[NamespaceLocale.fields["Recipient__c.Phone__c"]];
      this.PrivateMessage__c = recipient[NamespaceLocale.fields["Recipient__c.PrivateMessage__c"]];
      this.SigningGroupId__c = recipient[NamespaceLocale.fields["Recipient__c.SigningGroupId__c"]];
      this.SigningGroupName__c = recipient[NamespaceLocale.fields["Recipient__c.SigningGroupName__c"]];
      this.AccessCode__c = recipient[NamespaceLocale.fields['Recipient__c.AccessCode__c']];
    } else { //New Recipient
      this.Action__c = 'Signer';
      this.Authentication__c = false;
      this.FirstName__c = null;
      this.LastName__c = null;
      this.Email__c = null;
      this.Role__c = null;
      this.Type__c = null;
      this.EnvelopeConfiguration__c = null;
      this.Message__c = null;
      this.PrivateMessage__c = false;
      this.SigningGroupName__c = null;
      this.Message__c = null;
      this.Order__c = null;
      this.Phone__c = null;
      this.AccessCode__c = null;
    }

    if (this.SigningGroupId__c) {
      this.members = window.DatabaseObjects.getSigningGroupMembers(this.SigningGroupId__c);
      this.memberCount = window.DatabaseObjects.signingGroups[this.SigningGroupId__c].members.length;
    }

    this.databaseActions = {
      update: component.get("c.updateRecipient"), insert: component.get("c.insertRecipient")
    };
  }

  Recipient.prototype.databaseUpdate = function (parentComponent) {
    this.databaseActions.update.setParams({
      record: this.convert(false)
    });
    this.databaseActions.update.setCallback(this, function (response) {
      if (response.getState() === "SUCCESS") {
        closeModal(parentComponent);
      } else {
        displayError(response);
      }
    });
    $A.enqueueAction(this.databaseActions.update);
  };

  Recipient.prototype.databaseInsert = function (parentComponent) {
    this.databaseActions.insert.setParams({
      record: this.convert(false)
    });
    this.databaseActions.insert.setCallback(this, function (response) {
      if (response.getState() === "SUCCESS") {
        closeModal(parentComponent);
      } else {
        displayError(response);
      }
    });
    $A.enqueueAction(this.databaseActions.insert);
  };

  Recipient.prototype.convert = function (fullObject) {
    if (!NamespaceLocale) {
      var AppConfig = component.get("v.AppConfig");
      NamespaceLocale = AppConfig.NamespaceService;
    }

    var response = {};
    var objectPrefix = 'Recipient__c' + '.';
    for (var propt in this) {
      if (this.hasOwnProperty(propt) && (propt === 'Id' || propt.substring(propt.length - 3, propt.length) === '__c')) {
        var p = this[propt];
        if (typeof p === 'undefined' || p === null || (typeof p === 'string' && p.trim().length <= 0)) {
          p = null;
        }
        response[NamespaceLocale.fields[objectPrefix + propt]] = p;
      }
    }
    if (fullObject) return response;
    return JSON.stringify(response);
  };

  function Document(doc) {
    if (doc) {
      this.Id = doc.Id;
      this.Type__c = doc[NamespaceLocale.fields["CustomParameterMap__c.Type__c"]];
      this.Name__c = doc[NamespaceLocale.fields["CustomParameterMap__c.Name__c"]];
      this.SubValue__c = doc[NamespaceLocale.fields["CustomParameterMap__c.SubValue__c"]];
      this.Value__c = doc[NamespaceLocale.fields["CustomParameterMap__c.Value__c"]];
      this.Order__c = doc[NamespaceLocale.fields["CustomParameterMap__c.Order__c"]];
      this.displayType = this.Type__c === 'DSTemplate' ? DocuSignLocalization.labels['DocuSignTemplate'] : DocuSignLocalization.labels['FileUpload'];
    } else { //New Document
      this.Type__c = '';
      this.Name__c = '';
      this.SubValue__c = '';
      this.Value__c = '';
      this.Order__c = '';
      this.EnvelopeConfiguration__c = '';
      this.displayType = '';
    }

    this.databaseActions = {
      update: component.get("c.updateCustomParameterMap"), insert: component.get("c.insertCustomParameterMap")
    };
  }

  Document.prototype.databaseUpdate = function (parentComponent) {
    this.databaseActions.update.setParams({
      record: this.convert(false)
    });
    this.databaseActions.update.setCallback(this, function (response) {
      if (response.getState() === "SUCCESS") {
        closeModal(parentComponent);
      } else {
        displayError(response);
      }
    });
    $A.enqueueAction(this.databaseActions.update);
  };

  Document.prototype.databaseInsert = function (parentComponent) {
    this.databaseActions.insert.setParams({
      record: this.convert(false)
    });
    this.databaseActions.insert.setCallback(this, function (response) {
      if (response.getState() === "SUCCESS") {
        closeModal(parentComponent);
      } else {
        displayError(response);
      }
    });
    $A.enqueueAction(this.databaseActions.insert);
  };

  Document.prototype.convert = function (fullObject) {
    if (!NamespaceLocale) {
      var AppConfig = component.get("v.AppConfig");
      NamespaceLocale = AppConfig.NamespaceService;
    }
    var response = {};
    var objectPrefix = 'CustomParameterMap__c.';
    for (var propt in this) {
      if (propt !== 'convert' || propt !== 'databaseUpdate' || propt !== 'databaseInsert' || propt !== 'databaseActions' || propt !== 'handleDocumentUpload' || propt !== 'update' || propt !== 'insert' || propt !== 'displayType') {
        response[NamespaceLocale.fields[objectPrefix + propt]] = this[propt];
      }
    }
    if (fullObject) return response;
    return JSON.stringify(response);
  };

  Document.prototype.handleDocumentUpload = function (fileUpload) {
    //TODO Support Multiple File Uploads
    this.Name__c = fileUpload.name;
    this.Value__c = fileUpload.documentId;
  };

  function Mapping(map) {
    if (map) {
      this.Id = map.Id;
      this.Type__c = map[NamespaceLocale.fields["CustomParameterMap__c.Type__c"]];
      this.Name__c = map[NamespaceLocale.fields["CustomParameterMap__c.Name__c"]];
      this.SubValue__c = map[NamespaceLocale.fields["CustomParameterMap__c.SubValue__c"]];
      this.Value__c = map[NamespaceLocale.fields["CustomParameterMap__c.Value__c"]];
      this.EnvelopeConfiguration__c = map[NamespaceLocale.fields["CustomParameterMap__c.EnvelopeConfiguration__c"]];
    } else { //New Mapping
      this.Type__c = '';
      this.Name__c = '';
      this.SubValue__c = '';
      this.Value__c = '';
      this.Order__c = '';
      this.EnvelopeConfiguration__c = '';
    }

    this.databaseActions = {
      update: component.get("c.updateCustomParameterMap"), insert: component.get("c.insertCustomParameterMap")
    };
  }

  Mapping.prototype.databaseUpdate = function (parentComponent) {
    this.databaseActions.update.setParams({
      record: this.convert(false)
    });
    this.databaseActions.update.setCallback(this, function (response) {
      if (response.getState() === "SUCCESS") {
        closeModal(parentComponent);
      } else {
        displayError(response);
      }
    });
    $A.enqueueAction(this.databaseActions.update);
  };

  Mapping.prototype.convert = function (fullObject) {
    if (!NamespaceLocale) {
      var AppConfig = component.get("v.AppConfig");
      NamespaceLocale = AppConfig.NamespaceService;
    }
    var response = {};
    var objectPrefix = 'CustomParameterMap__c' + '.';
    for (var propt in this) {
      if (propt !== 'convert' || propt !== 'databaseUpdate' || propt !== 'databaseInsert' || propt !== 'databaseActions') {
        response[NamespaceLocale.fields[objectPrefix + propt]] = this[propt];
      }
    }
    if (fullObject) return response;
    return JSON.stringify(response);
  };

  Mapping.prototype.databaseInsert = function (parentComponent) {
    this.databaseActions.insert.setParams({
      record: this.convert(false)
    });
    this.databaseActions.insert.setCallback(this, function (response) {
      if (response.getState() === "SUCCESS") {
        closeModal(parentComponent);
      } else {
        displayError(response);
      }
    });
    $A.enqueueAction(this.databaseActions.insert);
  };

  function Layout(layout) {
    this.Id = layout.Id;
    this.Type__c = layout[NamespaceLocale.fields["CustomParameterMap__c.Type__c"]];
    this.Name__c = layout[NamespaceLocale.fields["CustomParameterMap__c.Name__c"]];
    this.SubValue__c = layout[NamespaceLocale.fields["CustomParameterMap__c.SubValue__c"]];
    this.Value__c = layout[NamespaceLocale.fields["CustomParameterMap__c.Value__c"]];

    this.databaseActions = {
      update: component.get("c.updateCustomParameterMap"),
      insert: component.get("c.insertCustomParameterMap"),
      removeButton: component.get("c.removeLayoutAssignment")
    };
  }

  Layout.prototype.removeButton = function (objectType) {
    this.databaseActions.removeButton.setParams({
      record: this.convert(false), objectType: objectType
    });

    this.databaseActions.removeButton.setCallback(this, function (response) {
      if (response.getState() === "SUCCESS") {
        closeModal(parentComponent);
      } else {
        displayError(response);
      }
    });

    $A.enqueueAction(this.databaseActions.removeButton);
  };

  Layout.prototype.convert = function (fullObject) {
    if (!NamespaceLocale) {
      var AppConfig = component.get("v.AppConfig");
      NamespaceLocale = AppConfig.NamespaceService;
    }
    var response = {};
    var objectPrefix = 'CustomParameterMap__c' + '.';
    for (var propt in this) {
      if (propt !== 'convert' || propt !== 'databaseUpdate' || propt !== 'databaseInsert' || propt !== 'databaseActions') {
        response[NamespaceLocale.fields[objectPrefix + propt]] = this[propt];
      }
    }
    if (fullObject) return response;
    return JSON.stringify(response);
  };

  var getDatabaseService = function (ns) {
    return new databaseService(ns);
  };

  var resolveRecipients = function (recipients) {
    var response = [];
    recipients.forEach(function (rec) {
      response.push(new Recipient(rec));
    });
    return response;
  };

  var resolveDocuments = function (documents) {
    var response = [];
    documents.forEach(function (doc) {
      response.push(new Document(doc));
    });
    return response;
  };

  var resolveMapping = function (mappings) {
    var response = [];
    mappings.forEach(function (map) {
      response.push(new Mapping(map));
    });
    return response;
  };

  var getAppConfig = function (buttonId, fullReload) {
    if (!buttonId) return;
    var self = this;
    var action = component.get("c.init");
    action.setParams({
      ecId: buttonId
    });
    action.setCallback(this, function (response1) {
      if (response1.getState() === "SUCCESS") {
        // FIXME: Loading templates and signing groups every time this is invoked. Wasteful and unnecessary. Only
        // make these callouts when admin select add signing group or template.
        // HACK: For now, break out the API calls to avoid CalloutExceptions with pending DML.
        var getDocuSignData = component.get('c.getDocuSignData');
        getDocuSignData.setCallback(self, function (response2) {
          if (response2.getState() === 'SUCCESS') {
            buildAppConfig(response1, response2).then(function (appConfig) {
              if (fullReload) layoutManageInit(appConfig, window.DocuSignLocalization);
              appConfig.cache();
            }).then(function () {
              setEvent();
            });
          } else {
            displayError(response2);
          }
        });
        $A.enqueueAction(getDocuSignData);
      } else {
        displayError(response1);
      }
    });
    $A.enqueueAction(action);
  };

  var layoutManageInit = function (config, locale) {
    var options = {};
    options.Action = 'ManageLayoutResponse';
    options.AppConfig = config;
    options.Localization = locale;
    parent.postMessage(JSON.stringify(options), window.location.origin);
  };

  var buildAppConfig = function (response1, response2) {
    return new Promise(function (resolve) {
      resolve(new ApplicationConfiguration(response1.getReturnValue(), response2.getReturnValue()));
    });

  };

  var toastNotification = function (title, message, type) {
    var resultsToast = $A.get("e.force:showToast");
    resultsToast.setParams({
      "title": title, "message": message, type: type || 'other'
    });
    resultsToast.fire();
  };

  var getObjectFieldSelectOption = function (ModalAction, objectName, fieldSet) {
    var action = component.get("c.getAllObjectFields");
    action.setParams({
      objectName: objectName
    });
    action.setCallback(this, function (response) {
      if (response.getState() === "SUCCESS") {
        var sObjectOptions = [];
        for (var i = 0; i < response.getReturnValue().length; i++) {
          var option = response.getReturnValue()[i];
          if (option !== null || option !== undefined) {
            sObjectOptions.push({class: "optionClass", label: objectName + '.' + option, value: option});
          }
        }
        sObjectOptions.sort(function (a, b) {
          if (a.label < b.label) return -1;
          if (a.label > b.label) return 1;
          return 0;
        });
        fieldSet.forEach(function (field) {
          component.find(field.auraId).set("v.options", sObjectOptions);
        });
      } else {
        displayError(response);
      }
    });
    $A.enqueueAction(action);
  };

  var getObjectSelectOption = function () {
    var action = component.get("c.getOrgObjects");
    action.setCallback(this, function (response) {
      if (response.getState() === "SUCCESS") {
        var sObjectOptions = [];
        response.getReturnValue().forEach(function (option) {
          sObjectOptions.push({class: "optionClass", label: option.name, value: option.value});
        });
        component.find("sObjectSelect").set("v.options", sObjectOptions);
        sObjectOptions.sort(function (a, b) {
          if (a.label < b.label) return -1;
          if (a.label > b.label) return 1;
          return 0;
        });
        component.find("sObjectSelect").set("v.options", sObjectOptions);
      } else {
        displayError(response);
      }
    });
    $A.enqueueAction(action);
  };

  var databaseSave = function (component, event) {
    var AppConfig = component.get("v.AppConfig");
    NamespaceLocale = AppConfig.NamespaceService;
    AppConfig.recordWrapper.databaseUpdate();
  };

  var closeModal = function (parentComponent) {
    toggleClassInverse(parentComponent, 'viewAllContentBackdrop', 'slds-backdrop--');
    toggleClassInverse(parentComponent, 'viewAllContent', 'slds-fade-in-');
    getAppConfig(parentComponent.get("v.recordId"), false);
  };

  var toggleClassInverse = function (parentComponent, auraId, className) {
    var modal = parentComponent.find(auraId);
    $A.util.addClass(modal, className + 'hide');
    $A.util.removeClass(modal, className + 'open');
  };

  var toggleClass = function (parentComponent, auraId, className) {
    var modal = parentComponent.find(auraId);
    $A.util.removeClass(modal, className + 'hide');
    $A.util.addClass(modal, className + 'open');
  };

  var deleteChildObject = function (event, recordId, buttonId) {
    var deleteAction = component.get("c.deleteCustomParameter");
    deleteAction.setParams({recordId: recordId, ecId: buttonId});
    deleteAction.setCallback(this, function (response) {
      if (response.getState() === "SUCCESS") {
        getAppConfig(buttonId, true);
      } else {
        displayError(response);
      }
    });
    $A.enqueueAction(deleteAction);
  };

  var setEvent = function () {
    window.addEventListener("message", onmessageEvent, false);
  };

  var onmessageEvent = function (event) {
    if (event.data && typeof event.data !== 'function') {
      var EventResponse = JSON.parse(event.data);
      if (EventResponse.Action === 'Refresh') {
        window.AppConfig.refresh();
      } else if (EventResponse.Action === 'GlobalSave') {
        window.AppConfig.globalSave();
      }
    }
  };

  return {
    getAppConfig: getAppConfig,
    getObjectFieldSelectOption: getObjectFieldSelectOption,
    getObjectSelectOption: getObjectSelectOption,
    deleteChildObject: deleteChildObject,
    databaseSave: databaseSave
  };
};
