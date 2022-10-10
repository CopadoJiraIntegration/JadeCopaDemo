/** Copyright 2017 Aria Solutions Inc.

 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
 documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
 rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
 persons to whom the Software is furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

(function(ctx) {
  if (ctx.ACSFIntegration === undefined) {
    ctx.ACSFIntegration = {};
  }

  var _MAX_WIDTH_CONSOLE = 90;

  var _callAttributeConfigurationPromise;

  var _namespacePrefix = '';
  var _clipboardImageUrl = '';

  function clearCallAttributes() {
    $('#attributesTable > tbody').empty();
    $('#linksTable > tbody').empty();

    /*
    //Clear Attributes
    var attributeList = document.getElementById('callAttributesList');
    while (attributeList.hasChildNodes()) {
      attributeList.removeChild(attributeList.lastChild);
    }

    //Clear Links
    var attributeLinkList = document.getElementById('callAttributesList2');
    while (attributeLinkList.hasChildNodes()) {
      attributeLinkList.removeChild(attributeLinkList.lastChild);
    }
     */
  }


  function showCallAttributes() {
    $('#attributesPopover').removeClass('slds-hide');
    //document.getElementById('callAttributesPopoverContainer').classList.remove('slds-hide');
  }

  function showCallLinkAttributes() {
    $('#linksPopover').removeClass('slds-hide');
    //document.getElementById('callAttributesPopoverContainer2').classList.remove('slds-hide');
  }

  function hideAttributesPopover() {
    $('#attributesPopover').addClass('slds-hide');
    //document.getElementById('callAttributesPopoverContainer').classList.add('slds-hide');
  }

  function hideLinksPopover() {
    $('#linksPopover').addClass('slds-hide');
    //document.getElementById('callAttributesPopoverContainer2').classList.add('slds-hide');
  }

  function showAttributesIndicator() {
    $('#attributesIndicator').removeClass('slds-hide');
    //document.getElementById('callAttributesBadge').classList.remove('slds-hide');
  }

  function showLinksIndicator() {
    $('#linksIndicator').removeClass('slds-hide');
    //document.getElementById('callAttributesBadge2').classList.remove('slds-hide');
  }

  function isAttributesIndicatorVisible() {
    return !$('#attributesIndicator').hasClass('slds-hide');
    //return document.getElementById('callAttributesBadge').classList.contains('slds-hide') === false;
  }

  function isLinksIndicatorVisible() {
    return !$('#linksIndicator').hasClass('slds-hide');
    //return document.getElementById('callAttributesBadge2').classList.contains('slds-hide') === false;
  }

  function hideAttributesIndicator() {
    $('#attributesIndicator').addClass('slds-hide');
    //document.getElementById('callAttributesBadge').classList.add('slds-hide');
  }

  function hideLinksIndicator() {
    $('#linksIndicator').addClass('slds-hide');
    //document.getElementById('callAttributesBadge2').classList.add('slds-hide');
  }

  function handleAttributesIndicatorClicked() {
    $('.helperPopover').filter((index, item) => {
      return !item.id.startsWith('attributes');
    }).addClass('slds-hide');

    $('#attributesPopover').toggleClass('slds-hide');
  }

  function handleLinksIndicatorClicked() {
    $('.helperPopover').filter((index, item) => {
      return !item.id.startsWith('links');
    }).addClass('slds-hide')

    $('#linksPopover').toggleClass('slds-hide');
  }

  function createCallAttributesForContactIfApplicable(contact) {
    if (!contact.isInbound()) {
      connect.getLog().info("ACSFIntegration:CallAttributesDisplay:createCallAttributesForContactIfApplicable:call not inbound");
      return;
    }
    clearCallAttributes();
    function createTruncatedDiv(contactAttributes, isLable) {
      var div = document.createElement('div');
      div.classList.add('slds-truncate');
      div.setAttribute('title', isLable ? contactAttributes.label : contactAttributes.value);
      div.style['max-width'] = _MAX_WIDTH_CONSOLE + 'px';

      if(contactAttributes.fieldType.toUpperCase() === 'text'.toUpperCase()){
        var textElement = document.createTextNode(isLable ? contactAttributes.label : contactAttributes.value);
        div.appendChild(textElement);
      }

      if(contactAttributes.fieldType.toUpperCase() === 'hyperlink'.toUpperCase()){
        var link = document.createElement('a');
        var t = document.createTextNode(contactAttributes.label) ;
        link.setAttribute('href', contactAttributes.value);
        link.setAttribute('target', 'new');
        link.appendChild(t);
        div.appendChild(link);
      }

      return div;
    }

    function addNewRow(contactAttribute)
    {
      var attributeListTable = '';

      if(contactAttribute.fieldType.toUpperCase() === 'text'.toUpperCase())
        attributeListTable = $('#attributesTable > tbody')[0];
        //attributeListTable = document.getElementById('callAttributesList');

      if(contactAttribute.fieldType.toUpperCase() === 'hyperlink'.toUpperCase())
        attributeListTable = $('#linksTable > tbody')[0];
        //attributeListTable = document.getElementById('callAttributesList2');

      var tr = document.createElement('tr');

      if (contactAttribute.style) {
        tr.setAttribute('style', contactAttribute.style);
        //tr.style = contactAttribute.style;
      }

      if (contactAttribute.display.toUpperCase() === 'key-value'.toUpperCase()) {
        tr.appendChild(createColumn(contactAttribute, true,false));
        tr.appendChild(createColumn(contactAttribute,false,false));
        tr.appendChild(createColumn(contactAttribute,false,true));
      }

      if (contactAttribute.display.toUpperCase() === 'value'.toUpperCase() || contactAttribute.display.toUpperCase() === 'key'.toUpperCase()) {
        var isKey = contactAttribute.display.toUpperCase() === 'key'.toUpperCase();
        tr.appendChild(createColumn(contactAttribute, isKey,false));
        tr.appendChild(createColumn(contactAttribute,isKey,true));
      }
      attributeListTable.appendChild(tr);
    }

    function createColumn(contactAttribute, isLabel, isCopyClipBoardButton) {
      var td = document.createElement('td');
      td.setAttribute('style', contactAttribute.style);
      td.setAttribute('data-label', isLabel? contactAttribute.label : contactAttribute.value);
      if(contactAttribute.display.toUpperCase() !== 'key-value'.toUpperCase() && !isCopyClipBoardButton){
        td.colSpan = "2";
      }

      if(!isLabel){
        if(isCopyClipBoardButton){
          td.style['max-width'] =  '20 px';
          //td.setAttribute('data-clipboard-text', contactAttribute.value);
          td.appendChild(getClipboardButton(contactAttribute.value));
        }
        else{

          td.appendChild(createColumedDiv(contactAttribute,isLabel));
          td.style['max-width'] = _MAX_WIDTH_CONSOLE + 'px';
        }
      }
      else{

        if(isCopyClipBoardButton){
          //td.setAttribute('data-clipboard-text', contactAttribute.value);
          td.style['max-width'] =  '20 px';
          td.appendChild(getClipboardButton(contactAttribute.value));
        }
        else{
          td.appendChild(createColumedDiv(contactAttribute,isLabel));
          td.style['max-width'] = _MAX_WIDTH_CONSOLE + 'px';
        }
      }
      //td.appendChild(createColumedDiv(contactAttribute,isLabel));



      return td;
    }

    function getClipboardButton(value) {
      var button = document.createElement('button');
      button.classList.add('btn', 'clipboard');
      button.setAttribute('title', 'Copy to clipboard');
      button.setAttribute('width', '2px');
      button.setAttribute('height', '2px');

      button.setAttribute('data-clipboard-text', value);
      var image = document.createElement('img');
      image.setAttribute('src', _clipboardImageUrl);
      image.setAttribute('alt', "Copy to clipboard");
      image.setAttribute('width', '13')
      button.appendChild(image);

      return button;
    }

    function createColumedDiv(contactAttribute, isLabel) {

      var div = document.createElement('div');
      div.classList.add('slds-truncate');
      div.setAttribute('title', isLabel ? contactAttribute.label : contactAttribute.value);

      div.style['max-width'] = _MAX_WIDTH_CONSOLE + 'px';

      var textElement;
      if(contactAttribute.fieldType.toUpperCase() === 'text'.toUpperCase()){
        textElement = document.createTextNode(isLabel ? contactAttribute.label : mergeCustomAttribute(contactAttribute));
        div.appendChild(textElement);
      }

      if(contactAttribute.fieldType.toUpperCase() === 'hyperlink'.toUpperCase()){

        var link;
        var linkText;
        if (contactAttribute.display.toUpperCase() === 'key-Value'.toUpperCase())
        {
          if(isLabel){
            textElement = document.createTextNode(contactAttribute.label);
            div.appendChild(textElement);
          }
          else{
            link = document.createElement('a');
            linkText = document.createTextNode(mergeCustomAttribute(contactAttribute)) ;
            link.setAttribute('href', mergeCustomAttribute(contactAttribute));
            link.setAttribute('target', 'new');
            link.appendChild(linkText);
            div.appendChild(link);
          }

        }else
        {
          link = document.createElement('a');
          linkText = document.createTextNode(isLabel ? contactAttribute.label: contactAttribute.value) ;
          link.setAttribute('href', mergeCustomAttribute(contactAttribute));
          link.setAttribute('target', 'new');
          link.appendChild(linkText);
          div.appendChild(link);
        }

      }

      return div;
    }

    function mergeCustomAttribute(contactAttribute){
      try{
        var mergedString = '';
        if(contactAttribute.defaultValue !== ""){

          connect.getLog().info("ACSFIntegration:CallAttributesDisplay:mergeCustomAttributes %s", contactAttribute.defaultValue);
          mergedString = contactAttribute.defaultValue;
          var obj = JSON.parse(contactAttribute.value);
          var fieldToReplace = '';

          if(obj !== undefined){

            if(Object.keys(obj).length >0){
              Object.keys(obj).forEach(function(key) {
                fieldToReplace = "{{" + key + "}}";
                connect.getLog().info('Merged String value %s', fieldToReplace.trim() + ' : ' + obj[key]);
                mergedString = mergedString.replace(fieldToReplace, obj[key]);
                connect.getLog().info('Merged String %s', mergedString);
              });
            }
            else {
              fieldToReplace = "{{" + contactAttribute.key + "}}";
              mergedString = contactAttribute.defaultValue !== "" ? contactAttribute.defaultValue.replace(fieldToReplace,contactAttribute.value) : contactAttribute.value;
              connect.getLog().info('Merged String else %s', mergedString);
            }
          }
        }

        else{
          mergedString = contactAttribute.value
        }
      }
      catch(e)
      {
        var fieldToReplace = "{{" + contactAttribute.key + "}}";
        mergedString = contactAttribute.defaultValue !== "" ? contactAttribute.defaultValue.replace(fieldToReplace,contactAttribute.value) : contactAttribute.value;
      }

      return mergedString;
    }

    function sortCCPAttribute(configureAttributes,prop, asc) {
      return configureAttributes.sort(function(a, b) {
        if (asc) {
          return (a[prop] > b[prop]) ? 1 : ((a[prop] < b[prop]) ? -1 : 0);
        } else {
          return (b[prop] > a[prop]) ? 1 : ((b[prop] < a[prop]) ? -1 : 0);
        }});
    }

    var attributes = contact.getAttributes();
    var numAttributes = Object.keys(attributes).length;

    connect.getLog().info("ACSFIntegration:CallAttributesDisplay:createCallAttributesForContactIfApplicable:numAttributes=%s", numAttributes);

    /*
    if (numAttributes === 0) {
      hideAttributesIndicator();
      hideLinksIndicator();
      return;
    }
     */

    _callAttributeConfigurationPromise.
    then(function (config) {
      //var shouldShowAttriburesIndicator = false;
      //var shouldShowLinksIndicator = false;


      //Implement attributes display orders

      var configuredAttributes = sortCCPAttribute(Object.values(config),'fieldDisplayOrder',true)

      connect.getLog().info("Custom Attributes : %s", JSON.stringify(configuredAttributes));
      connect.getLog().info("Attributes : %s", JSON.stringify(attributes));

      for(var index in configuredAttributes){

        //debugger;
        connect.getLog().info("Display Attribute1 index : %s", index.toString() + ' Key : ' + configuredAttributes[index].key );
        var attributeRecord = attributes[configuredAttributes[index].key];

        if(attributeRecord !== undefined && attributeRecord !== null){
          connect.getLog().info("Display Attribute2 Key : %s", attributeRecord.name + ' Name : ' + attributeRecord.value );
          configuredAttributes[index].value = attributeRecord.value;
          connect.getLog().info("Display Attribute3 Key : %s", JSON.stringify(configuredAttributes[index]));
          addNewRow(configuredAttributes[index]);

          /*
          if(!shouldShowAttriburesIndicator)
            shouldShowAttriburesIndicator = configuredAttributes[index].fieldType.toUpperCase() === 'text'.toUpperCase();
          if(!shouldShowLinksIndicator)
            shouldShowLinksIndicator = configuredAttributes[index].fieldType.toUpperCase() === 'hyperlink'.toUpperCase();
           */
        }


      }

      /*
      if (shouldShowAttriburesIndicator) {
        showAttributesIndicator();
      }
      if (shouldShowLinksIndicator) {
        showLinksIndicator();
      }
       */

      $('.clipboard').click((event) => {
        navigator.permissions.query({name: "clipboard-write"}).then(result => {
          if (result.state == "granted" || result.state == "prompt") {
            const value = event.currentTarget.getAttribute('data-clipboard-text');

            navigator.clipboard.writeText(value).then(() => {
              ac.Utils.Log.info('Copied [' + value + '] to the clipboard.');
            }, () => {
              ac.Utils.Log.info('Failed to copy [' + value + '] to the clipboard.');
            });
          }
        });
      });
    }).
    catch(function () {
      hideAttributesIndicator();
      hideLinksIndicator();
    });
  }

  ctx.ACSFIntegration.CallAttributesDisplay = {
    onAgentHandler: function (namespacePrefix, clipboardImageUrl) {
      connect.getLog().info("ACSFIntegration:CallAttributesDisplay:onAgentHandler");

      _namespacePrefix = namespacePrefix;
      _clipboardImageUrl = clipboardImageUrl;

      //register attributes click event
      $('#attributesIndicator').click((event) => {
        handleAttributesIndicatorClicked();
      });

      $('#linksIndicator').click((event) => {
        handleLinksIndicatorClicked();
      });
      /*
      document.getElementById('callAttributesBadge').onclick = function () {
          handleAttributesIndicatorClicked();
        };
      }

      document.getElementById('callAttributesBadge2').onclick = function () {
        handleLinksIndicatorClicked();
      };
       */

      //initialize clipboard event


      _callAttributeConfigurationPromise = new Promise(function (resolve, reject) {
        var callAttributeSO = new SObjectModel.Call_Attributes_Configuration();
        //debugger;
        //callAttributeSO.retrieve({orderby: [ {CCP_Attribute_Display_Order__c: 'ASC'} ]}, function(err, records, event) {
        callAttributeSO.retrieve({}, function(err, records, event) {
          if (err) {
            connect.getLog().
            error("ACSFIntegration:CallAttributesDisplay:retrieveCallAttributeConfiguration unable to retrieve Call Attribute Configuration statuses.").
            withObject(err);

            reject(err);
          }
          else {
            var callAttributeConfiguration = [];
            records.forEach(function(record) {
              var key = record.get("Attribute_Name");
              var label = record.get("Attribute_Label");
              var fieldType = record.get("Attribute_FieldType");
              var fieldDisplayOrder = record.get("Attribute_Display_Order");
              var style = record.get("Attribute_Style");
              var display = record.get("Attribute_Display_KeyValue");
              var defaultValue = record.get("Attribute_Default_Value");
              var attributeSection = record.get("Attribute_Section");

              callAttributeConfiguration[key] = {
                'key': key,
                'label': label,
                'value': '',
                'defaultValue': defaultValue === undefined ||defaultValue === '' ? '' : defaultValue,
                'fieldType': fieldType === undefined ||fieldType === '' ? 'text' : fieldType,
                'fieldDisplayOrder': fieldDisplayOrder === undefined || fieldDisplayOrder === ''  ? '99' : fieldDisplayOrder,
                'style': style === undefined || style === '' ? 'background-color:#F4F1F1;' : style,
                'display': display === undefined || display === '' ? 'key-value' : display ,
                'section': attributeSection === undefined || attributeSection === '' ? 'Attribute' : attributeSection
              };
              connect.getLog().info("ACSFIntegration:CallAttributesDisplay:onAgentHandler debug: %s", callAttributeConfiguration[key].fieldType);
            });

            //Sort Attributes based on display order
            //sortCCPAttribute(Object.values(callAttributeConfiguration),'fieldDisplayOrder',true);

            connect.getLog().info("ACSFIntegration:CallAttributesDisplay:retrieveCallAttributeConfiguration:callAttributeConfiguration retrieved: %s", JSON.stringify(callAttributeConfiguration));

            resolve(callAttributeConfiguration);
            //Sort Attributes based on display order and send the sorted array to resolve method to map with contact center attributes
            //resolve(sortCCPAttribute(Object.values(callAttributeConfiguration),'fieldDisplayOrder',true));
          }

          connect.agent(function (agent) {
            if (agent.getState().type === connect.AgentStateType.ROUTABLE) {
                hideAttributesPopover();
                hideLinksPopover();
                clearCallAttributes();
            }
            if (agent.getContacts().length === 1) {
              var contact = agent.getContacts()[0];

              createCallAttributesForContactIfApplicable(contact);

              if (contact && contact.isConnecting()) {
                hideAttributesIndicator();
                hideLinksIndicator();
              }
            }
          });
        });
      });
    },

    onIncoming: function(contact, clipboardImage) {
      connect.getLog().info("ACSFIntegration:CallAttributesDisplay:onConnecting");
      createCallAttributesForContactIfApplicable(contact,clipboardImage);
      hideAttributesIndicator();
      hideLinksIndicator();
    },

    onConnecting: function(contact, clipboardImage) {
      connect.getLog().info("ACSFIntegration:CallAttributesDisplay:onConnecting");
      createCallAttributesForContactIfApplicable(contact,clipboardImage);
      hideAttributesIndicator();
      hideLinksIndicator();
    },

    onConnected: function(contact) {
      connect.getLog().info("ACSFIntegration:CallAttributesDisplay:onAccepted");
      showAttributesIndicator();
      showLinksIndicator();
    },

    onAgentRoutable: function() {
      connect.getLog().info("ACSFIntegration:CallAttributesDisplay:onEnded");
      hideAttributesPopover();
      hideLinksPopover();
      clearCallAttributes();
      hideLinksIndicator();
      hideAttributesIndicator();
    }
  };
})(this);
