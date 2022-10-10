/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class TransactionResult {
    @AuraEnabled
    @WebService
    webService String entityName;
    @AuraEnabled
    @WebService
    webService Boolean isSuccess;
    global Map<String,String> mapOfResponseValueByKey;
    @AuraEnabled
    @WebService
    webService String message;
    global TransactionResult() {

    }
    global String getCardCodeResponse() {
        return null;
    }
    global String getCustomerProfileToken() {
        return null;
    }
    global String getEntity() {
        return null;
    }
    global List<String> getErrors() {
        return null;
    }
    global String getGatewayId() {
        return null;
    }
    global blng.TransactionResult.GatewayStatusType getGatewayStatus() {
        return null;
    }
    global String getId() {
        return null;
    }
    global Boolean getIsSuccess() {
        return null;
    }
    global String getMessage() {
        return null;
    }
    global String getPaymentToken() {
        return null;
    }
    global String getRequestTransactionType() {
        return null;
    }
    global String getRequestTypeOfPayment() {
        return null;
    }
    global String getResponseCode() {
        return null;
    }
    global String getResponseCodeMessage() {
        return null;
    }
    global String getResponseMessage() {
        return null;
    }
    global String getResponseStatus() {
        return null;
    }
    global String getResponseToValidate() {
        return null;
    }
    global Map<String,String> getResponseValueByKey() {
        return null;
    }
    global String getType() {
        return null;
    }
    global void setCardCodeResponse(String cardCodeResponse) {

    }
    global void setCustomerProfileToken(String customerProfileToken) {

    }
    global void setEntity(String entity) {

    }
    global void setError(String error) {

    }
    global void setGatewayId(String gatewayId) {

    }
    global void setGatewayRequest(String gatewayRequest) {

    }
    global void setGatewayResponse(String gatewayResponse) {

    }
    global void setGatewayStatus(blng.TransactionResult.GatewayStatusType gatewayStatus) {

    }
    global void setId(String Id) {

    }
    global void setIsSuccess(Boolean isSuccess) {

    }
    global void setMessage(String message) {

    }
    global void setPaymentToken(String paymentToken) {

    }
    global void setRequestTransactionType(String requestTransactionType) {

    }
    global void setRequestTypeOfPayment(String requestTypeOfPayment) {

    }
    global void setResponseCode(String responseCode) {

    }
    global void setResponseCodeMessage(String responseCodeMessage) {

    }
    global void setResponseMessage(String responseMessage) {

    }
    global void setResponseStatus(String responseStatus) {

    }
    global void setResponseToValidate(String responseToValidate) {

    }
    global void setResponseValueByKey(Map<String,String> getResponseValueByKey) {

    }
    global void setType(String type) {

    }
global enum GatewayStatusType {Decline, Indeterminate, PermanentFail, RequiresReview, Success, SystemError, ValidationError}
}
