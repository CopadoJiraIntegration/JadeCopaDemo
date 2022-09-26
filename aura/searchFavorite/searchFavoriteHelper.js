({
    doInitHelper : function(component, event, helper) {
        component.set("v.callLWCFav",false);
        var objPageReference = component.get("v.pageReference"); 
        console.log('objPageReference '+objPageReference);
        if (!$A.util.isUndefinedOrNull(objPageReference) && !$A.util.isUndefinedOrNull(objPageReference.state)) {
        	if(objPageReference.state.c__id == 'undefined'){
                var toastEvent = $A.get("e.force:showToast");
                    toastEvent.setParams({
                        "title": "Warning!",
                        duration: 6000,
                        "message": 'Please make sure to use the Quick Save button to save the Quote before trying to add Products to a newly created Group. NOTE:If the Quick Save button is not clicked the newly created Groups data and Products within it(if any) will be lost.',
                        "type": "warning"
                    });
                    toastEvent.fire();
                    window.setTimeout( $A.getCallback(function() 
                    { 
                        window.history.back();
                    }), 6000 );        
            }
            else{
                var action = component.get("c.getQuoteDetails");
                console.log('objPageReference.state.c__id...'+objPageReference.state.c__id);
                action.setParams({quoteId : objPageReference.state.c__id});
                action.setCallback(this, function(response) {
                    var state = response.getState();
                    console.log('state..'+state);
                    if (state === "SUCCESS") {
                        var result = response.getReturnValue();
                        console.log('result...'+result);
                        document.title = "Search Favorite";
                        component.set("v.quoteId",objPageReference.state.c__id);            
                    //    component.set("v.quoteId",'a0z5w00000BH7Fd'); 
                        component.set("v.userId",result.userId);
                        component.set("v.callLWCFav",true);
                    }
                    
                });
                $A.enqueueAction(action);
            }
        }
    }
})