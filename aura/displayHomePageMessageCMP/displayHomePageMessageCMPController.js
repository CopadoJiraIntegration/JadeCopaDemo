({
	doInit : function(component, event, helper) {
        
        var action = component.get("c.fetchQuoteRecord");

        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
               // alert("From server: " + response.getReturnValue());
                if(response.getReturnValue() == 'Arrear'){
                    component.set("v.showMessage",true);
                    component.set("v.isArrear",true);
                }else if(response.getReturnValue() == 'Advancement'){
                    component.set("v.showMessage",true);
                    component.set("v.isAdvancement",true);
                }else{
                    component.set("v.showMessage",false);
                }
                 
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });

        $A.enqueueAction(action);
		
	}
    
})