(function(ctx) {
    if (ctx.ACSFIntegration === undefined) {
        ctx.ACSFIntegration = {};
    }

    //initialize variables
    var _namespaceClassPrefix = "";
    var _namespaceObjectPrefix = "";

    ctx.ACSFIntegration.PhoneCall = {
        onAgentHandler : function(namespaceClassPrefix,namespacePagePrefix, ccSettings) {
            connect.getLog().info("ACSFIntegration:ContactChannel:onAgentHandler invoked");

            _namespaceClassPrefix = namespaceClassPrefix;
            _namespaceObjectPrefix = namespacePagePrefix;

            connect.getLog().info("ACSFIntegration:ContactChannel:_namespaceClassPrefix invoked %s", _namespaceClassPrefix);
            connect.getLog().info("ACSFIntegration:ContactChannel:_namespaceObjectPrefix invoked %s", _namespaceObjectPrefix);

            connect.contact(function (contact) {

                var conns = contact.getConnections();
                var custConn = conns.find(
                    c => c.getType() === connect.ConnectionType.INBOUND || c.getType() === connect.ConnectionType.OUTBOUND
            );

                if (!custConn)
                    return;

                saveInitialPhoneRecord(contact, custConn);

            });

            connect.agent(function (agent) {
                agent.onStateChange(function () {
                    connect.getLog().info("ACSFIntegration:ContactChannel:agent.onStateChange:ContactOnIncomingHandler invoked");
                    if (agent.getState().name === "MissedCallAgent") {
                        connect.getLog().info("ACSFIntegration:ContactChannel:agent.onStateChange:agent missed a call");
                        setCallContextProperty("isAgentMissedCall","true")
                    }
                    if (agent.getState().type === connect.AgentStateType.ROUTABLE) {
                        clearCallContext();
                    }

                });
            });
        },

        onIncoming : function(contact) {
            connect.getLog().info("ACSFIntegration:ContactChannel:onAgentHandler:ContactOnIncomingHandler invoked");

            //saveInitialPhoneRecord(contact, custConn);
        },

        onConnecting : function(contact) {
            connect.getLog().info("ACSFIntegration:ContactChannel:onAgentHandler:ContactOnConnectingHandler invoked");
        },

        onConnected : function(contact) {
            connect.getLog().info("ACSFIntegration:ContactChannel:onAgentHandler:ContactOnConnectedHandler invoked");
            //update PhoneCall record's field Call Status to in-Progress
            var now = new Date();
            setCallContextProperty('phoneCallStartDate', now);
            setCallContextProperty('phoneCallStartTime', now.getTime());
            setCallContextProperty('phoneCallStartDateTime', now.toISOString());
        },

        onEnded : function(contact) {
            connect.getLog().info("ACSFIntegration:ContactChannel:onAgentHandler:ContactOnEndedHandler invoked");

            //update PhoneCall record's field Call Status to completed or missed
            //update PhoneCall record's field CallEndTimeStamp
            //update PhoneCall record's field interaction duration
            var now = new Date();
            setCallContextProperty('phoneCallEndDate', now);
            setCallContextProperty('phoneCallEndTime', now.getTime());
            setCallContextProperty('phoneCallEndDateTime', now.toISOString());

            let context = getCurrentCallContext();
            if (context.phoneCallRecordId){
                updatePhoneCallRecord(contact, context);
            }
        }
    };

    /**
     * ***************************************************************************
     *  Helper functions
     * ***************************************************************************
     */
    function getCurrentCallContext() {
        var result = {
            callActive: sessionStorage.getItem("CCP-callActive"),
            phoneCallStartDate: sessionStorage.getItem("CCP-phoneCallStartDate"),
            phoneCallStartTime: sessionStorage.getItem("CCP-phoneCallStartTime"),
            phoneCallStartDateTime: sessionStorage.getItem("CCP-phoneCallStartDateTime"),
            phoneCallEndDate: sessionStorage.getItem("CCP_phoneCallEndDate"),
            phoneCallEndTime: sessionStorage.getItem("CCP-phoneCallEndTime"),
            phoneCallEndDateTime: sessionStorage.getItem("CCP-phoneCallEndDateTime"),
            phoneCallRecordId: sessionStorage.getItem("CCP-phoneCallRecordId"),
            isExactMatch: sessionStorage.getItem("CCP-callExactMatch"),
            whoId: sessionStorage.getItem("CCP-whoId"),
            whatId: sessionStorage.getItem("CCP-whatId"),
            isAgentMissedCall :sessionStorage.getItem("CCP-isAgentMissedCall"),
            callbackInProgress: sessionStorage.getItem("CCP-callbackInProgress")
        };

        connect.getLog().info("ACSFIntegration:ContactChannel:getCurrentCallContext Current call context: ").withObject(result);
        return result;
    }

    function clearCallContext() {
        connect.getLog("########## Clearing phone call context!!!");
        sessionStorage.removeItem("CCP-phoneCallStartDate");
        sessionStorage.removeItem("CCP-phoneCallStartTime");
        sessionStorage.removeItem("CCP-phoneCallStartDateTime");
        sessionStorage.removeItem("CCP-CCP_phoneCallEndDate");
        sessionStorage.removeItem("CCP-phoneCallEndTime");
        sessionStorage.removeItem("CCP-phoneCallEndDateTime");
        sessionStorage.removeItem("CCP-phoneCallRecordId");
        sessionStorage.removeItem("CCP-isAgentMissedCall");
        sessionStorage.removeItem("CCP-contactId");
        sessionStorage.removeItem("CCP-phoneCallRecordId");
    }

    function getUpdatePhoneCallRecord(callContact, callContext) {

        var phoneCallRecord = {
            Id: callContext.phoneCallRecordId,
            CallStartTimestamp__c : callContext.phoneCallStartDateTime
        };

        if (callContext.isAgentMissedCall === "true")
            phoneCallRecord.CallStatus__c = 'Missed';
        else{
            phoneCallRecord.CallStatus__c = 'Completed';
            phoneCallRecord.CallEndTimestamp__c = callContext.phoneCallEndDateTime;
            phoneCallRecord.InteractionDuration__c = getInteractionDuration(callContact, callContext);
        }

        if (sessionStorage.getItem("CCP-callExactMatch") === 'true' && sessionStorage.getItem("CCP-whoId")) {
            phoneCallRecord.RelatedToWhoId__c = callContext.whoId;
        }

        if (sessionStorage.getItem("CCP-callExactMatch") === 'true' && callContext.whatId) {
            phoneCallRecord.RelatedToWhatId__c = callContext.whatId;
        }
        return phoneCallRecord;
    }




    function getInteractionDuration(callContact, callContext) {
        if (callContext.isAgentMissedCall === null && callContext.phoneCallStartTime && callContext.phoneCallEndTime) {
            return Math.floor((callContext.phoneCallEndTime - callContext.phoneCallStartTime) / 1000);
        }

        return 0;
    }

    function getContactData(contact, custConn, phoneCallRecordObject){
        connect.getLog().info("ACSFIntegration:ContactChannel:getContactData");

        let attributes = contact.getAttributes();
        var attributeData ='';

        //for time being store data as key/value pair
        for (var key in attributes) {
            var attributeRecord = attributes[key];
            if(attributeData ==='')
                attributeData +=  (attributeRecord.name === '' ? 'Missing Attribute Name' : attributeRecord.name)  + ' : ' + attributeRecord.value;
            else
                attributeData += ' ,   ' + (attributeRecord.name === '' ? 'Missing Attribute Name' : attributeRecord.name)  + ' : ' + attributeRecord.value;
        }

        //attributeData =JSON.stringify(attributeData);
        //let attributes = JSON.stringify(contact.getAttributes());

        let phoneNumber = custConn.getEndpoint().phoneNumber;
        let containsAtSymbol = phoneNumber.indexOf('@') > -1;
        let customerPhoneNumber= phoneNumber.substring(0, containsAtSymbol ? phoneNumber.indexOf('@') : phoneNumber.length).replace('sip:', '');

        setCallContextProperty('callPhoneNumber', phoneNumber.substring(0, containsAtSymbol ? phoneNumber.indexOf('@') : phoneNumber.length).replace('sip:', ''));

        phoneCallRecordObject.CustomerNumber__c = customerPhoneNumber;
        phoneCallRecordObject.ContactId__c = contact.contactId;
        phoneCallRecordObject.QueueName__c = contact.getQueue().name || ''
        //phoneCallRecordObject.CallStatus__c = 'Incoming';
        var callType = getCallType(contact);
        phoneCallRecordObject.InitiationMethod__c = callType;

        if(callType.toLowerCase() === 'inbound')
            phoneCallRecordObject.CallStatus__c = 'Incoming';
        else
            phoneCallRecordObject.CallStatus__c = 'In-Progress';

        if(attributes !== '{}')
            phoneCallRecordObject.Attributes__c = attributeData;

        phoneCallRecordObject.InitiationMethod__c = getCallType(contact);


        connect.getLog().info("ACSFIntegration:ContactChannel:getContacttData dump object: %s", JSON.stringify(phoneCallRecordObject));
    }

    function getAgentData(phoneCallRecordObject){
        connect.getLog().info("ACSFIntegration:ContactChannel:getAgentData");

        let agent = window.ccp.agent;
        phoneCallRecordObject.AgentName__c = agent.getName();
        phoneCallRecordObject.AgentLoginUsername__c = agent.getConfiguration().username;

        connect.getLog().info("ACSFIntegration:ContactChannel:getAgentData dump object: %s", JSON.stringify(phoneCallRecordObject));
    }

    function getCallType(contact){
        //Need to add condition to check if a call is a transfer call ?????
        let callType ='';
        if (contact.getType() === connect.ContactType.QUEUE_CALLBACK)
            callType ='Callback';
        else
            callType = contact.isInbound() ? 'Inbound' : 'Outbound';

        return callType;
    }

    function addNamespacePrefix(obj){

        if(_namespaceObjectPrefix === "")
            return obj;

        if(typeof obj !== 'object' || !obj){
            return false;
        }

        var keys = Object.keys(obj),
            keysLen = keys.length,
            prefix = _namespaceObjectPrefix || '';
        console.log(keys);


        for(var i=0; i<keysLen ;i++){

            if(keys[i].toLowerCase().indexOf('__c') > 0){

                obj[_namespaceObjectPrefix+keys[i]] = obj[keys[i]];
                if(typeof obj[keys[i]]=== 'object'){
                    rename(obj[_namespaceObjectPrefix+keys[i]],_namespaceObjectPrefix);
                }
                delete obj[keys[i]];
            }
        }
        connect.getLog().info("ACSFIntegration:PhoneCall:addNamespacePrefix. Id=%s", JSON.stringify(obj));
        return obj;
    }

    function setCallContextProperty(name, value) {
        connect.getLog().info("ACSFIntegration:PhoneCall:setCallContextProperty setting call context property %s to %s ", name, value);
        sessionStorage.setItem("CCP-" + name, value);
    }


    /**
     * ***************************************************************************
     *  CRUD functions
     * ***************************************************************************
     */
    function saveInitialPhoneRecord(contact, custConn) {

        if (sessionStorage.getItem("CCP-phoneCallRecordId") === null || sessionStorage.getItem("CCP-phoneCallRecordId") === "")
        {
            setCallContextProperty("contactId",contact.contactId);
            let phoneCallRecord = {
                entityApiName : _namespaceObjectPrefix + 'AC_ContactChannels__c'
            };

            getAgentData(phoneCallRecord);
            getContactData(contact,custConn,phoneCallRecord);

            if (sforce.opencti) {
                connect.getLog().info("ACSFIntegration:ContactChannel:create a AC_ContactChannels__c record : %s", JSON.stringify(phoneCallRecord));

                sforce.opencti.saveLog({
                    value: addNamespacePrefix(phoneCallRecord),
                    callback: saveCallback
                });
            }
        }
    }

    function updatePhoneCallRecord(contact, context) {

        if (context.callActive) {
            if (sforce.opencti) {
                var phoneCallRecord = getUpdatePhoneCallRecord(contact, context);

                connect.getLog().info("ACSFIntegration:ContactChannel:updateContactChannelRecord updating phonecall with object: %s", JSON.stringify(phoneCallRecord));

                sforce.opencti && sforce.opencti.saveLog({
                    value: addNamespacePrefix(phoneCallRecord),
                    callback: saveCallback
                });
            }
        }
    }

    function findPhoneCallRecord(contactId){
        var param = {apexClass: _namespaceClassPrefix + 'AC_ContactChannelController', methodName: 'getContactChannelRecordByContactId', methodParams: 'ContactId=' + contactId };
        param.callback = retrievalCallback;
        connect.getLog().info("ACSFIntegration:ContactChannel:findContactChannelRecord.Id=%s", contact.contactId);
        //Invokes API method
        sforce.opencti.runApex(param);
    }

    /**
     * ***************************************************************************
     *  Callbacks functions
     * ***************************************************************************
     */

    function saveCallback(response) {

        try{
            if (response.success === false || response.result === null || response.returnValue === null){
                connect.getLog().info("ACSFIntegration:ContactChannel:saveCallback failed to save ContactChannel record.error message=%s", JSON.stringify(response.error));


                var contactId = sessionStorage.getItem("CCP-contactId");
                connect.getLog().info("ACSFIntegration:ContactChannel:saveCallback. Contact Id=%s", contactId);
                findPhoneCallRecord(contactId);
            }
            else{
                var phoneCallRecordId  = response.result || response.returnValue.recordId;
                setCallContextProperty("phoneCallRecordId",phoneCallRecordId);
                connect.getLog().info("ACSFIntegration:ContactChannel:saveCallback. Id=%s", phoneCallRecordId);
            }
        }
        catch(e){

        }

        return;
    }




    function retrievalCallback(response) {
        if (response.success === false || response.result === null || response.returnValue === null)
            connect.getLog().info("ACSFIntegration:ContactChannel:retrievalCallback.error message=%s", JSON.stringify(response));
        else {
            try{
                let phoneCall = response.returnValue.runApex;
                if(phoneCall != "undefined"){
                    setCallContextProperty("phoneCallRecordId",phoneCall.Id);
                    connect.getLog().info("ACSFIntegration:ContactChannel:retrievalCallback.Id=%s", phoneCall.Id);
                }

                //saveInitialPhoneRecord(contact, custConn);
            }
            catch(ex){
                connect.getLog().info("ACSFIntegration:ContactChannel:retrievalCallback.error message=%s", ex.message);
            }
        }
        return;
    }





})(this);