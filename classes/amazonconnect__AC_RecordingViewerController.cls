/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class AC_RecordingViewerController {
    global String contactId {
        get;
        set;
    }
    global Id recordId {
        get;
        set;
    }
    global AC_RecordingViewerController() {

    }
    global static amazonconnect.AC_Utils.RecordingAttachmentWrapper getAttachedCallRecording(Id recordId, String agentLabel, String agentColor, String customerLabel, String customerColor) {
        return null;
    }
    @AuraEnabled
    @RemoteAction
    global static amazonconnect.AC_Utils.RecordingWrapper getCallAudioRecording(String contactId, String agentLabel, String agentColor, String customerLabel, String customerColor) {
        return null;
    }
    global static String getS3Object(String key) {
        return null;
    }
}
