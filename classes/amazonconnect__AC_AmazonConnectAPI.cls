/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class AC_AmazonConnectAPI {
    global AC_AmazonConnectAPI() {

    }
    @RemoteAction
    global static String getInstanceId(String instanceAlias) {
        return null;
    }
    @RemoteAction
    global static amazonconnect.AC_AmazonConnectAPI.Response resumeContactRecording(String contactId, String initialContactId, String instanceAlias) {
        return null;
    }
    @RemoteAction
    global static amazonconnect.AC_AmazonConnectAPI.Response startContactRecording(String contactId, String initialContactId, String voiceRecordingTrack, String instanceAlias) {
        return null;
    }
    @RemoteAction
    global static amazonconnect.AC_AmazonConnectAPI.Response stopContactRecording(String contactId, String initialContactId, String instanceAlias) {
        return null;
    }
    @RemoteAction
    global static amazonconnect.AC_AmazonConnectAPI.Response suspendContactRecording(String contactId, String initialContactId, String instanceAlias) {
        return null;
    }
    @RemoteAction
    global static amazonconnect.AC_AmazonConnectAPI.Response updateContactAttributes(String attributes, String initialContactId, String instanceAlias) {
        return null;
    }
global class APIException extends Exception {
    @AuraEnabled
    global String Message;
    @AuraEnabled
    global String Status;
}
global class FailedResponse extends amazonconnect.AC_AmazonConnectAPI.Response {
}
global class OkResponse extends amazonconnect.AC_AmazonConnectAPI.Response {
}
global abstract class Response {
    @AuraEnabled
    global String Message;
    @AuraEnabled
    global String Status;
    global Response() {

    }
}
}
