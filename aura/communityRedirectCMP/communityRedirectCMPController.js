({
    redirectPage: function(component, event, helper) {
    	var urlEvent = $A.get("e.force:navigateToURL");        
    	var action = component.get("c.redirectToCommunityPage");

        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                if(response.getReturnValue() == 'Arrear'){
                    urlEvent.setParams({
                    	"url": "/Payment-Method-page"
                	});
                	urlEvent.fire();
                }else if(response.getReturnValue() == 'Advancement'){
                   urlEvent.setParams({
            			"url": "/paynow-page"
        			});
        		   urlEvent.fire();
                }     
            }
        });
        
        $A.enqueueAction(action);	
	}
    
})