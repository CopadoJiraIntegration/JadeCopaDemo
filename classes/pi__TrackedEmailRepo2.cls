/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
@RestResource(urlMapping='/trackedEmailv2')
global class TrackedEmailRepo2 {
    global TrackedEmailRepo2() {

    }
    @HttpPost
    global static pi.TrackedEmailRepo2.OneToOneEmail2 getTrackedEmailBody(String json, String mac, String md5) {
        return null;
    }
global class OneToOneEmail2 {
    global String emailBody;
    global String errorCode;
    global String errorMessage;
    global Boolean hasError;
    global String mac;
    global Long timeStamp;
    global OneToOneEmail2(String emailBody, String mac) {

    }
    global void setError(String errorMessage, String errorCode) {

    }
}
}
