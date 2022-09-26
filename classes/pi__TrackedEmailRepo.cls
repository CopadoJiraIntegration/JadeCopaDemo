/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
@RestResource(urlMapping='/trackedEmail')
global class TrackedEmailRepo {
    global TrackedEmailRepo() {

    }
    @HttpPost
    global static pi.TrackedEmailRepo.OneToOneEmail getTrackedEmailBody(String json, String hash) {
        return null;
    }
global class OneToOneEmail {
    global String emailBody;
    global String errorCode;
    global String errorMessage;
    global Boolean hasError;
    global OneToOneEmail(String emailBody) {

    }
    global void setError(String errorMessage, String errorCode) {

    }
}
}
