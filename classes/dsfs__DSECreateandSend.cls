/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DSECreateandSend {
    global Boolean myAPEXTestSkipHTTPCallOut;
    global String SFServerURL {
        get;
        set;
    }
    global String SFSessionId {
        get;
        set;
    }
    global DSECreateandSend() {

    }
    global void AddDocument(String docId, String docType, String docName, Integer docOrder) {

    }
    global void AddSignerRecipient(String contactid, String leadid, String mapType) {

    }
    global dsfs__DocuSign_Envelope__c CreateEnvelopeObject(String sourceId) {
        return null;
    }
    @Deprecated
    global dsfs.DocuSignEnvelopeCreateRequest CreateEnvelopeRequest(dsfs__DocuSign_Envelope__c myEnvelope, Boolean send) {
        return null;
    }
    global System.HttpResponse DoCreateEnvelope(dsfs__DocuSign_Envelope__c myDSenvelope) {
        return null;
    }
    global System.HttpResponse DoCreateandSend(dsfs__DocuSign_Envelope__c myDSenvelope) {
        return null;
    }
    global String DocuSignSignUpUrl() {
        return null;
    }
    global Id GetAcctIDForContactID(String ContactID) {
        return null;
    }
    global Contact GetSignerContactbyContactID(String ContactId) {
        return null;
    }
    global Lead GetSignerContactbyLeadID(String LeadId) {
        return null;
    }
    global User GetSignerContactbyUserID(String UserId) {
        return null;
    }
    global System.HttpResponse GetTaggerURLforEnvGUID(String myDSEnvGUID, String myDSEnvID, String mySourceID) {
        return null;
    }
    global Boolean HasDocuSignAccount() {
        return null;
    }
    global String SendDocuSignRequest(String xml) {
        return null;
    }
    global System.HttpResponse SendDocuSignRequestReturnResponse(String xml) {
        return null;
    }
    global String SendPermission() {
        return null;
    }
    global String getFirstInitial(String myName) {
        return null;
    }
    global String getSignatureName(dsfs__DocuSign_Envelope_Recipient__c myRecip, String myName) {
        return null;
    }
    global Boolean getisContact() {
        return null;
    }
    global Boolean getisLead() {
        return null;
    }
    global Boolean getisUser() {
        return null;
    }
}
