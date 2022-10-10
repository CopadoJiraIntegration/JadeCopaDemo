({
    
    doInit : function(component, event, helper) {
        var transactionParams = {};
        transactionParams.accountId = component.get("v.accountId");
        transactionParams.gatewayId = component.get("v.gatewayId");
        transactionParams.amount = component.get("v.amount");
        
        component.set("v.transactionParams", transactionParams);
    },

	handleTransactionResponse : function(cmp, event, helper) {
        var response = event.getParam("response");
        if(response.isSuccess) {
            alert("isSuccess : " + response.isSuccess);
        }
    }
})