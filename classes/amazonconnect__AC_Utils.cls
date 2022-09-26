/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class AC_Utils {
    global AC_Utils() {

    }
    @AuraEnabled
    @RemoteAction
    global static String findObjectNameFromRecordIdPrefix(String recordIdOrPrefix) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static String findPrefixFromObjectName(String objectName) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect__AC_CtiAdapter__c> getAllCtiAdapters() {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static amazonconnect.AC_Utils.RecordingAttachmentWrapper getAttachedCallRecording(Id recordId, String agentLabel, String agentColor, String customerLabel, String customerColor) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect.AC_Utils.TranscriptItem> getAttachedTranscript(Id recordId, String name, String speaker, String color) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect.AC_Utils.TranscriptItem> getAttachedVoiceTranscript(Id recordId, String agentLabel, String agentColor, String customerLabel, String customerColor) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static amazonconnect.AC_Utils.RecordingWrapper getCallAudioRecording(String contactId, String agentLabel, String agentColor, String customerLabel, String customerColor) {
        return null;
    }
    global static String getCharAtIndex(String str, Integer index) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static amazonconnect.AC_Utils.AttachmentWrapper getContactChannelAnalyticsAttachment(Id recordId, String name) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static String getContactChannelAnalyticsAudioRecordingURL(Id recordId) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static Id getContactChannelAnalyticsRecordByContactId(String contactId) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static String getContactIdFromRecordId(Id recordId) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static amazonconnect__AC_CtiAdapter__c getCtiAdapter(String callCenterName) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect__AC_CtiAttribute__c> getCtiAttributes(String ctiAdapterId) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static amazonconnect__AC_CtiScript__c getCtiFlowById(String id) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static String getCtiScript(String ctiAdapterId, String source, String event) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect__AC_Feature__c> getFeaturesCtiActionsSortOrder(String ctiAdapterId) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect__AC_Feature__c> getFeaturesMedialess(String ctiAdapterId) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect__AC_Feature__c> getFeaturesRecordingPanel(String ctiAdapterId) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect__AC_Feature__c> getFeaturesSessionEnd(String ctiAdapterId) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect__AC_Feature__c> getFeatures(String ctiAdapterId) {
        return null;
    }
    @AuraEnabled
    global static String getNamespace() {
        return null;
    }
    @AuraEnabled
    global static String getNamespaceClassPrefix() {
        return null;
    }
    @AuraEnabled
    global static String getNamespacePagePrefix() {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static amazonconnect__AC_PresenceSyncRule__c getPresencSyncRuleRecordById(Id recordId) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect__AC_PresenceSyncRule__c> getPresenceSyncRules(String ctiAdapterId) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static Id getRecordTypeByName(String objectType, String typeName) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static String getS3Object(String namedCredential, String key, Integer timeout) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect.AC_Utils.ServiceChannelHolder> getServiceChannels() {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect.AC_Utils.ServicePresenceStatusWrapper> getServicePresenceStatuses() {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static Id getUserId() {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static String getUserLanguage() {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect__AC_VoicemailDrop__c> getVoicemailDrops() {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static amazonconnect.AC_Utils.WorkHolder getWorkHolder(Id workId) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static Boolean isDoNotCall(Id recordId) {
        return null;
    }
    global static String makeNamedCredentialCallout(System.HttpRequest req) {
        return null;
    }
    @RemoteAction
    global static String newGuid() {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static Boolean ping() {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static void setVoicemailDrop(String contactId, String voicemailDropId) {

    }
global virtual class AttachmentWrapper {
    @AuraEnabled
    global String content;
    @AuraEnabled
    global String contentType;
    @AuraEnabled
    global Boolean encoded;
    @AuraEnabled
    global String id;
    @AuraEnabled
    global String name;
    @AuraEnabled
    global String parentId;
    global AttachmentWrapper() {

    }
    global AttachmentWrapper(String id, String name, String parentId, String contentType, String content, Boolean encoded) {

    }
}
global class RecordingAttachmentWrapper {
    @AuraEnabled
    global amazonconnect.AC_Utils.AttachmentWrapper recording;
    @AuraEnabled
    global List<amazonconnect.AC_Utils.TranscriptItem> transcript;
    global RecordingAttachmentWrapper(amazonconnect.AC_Utils.AttachmentWrapper recording, List<amazonconnect.AC_Utils.TranscriptItem> transcript) {

    }
}
global class RecordingWrapper {
    @AuraEnabled
    global String audioRecordingURL;
    @AuraEnabled
    global amazonconnect.AC_Utils.AttachmentWrapper recordingAttachment;
    @AuraEnabled
    global List<amazonconnect.AC_Utils.TranscriptItem> transcript;
    global RecordingWrapper(String audioRecordingURL, amazonconnect.AC_Utils.AttachmentWrapper recordingAttachment, List<amazonconnect.AC_Utils.TranscriptItem> transcript) {

    }
}
global class ServiceChannelHolder {
    @AuraEnabled
    global String developerName;
    @AuraEnabled
    global String id;
    @AuraEnabled
    global String masterLabel;
    @AuraEnabled
    global String relatedEntity;
    global ServiceChannelHolder(String id, String masterLabel, String developerName, String relatedEntity) {

    }
}
global class ServicePresenceStatusWrapper {
    @AuraEnabled
    global String developerName;
    @AuraEnabled
    global String id;
    @AuraEnabled
    global String masterLabel;
    global ServicePresenceStatusWrapper() {

    }
    global ServicePresenceStatusWrapper(String id, String developerName, String masterLabel) {

    }
}
global class TranscriptItem {
    @AuraEnabled
    global String color;
    @AuraEnabled
    global String content;
    @AuraEnabled
    global Double end_time;
    @AuraEnabled
    global String speaker;
    @AuraEnabled
    global Double start_time;
    global TranscriptItem() {

    }
    global TranscriptItem(Double start_time, Double end_time, String content, String speaker, String color) {

    }
    global Integer compareTo(Object compareTo) {
        return null;
    }
}
global class WorkHolder {
    @AuraEnabled
    global Double capacityPercentage;
    @AuraEnabled
    global Double capacityWeight;
    @AuraEnabled
    global String id;
    @AuraEnabled
    global String name;
    @AuraEnabled
    global String serviceChannel;
    global WorkHolder() {

    }
    global WorkHolder(String id, String name, Double capacityPercentage, Double capacityWeight, String serviceChannel) {

    }
}
}
