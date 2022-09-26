/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ControllerForSitePayment {
    global Boolean ACH {
        get;
        set;
    }
    global Decimal amountToBeProcessed {
        get;
        set;
    }
    global String baseURL {
        get;
        set;
    }
    global String cardTypes {
        get;
        set;
    }
    global String countryAPIName {
        get;
        set;
    }
    global Boolean CreditCard {
        get;
        set;
    }
    global blng__Invoice__c invoice {
        get;
        set;
    }
    global Boolean isActive {
        get;
        set;
    }
    global Boolean isCountryPickListEnable {
        get;
        set;
    }
    global Boolean isLogoExist {
        get;
        set;
    }
    global Boolean isPayeezy {
        get;
        set;
    }
    global Boolean isPayeezyCheck {
        get;
        set;
    }
    global Boolean isSaveCardDetails {
        get;
        set;
    }
    global Boolean isValidGateWay {
        get;
        set;
    }
    global blng__PaymentMethod__c paymentMethod {
        get;
        set;
    }
    global String stateAPIName {
        get;
        set;
    }
    global ControllerForSitePayment() {

    }
    global System.PageReference attemptInvoiceLock() {
        return null;
    }
    global System.PageReference enableAutoPay() {
        return null;
    }
    global void previous() {

    }
    global void processACH() {

    }
    global void processCreditCard() {

    }
    global System.PageReference processPayment() {
        return null;
    }
}
