/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
@RestResource(urlMapping='/marketingActions')
global class MarketingActionsEndpoint {
    global MarketingActionsEndpoint() {

    }
    @HttpPost
    global static pi.MarketingActionsEndpoint.MarketingActionsResponse getMarketingActionsBody() {
        return null;
    }
global class MarketingActionsResponse {
    global String errorMessage;
    global Boolean hasError;
    global String mac;
    global String marketingActions;
    global MarketingActionsResponse(String actions, String mac) {

    }
    global void setError(String error) {

    }
}
}
