window.ModalManager = function (component, AppConfig, ecId, Localization) {
  var NamespaceService = AppConfig.NamespaceService;
  var DatabaseService = AppConfig.GlobalActions.getDatabaseService ? AppConfig.GlobalActions.getDatabaseService(NamespaceService) : {};
  var DatabaseObjects = window.DatabaseObjects ? window.DatabaseObjects : {};

  function ModalActionScope(action, cb, visible) {
    this.action = action; //String
    this.callback = cb; //Callback function
    this.visible = typeof visible === 'undefined' || visible === null ? false : visible;
  }

  function ModalAction(ecId) {
    this.Type = {};
    this.ecId = ecId;
    this.Salesforce = {};
    this.Salesforce.sourceId = ecId;
    this.Fields = {};
    this.Collection = {};
    this.SaveOptions = {};
    this.SaveOptions.enabled = true;
    this.ChildActions = [];
    this.recordWrapper = {};
    this.next = null;
    this.previous = null;
  }

  ModalAction.prototype.cache = function (mComponent) {
    mComponent.set('v.ModalAction', this);
    window.ModalAction = this;
  };

  ModalAction.prototype.changeModalActionScope = function (scope, previous, mComponent) {
    if (!scope && !previous) return;
    scope.previous = previous; //Change previous
    mComponent.set('v.ModalAction', scope);
    window.ModalAction = scope;
  };

  ModalAction.prototype.addSigningGroup = function (sg) {
    this.recordWrapper = DatabaseService.newRecipient(AppConfig.Recipients === undefined ? 1 : AppConfig.Recipients.length + 1, 'CRL Signing Group', this.ecId);
    this.recordWrapper.SigningGroupId__c = sg;
    this.recordWrapper.SigningGroupName__c = DatabaseObjects.signingGroups[sg].name;
    this.recordWrapper.members = DatabaseObjects.getSigningGroupMembers(sg);
  };

  ModalAction.prototype.addTemplates = function (templates, parentComponent) { //Array of templateIds
    var results = [];
    var ecId = this.ecId;
    var order = AppConfig.Documents.length + 1;
    templates.forEach(function (templateId) {
      var templateDoc = DatabaseService.newDocument(order++, 'DSTemplate', ecId);
      templateDoc.Name__c = DatabaseObjects.templates[templateId].name;
      templateDoc.Value__c = templateId;
      results.push(templateDoc);
    });
    DatabaseService.bulkInsert(results, parentComponent).then(function () {
      AppConfig.refresh();
    }).catch(function (error) {
      AppConfig.displayError(error);
    });
  };

  ModalAction.prototype.getNewParameter = function (key, sequence) {
    return DatabaseService.newAdvancedParameter(key, sequence);
  };

  ModalAction.prototype.getNextAction = function (params, mComponent) {
    //Create handlers for each ModalAction that contains next actions
    var next;
    var self = this;
    switch (this.next.action) {
      case 'Delete Layout':
        next = this.next.callback(params.layoutKey, params.layoutId, params.recordId);
        break;
      case 'Edit Signing Group':
        next = this.next.callback(this.ecId, this.recordWrapper, this);
        break;
    }
    if (next) self.changeModalActionScope(next, self, mComponent);
  };

  ModalAction.prototype.saveAdvancedParameters = function (envelopeConfigurationId, parameters) {
    DatabaseService.updateParameters(envelopeConfigurationId, parameters).then(function (params) {
      AppConfig.displaySuccess(generateSuccessMessage(Localization.labels['AdvancedParameters']));
      AppConfig.refresh();
    }).catch(function (err) {
      AppConfig.displayError(err.message);
    });
  };

  ModalAction.prototype.disableSave = function (mComponent, SaveOptionValue) {
    if (!this.SaveOptions) return;
    mComponent.set("v.SaveOptionsEnabled", SaveOptionValue);
  };

  var buildDefaultModalAction = function (ecId) {
    return new ModalAction(ecId);
  };

  var generateSuccessMessage = function (title) {
    return Localization.labels['DecSaveSuccess'];
    //return Localization.labels['EnvelopeConfigurationSaveSuccess'].replace('{0}', title); // terrible grammar >:-(
  };

  var buildModalAction = function (actionSource, event) {
    return new Promise(function (resolve) {
      switch (actionSource) {
        case 'crl_recipient':
          resolve(getCRLModalAction(AppConfig, 'NEW', ecId, event, component));
          break;
        case 'edit_crl_recipient':
          resolve(getCRLModalAction(AppConfig, 'EDIT', ecId, event, component));
          break;
        case 'crcl_recipient':
          resolve(getCRCLModalAction(AppConfig, 'NEW', ecId, event, component));
          break;
        case 'add_user':
          resolve(getCRCLModalAction(AppConfig, 'NEW', ecId, event, component));
          break;
        case 'add_contact':
          resolve(getCRCLModalAction(AppConfig, 'NEW', ecId, event, component));
          break;
        case 'add_lead':
          resolve(getCRCLModalAction(AppConfig, 'NEW', ecId, event, component));
          break;
        case 'edit_user':
          resolve(getCRCLModalAction(AppConfig, 'NEW', ecId, event, component));
          break;
        case 'edit_contact':
          resolve(getCRCLModalAction(AppConfig, 'NEW', ecId, event, component));
          break;
        case 'edit_lead':
          resolve(getCRCLModalAction(AppConfig, 'NEW', ecId, event, component));
          break;
        case 'edit_crcl_recipient':
          resolve(getCRCLModalAction(AppConfig, 'EDIT', ecId, event, component));
          break;
        case 'add_sg':
          resolve(getSGModalAction(AppConfig, ecId, event, component));
          break;
        case 'file_doc':
          resolve(getFileUploadModalAction(AppConfig, ecId, event, component));
          break;
        case 'dst_doc':
          resolve(getDSTModalAction(AppConfig, ecId, event, component));
          break;
        case 'ccrm_map':
          resolve(getCCRMModalAction(AppConfig, 'NEW', ecId, event, component));
          break;
        case 'edit_ccrm_map':
          resolve(getCCRMModalAction(AppConfig, 'EDIT', ecId, event, component));
          break;
        case 'cctm_map':
          resolve(getCCTMModalAction(AppConfig, 'NEW', ecId, event, component));
          break;
        case 'edit_cctm_map':
          resolve(getCCTMModalAction(AppConfig, 'EDIT', ecId, event, component));
          break;
        case 'ccnm_map':
          resolve(getCCNMModalAction(AppConfig, 'NEW', ecId, event, component));
          break;
        case 'edit_ccnm_map':
          resolve(getCCNMModalAction(AppConfig, 'EDIT', ecId, event, component));
          break;
        case 'add_layout':
          resolve(getLayoutAssignModalAction(AppConfig, ecId, event, component));
          break;
        case 'manage_layouts':
          resolve(getLayoutManageModalAction(AppConfig, ecId, event, component));
          break;
        case 'view_dst':
          resolve(getDocuSignResourceModalAction(AppConfig, ecId, event, component));
          break;
        case 'view_file':
          resolve(getSalesforceResourceModalAction(AppConfig, ecId, event, component));
          break;
        case 'advanced_parameters':
          resolve(getAdvancedParametersAction(AppConfig, ecId, event, component));
          break;
      }
    });
  };

  var getAdvancedParameterTypes = function (advancedParameterTypes) {
    var result = [];
    if ($A.util.isArray(advancedParameterTypes)) {
      advancedParameterTypes.forEach(function (apt) {
        result.push({label: apt, value: apt});
      });
    }
    return result;
  };

  var getAdvancedParametersAction = function (AppConfig, ecId, event, component) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.AdvancedParameters = $A.util.isEmpty(AppConfig.AdvancedParameters) ? [] : Object.values(AppConfig.AdvancedParameters);
    ModalAction.ParameterTypes = getAdvancedParameterTypes(AppConfig.AdvancedParametersTypes);
    ModalAction.Type.Category = 'Advanced';
    ModalAction.Type.Variation = 'AdvancedParameters';
    ModalAction.Title = Localization.labels['AdvancedParameters'];
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.SettingIcon');
    ModalAction.Salesforce.Action = 'ViewAdvancedParameters';
    ModalAction.Header = Localization.labels['ManageAdvancedParameters'];
    ModalAction.SaveOptions.label = Localization.labels['Save'];
    ModalAction.SaveOptions.enabled = true;
    return ModalAction;
  };

  var getCRLModalAction = function (AppConfig, type, ecId, event, component) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Recipient';
    ModalAction.Type.Variation = 'CRL';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['Recipient__c'];
    ModalAction.Title = 'DocuSign Recipent';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.RecipientIcon');

    if (type === 'EDIT' && event && event.target) {
      var recipientInContext = event.target.getAttribute('data-sfid');
      ModalAction.Header = Localization.labels['EditRecipient'];
      ModalAction.Salesforce.Action = 'Edit';
      ModalAction.Salesforce.Id = recipientInContext;
      ModalAction.recordWrapper = DatabaseService.getRecord(recipientInContext, AppConfig.Recipients);
    } else if (type === 'NEW') {
      ModalAction.Header = Localization.labels['NewRecipient'];
      ModalAction.Salesforce.Action = 'New';
      ModalAction.Salesforce.Order = AppConfig.Recipients === undefined ? 1 : AppConfig.Recipients.length + 1;
      ModalAction.recordWrapper = DatabaseService.newRecipient(ModalAction.Salesforce.Order, ModalAction.Type.Variation, ecId);
    }
    ModalAction.SaveOptions.label = Localization.labels['SaveRecipient2'];
    ModalAction.SaveOptions.enabled = true;
    return ModalAction;
  };

  var getCRCLModalAction = function (AppConfig, type, ecId, event, component) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Recipient';
    ModalAction.Type.Variation = 'CRCL';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['Recipient__c'];
    ModalAction.Salesforce.sourceId = ecId;
    ModalAction.Title = 'DocuSign Recipent';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.RecipientIcon');

    if (type === 'EDIT' && event && event.target) {
      var recipientInContext = event.target.getAttribute('data-sfid');
      ModalAction.Header = Localization.labels['EditRecipient'];
      ModalAction.Salesforce = {};
      ModalAction.Salesforce.Action = 'Edit';
      ModalAction.Salesforce.Id = recipientInContext;
      ModalAction.recordWrapper = DatabaseService.getRecord(recipientInContext, AppConfig.Recipients);
      ModalAction.Salesforce.BaseObject = AppConfig.BaseObject;

    } else if (type === 'NEW') {
      ModalAction.Header = Localization.labels['NewRecipient'];
      ModalAction.Salesforce.Action = 'New';
      ModalAction.Salesforce.Order = AppConfig.Recipients === undefined ? 1 : AppConfig.Recipients.length + 1;
      ModalAction.recordWrapper = DatabaseService.newRecipient(ModalAction.Salesforce.Order, ModalAction.Type.Variation, ecId);
      ModalAction.Salesforce.BaseObject = AppConfig.BaseObject;
    }
    ModalAction.SaveOptions.label = Localization.labels['SaveRecipient2'];
    ModalAction.SaveOptions.enabled = true;
    return ModalAction;
  };

  var getCCRMModalAction = function (AppConfig, type, ecId, event, component) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Map';
    ModalAction.Type.Variation = 'CCRM';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
    ModalAction.Title = 'Custom Contact Role Mapping';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.RecipientIcon');
    ModalAction.Fields.MapName = Localization.labels['SalesforceRole'];
    ModalAction.Fields.MapValue = Localization.labels['DocuSignRole'];

    if (type === 'EDIT' && event && event.target) {
      var mapInContext = event.target.getAttribute('data-sfid');
      ModalAction.Header = Localization.labels['EditCustomContactRoleMapping'];
      ModalAction.Salesforce.Action = 'Edit';
      ModalAction.Salesforce.Id = mapInContext;
      ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
      ModalAction.recordWrapper = DatabaseService.getRecord(mapInContext, AppConfig.Mappings.CCRM);
    } else if (type === 'NEW') {
      ModalAction.Header = Localization.labels['NewRoleMapping'];
      ModalAction.Salesforce.Action = 'New';
      ModalAction.recordWrapper = DatabaseService.newMapping(ModalAction.Type.Variation, ecId);
    }
    ModalAction.SaveOptions.label = Localization.labels['Save'];
    ModalAction.SaveOptions.enabled = true;
    return ModalAction;
  };

  var getCCTMModalAction = function (AppConfig, type, ecId, event, component) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Map';
    ModalAction.Type.Variation = 'CCTM';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
    ModalAction.Title = 'Custom Contact Type Mapping';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.RecipientIcon');
    ModalAction.Fields.MapName = Localization.labels['Role'];
    ModalAction.Fields.MapValue = Localization.labels['TagType'];

    if (type === 'EDIT' && event && event.target) {
      var mapInContext = event.target.getAttribute('data-sfid');
      ModalAction.Header = Localization.labels['EditCustomContactTypeMapping'];
      ModalAction.Salesforce.Action = 'Edit';
      ModalAction.Salesforce.Id = mapInContext;
      ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
      ModalAction.recordWrapper = DatabaseService.getRecord(mapInContext, AppConfig.Mappings.CCTM);
    } else if (type === 'NEW') {
      ModalAction.Header = Localization.labels['NewTypeMapping'];
      ModalAction.Salesforce.Action = 'New';
      ModalAction.recordWrapper = DatabaseService.newMapping(ModalAction.Type.Variation, ecId);
    }
    ModalAction.SaveOptions.label = Localization.labels['Save'];
    ModalAction.SaveOptions.enabled = true;
    return ModalAction;
  };

  var getCCNMModalAction = function (AppConfig, type, ecId, event, component) {
    ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Map';
    ModalAction.Type.Variation = 'CCTM';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
    ModalAction.Title = 'Custom Contact Note Mapping';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.RecipientIcon');
    ModalAction.Fields.MapName = 'Role';
    ModalAction.Fields.MapValue = 'Note';

    if (type === 'EDIT' && event && event.target) {
      var mapInContext = event.target.getAttribute('data-sfid');
      ModalAction.Header = Localization.labels['EditCustomContactNoteMapping'];
      ModalAction.Salesforce.Action = 'Edit';
      ModalAction.Salesforce.Id = mapInContext;
      ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
      ModalAction.recordWrapper = DatabaseService.getRecord(mapInContext, AppConfig.CCNM);
    } else if (type === 'NEW') {
      ModalAction.Header = Localization.labels['NewNoteMapping'];
      ModalAction.Salesforce.Action = 'New';
      ModalAction.recordWrapper = DatabaseService.newRecipient(ModalAction.Type.Variation, ecId);
    }
    ModalAction.SaveOptions.label = Localization.labels['Save'];
    ModalAction.SaveOptions.enabled = true;
    return ModalAction;
  };

  var getDSTModalAction = function (AppConfig, ecId, event, component, data) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Document';
    ModalAction.Type.Variation = 'DSTemplate';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
    ModalAction.Title = 'DocuSign Template';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.DocumentIcon');
    ModalAction.Salesforce.Action = 'DST';
    ModalAction.Header = Localization.labels['SelectDocuSignTemplate'];
    ModalAction.Salesforce.Order = AppConfig.Documents === undefined ? 1 : AppConfig.Documents.length + 1;
    ModalAction.Salesforce.Url = NamespaceService.paths['envelopeconfigurationmodal'] + '?ecId=' + ecId + '&Action=DST';
    ModalAction.SaveOptions.label = Localization.labels['AddTemplate'];
    ModalAction.recordWrapper = DatabaseService.newDocument(AppConfig.Documents.length + 1, ModalAction.Type.Variation, ecId);
    ModalAction.Templates = Object.values(DatabaseObjects.templates);
    ModalAction.selectedTemplates = [];
    ModalAction.SaveOptions.enabled = !!(ModalAction.Templates && ModalAction.Templates.length > 0);

    return ModalAction;
  };

  var getSGModalAction = function (AppConfig, ecId, event, component) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Recipient';
    ModalAction.Type.Variation = 'SG';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['Recipient__c'];
    ModalAction.Title = 'DocuSign Signing Group';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.RecipientIcon');
    ModalAction.Salesforce.Action = 'SG';
    ModalAction.Header = Localization.labels['SelectDocuSignSigningGroup'];
    ModalAction.Salesforce.Order = AppConfig.Recipients === undefined ? 1 : AppConfig.Recipients.length + 1;
    ModalAction.Salesforce.Url = NamespaceService.paths['envelopeconfigurationmodal'] + '?ecId=' + ecId + '&Action=SG';
    ModalAction.SaveOptions.label = Localization.labels['AddSigningGroup2'];
    ModalAction.SaveOptions.enabled = false;
    ModalAction.next = new ModalActionScope('Edit Signing Group', getSGChainModalAction, true);
    ModalAction.SigningGroups = Object.values(DatabaseObjects.signingGroups);
    ModalAction.SaveOptions.enabled = !!(ModalAction.SigningGroups && ModalAction.SigningGroups.length > 0);
    return ModalAction;
  };

  var getFileUploadModalAction = function (AppConfig, ecId, event, component) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Document';
    ModalAction.Type.Variation = 'File Upload';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
    ModalAction.Title = Localization.labels['FileUpload'];
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.DocumentIcon');
    ModalAction.Salesforce.Action = 'New';
    ModalAction.Header = Localization.labels['FileUpload'];
    ModalAction.SaveOptions.enabled = false;
    ModalAction.Salesforce.Order = AppConfig.Documents === undefined ? 1 : AppConfig.Documents.length + 1;
    ModalAction.recordWrapper = DatabaseService.newDocument(AppConfig.Documents.length + 1, ModalAction.Type.Variation, ecId);

    return ModalAction;
  };

  var getLayoutAssignModalAction = function (AppConfig, ecId, event, component) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Layout';
    ModalAction.Type.Variation = 'Layout Assignment';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
    ModalAction.Title = 'Layout Assignment';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.SettingIcon');
    ModalAction.Salesforce.Action = 'Layout';
    ModalAction.Header = Localization.labels['AddToObjectLayout'];
    ModalAction.Salesforce.Url = NamespaceService.paths['envelopeconfigurationmodal'] + '?ecId=' + ecId + '&Action=LAYOUT';
    ModalAction.SaveOptions.label = Localization.labels['AddLayoutAssignment'];
    ModalAction.SaveOptions.enabled = true;

    return ModalAction;
  };

  var getClassicLayoutAssignModalAction = function (ecId, previous) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Layout';
    ModalAction.Type.Variation = 'Layout Assignment';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
    ModalAction.Title = 'Layout Assignment';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.SettingIcon');
    ModalAction.Salesforce.Action = 'Layout';
    ModalAction.Header = Localization.labels['AddToClassicLayout'];
    ModalAction.Salesforce.Url = NamespaceService.paths['envelopeconfigurationmodal'] + '?ecId=' + ecId + '&Action=LAYOUT&Type=Classic';
    ModalAction.SaveOptions.label = Localization.labels['AddLayoutAssignment'];
    ModalAction.SaveOptions.enabled = false;
    ModalAction.previous = previous;

    return ModalAction;
  };

  var getDeleteLayoutAction = function (layoutKey, layoutId, ecId) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Layout';
    ModalAction.Type.Variation = 'Delete Layout';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
    ModalAction.Title = 'Delete Layout';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.RecipientIcon');
    ModalAction.Salesforce.Action = 'DeleteLayout';
    ModalAction.Header = 'Delete Layout';
    ModalAction.Salesforce.Url = NamespaceService.paths['envelopeconfigurationmodal'] + '?ecId=' + ecId + '&Action=ButtonDelete&LayoutKey=' + layoutKey + '&LayoutId=' + layoutId;
    ModalAction.SaveOptions.label = Localization.labels['ConfirmLabel'];
    ModalAction.SaveOptions.enabled = true;
    return ModalAction;
  };

  var getSGChainModalAction = function (ecId, recordWrapper, previous) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Recipient';
    ModalAction.Type.Variation = 'CRL';
    ModalAction.Type.Action = 'SG';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['Recipient__c'];
    ModalAction.Title = 'DocuSign Recipient';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.RecipientIcon');
    ModalAction.Header = Localization.labels['EditSigningGroupRecipient'];
    ModalAction.Salesforce.Action = 'New';
    ModalAction.Salesforce.Id = recordWrapper.Id;
    ModalAction.recordWrapper = recordWrapper;
    ModalAction.SaveOptions.label = Localization.labels['SaveRecipient2'];
    ModalAction.SaveOptions.enabled = true;
    ModalAction.previous = previous;
    return ModalAction;
  };

  var getLightningLayoutAssignModalAction = function (ecId, previous) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Layout';
    ModalAction.Type.Variation = 'Layout Assignment';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
    ModalAction.Title = 'Layout Assignment';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.SettingIcon');
    ModalAction.Salesforce.Action = 'Layout';
    ModalAction.Header = Localization.labels['AddToLightningLayout'];
    ModalAction.Salesforce.Url = NamespaceService.paths['envelopeconfigurationmodal'] + '?ecId=' + ecId + '&Action=LAYOUT&Type=Lightning';
    ModalAction.SaveOptions.label = Localization.labels['AddLayoutAssignment'];
    ModalAction.SaveOptions.enabled = false;
    ModalAction.previous = previous;
    return ModalAction;
  };

  var getLayoutManageModalAction = function (AppConfig, ecId) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Layout';
    ModalAction.Type.Variation = 'Layout Manage';
    ModalAction.Salesforce.sObject = 'EnvelopeConfiguration__c';
    ModalAction.Title = 'Layout Assignment';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.SettingIcon');
    ModalAction.Salesforce.Action = 'Layout';
    ModalAction.Header = Localization.labels['AddToObjectLayout'];
    ModalAction.Salesforce.Url = NamespaceService.paths['envelopeconfigurationmodal'] + '?ecId=' + ecId + '&Action=LAYOUT';
    ModalAction.Collection.Layouts = AppConfig.Layouts;
    ModalAction.next = new ModalActionScope('Delete Layout', getDeleteLayoutAction);
    ModalAction.ChildActions.push({
      key: Localization.labels['AddClassicButton'], value: getClassicLayoutAssignModalAction(ecId, ModalAction)
    }, {
      key: Localization.labels['AddLightningButton'], value: getLightningLayoutAssignModalAction(ecId, ModalAction)
    });
    return ModalAction;
  };

  var getDocuSignResourceModalAction = function (AppConfig, ecId, event, component) { //TODO
    return null;
  };

  var getSalesforceResourceModalAction = function (AppConfig, ecId, event, component) {
    var ModalAction = buildDefaultModalAction(ecId);
    ModalAction.Type.Category = 'Salesforce File';
    ModalAction.Type.Variation = 'Salesforce Resource';
    ModalAction.Salesforce.sObject = NamespaceService.sObjects['CustomParameterMap__c'];
    ModalAction.Title = 'Salesforce File';
    ModalAction.PostSaveMessage = generateSuccessMessage(ModalAction.Title);
    ModalAction.Icon = $A.get('$Resource.DocumentIcon');
    ModalAction.Salesforce.Action = 'Resource';
    ModalAction.Header = Localization.labels['ViewSalesforceFile'];
    if (event && event.target) {
      ModalAction.Salesforce.Id = event.target.getAttribute('data-sfid');
    }
    ModalAction.SaveOptions.enabled = false;
    return ModalAction;
  };

  return {
    getModal: buildModalAction
  };
};
