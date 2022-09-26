/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class AC_CCAContactLens {
    global AC_CCAContactLens() {

    }
    @AuraEnabled
    global static List<String> getAgentInterruptions(Id recordId) {
        return null;
    }
    @AuraEnabled
    global static Decimal getAgentSentiment(Id recordId) {
        return null;
    }
    @AuraEnabled
    global static Integer getAgentTalkTime(Id recordId) {
        return null;
    }
    @AuraEnabled
    global static List<String> getCustomerInterruptions(Id recordId) {
        return null;
    }
    @AuraEnabled
    global static Decimal getCustomerSentiment(Id recordId) {
        return null;
    }
    @AuraEnabled
    global static Integer getCustomerTalkTime(Id recordId) {
        return null;
    }
    @AuraEnabled
    global static List<String> getMatchedCategories(Id recordId) {
        return null;
    }
    @AuraEnabled
    global static String getMatchedDetails(Id recordId) {
        return null;
    }
    @AuraEnabled
    global static List<amazonconnect.AC_CCAContactLens.TranscriptItem> getTranscripts(Id recordId) {
        return null;
    }
global class CharOffsets {
    @AuraEnabled
    global Integer BeginOffsetChar;
    @AuraEnabled
    global Integer EndOffsetChar;
    global CharOffsets() {

    }
}
global class DetectedIssue {
    @AuraEnabled
    global amazonconnect.AC_CCAContactLens.CharOffsets CharacterOffsets;
    @AuraEnabled
    global String Text;
    global DetectedIssue() {

    }
}
global class Interruption {
    @AuraEnabled
    global Integer BeginOffsetMillis;
    @AuraEnabled
    global Integer EndOffsetMillis;
    global Interruption() {

    }
}
global class Timestamp {
    @AuraEnabled
    global Integer BeginOffsetMillis;
    @AuraEnabled
    global Integer EndOffsetMillis;
    global Timestamp() {

    }
}
global virtual class TranscriptItem {
    @AuraEnabled
    global Integer beginOffsetMillis;
    @AuraEnabled
    global String content;
    @AuraEnabled
    global Integer endOffsetMillis;
    @AuraEnabled
    global String id;
    @AuraEnabled
    global List<amazonconnect.AC_CCAContactLens.DetectedIssue> issues_detected;
    @AuraEnabled
    global List<Decimal> loudness_score;
    @AuraEnabled
    global String participantRole;
    @AuraEnabled
    global List<amazonconnect.AC_CCAContactLens.DetectedIssue> redactions;
    @AuraEnabled
    global String sentiment;
    global TranscriptItem() {

    }
}
}
