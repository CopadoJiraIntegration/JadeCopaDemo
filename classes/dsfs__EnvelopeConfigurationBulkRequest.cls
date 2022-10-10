/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class EnvelopeConfigurationBulkRequest {
    global EnvelopeConfigurationBulkRequest() {

    }
    @InvocableMethod(label='Send With DocuSign' description='Auto-Send DocuSign Envelopes')
    global static void sendWithDocuSign(List<dsfs.EnvelopeConfigurationBulkRequest.InvocableActionRequest> request) {

    }
global class InvocableActionRequest {
    @InvocableVariable(label='Envelope Configuration' required=true)
    global Id EnvelopeConfigurationId;
    @InvocableVariable(label='Source Id' required=true)
    global Id sourceId;
    global InvocableActionRequest() {

    }
}
}
