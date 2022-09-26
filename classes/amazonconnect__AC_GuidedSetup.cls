/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class AC_GuidedSetup {
    global AC_GuidedSetup() {

    }
    @AuraEnabled
    @RemoteAction
    global static List<amazonconnect.AC_GuidedSetup.PrerequisiteValidation> validatePrerequisites(List<String> fields) {
        return null;
    }
global class GuidedSetupResponse {
}
global class PrerequisiteValidation {
}
global class SetupAudioRecordingValues {
    @AuraEnabled
    global String cloudfrontPublicKey;
    global SetupAudioRecordingValues() {

    }
}
global class SetupInstanceValues {
    @AuraEnabled
    global String connectInstanceAlias;
    @AuraEnabled
    global String connectInstanceId;
    @AuraEnabled
    global String kinesisStreamName;
    @AuraEnabled
    global String kinesisStreamShardCount;
    @AuraEnabled
    global String s3BucketName;
    @AuraEnabled
    global String s3KMSKeyARN;
    global SetupInstanceValues() {

    }
}
global class SetupIntegrationValues {
    @AuraEnabled
    global String connectInstanceAlias;
    @AuraEnabled
    global String connectInstanceUrl;
    @AuraEnabled
    global String enableContactLensImport;
    @AuraEnabled
    global String enableHistoricalReportingImport;
    @AuraEnabled
    global String enablePostcallCTRImport;
    @AuraEnabled
    global String enablePostcallRecordingImport;
    @AuraEnabled
    global String enableRealtimeReportingImport;
    @AuraEnabled
    global String enableRealtimeTranscriptionImport;
    @AuraEnabled
    global String lambdaLoggingLevel;
    @AuraEnabled
    global String salesforceEdition;
    @AuraEnabled
    global String secretsManagerSecretArn;
    @AuraEnabled
    global String secretsManagerSecretKMSKeyARN;
    @AuraEnabled
    global String visualforcePageUrl;
    global SetupIntegrationValues() {

    }
}
}
