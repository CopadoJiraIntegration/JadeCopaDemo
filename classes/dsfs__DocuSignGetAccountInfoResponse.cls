/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DocuSignGetAccountInfoResponse {
    global String AccountName {
        get;
        set;
    }
    global String AccountSuspensionDate {
        get;
        set;
    }
    global String AccountSuspensionStatus {
        get;
        set;
    }
    global dsfs.DocuSignGetAccountInfoResponse.ConnectPermissions ConnectPermission {
        get;
        set;
    }
    global String CurrentBillingPeriodEndDate {
        get;
        set;
    }
    global String CurrentBillingPeriodEnvelopesAllowed {
        get;
        set;
    }
    global String CurrentBillingPeriodEnvelopesSent {
        get;
        set;
    }
    global String CurrentBillingPeriodStartDate {
        get;
        set;
    }
    global String CurrentPlanEndDate {
        get;
        set;
    }
    global String CurrentPlanId {
        get;
        set;
    }
    global String CurrentPlanName {
        get;
        set;
    }
    global String CurrentPlanStartDate {
        get;
        set;
    }
    global String DocuSignLandingUrl {
        get;
        set;
    }
    global String ErrorMessage {
        get;
        set;
    }
    global Boolean isError {
        get;
    }
    global DocuSignGetAccountInfoResponse() {

    }
    global Boolean parseResponse(String responseXml) {
        return null;
    }
global enum ConnectPermissions {Full, None, SendOnly}
}
