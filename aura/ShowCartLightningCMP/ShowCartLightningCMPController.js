({
	doInit : function(component, event, helper) {
        var quoteId = component.get("v.recordId");
        
        window.open("/apex/ShowCartDetails?id="+quoteId,"_blank","width=1000,height=600,scrollbars=yes");
        
        // Close the action panel
        var dismissActionPanel = $A.get("e.force:closeQuickAction");
        dismissActionPanel.fire();
	}
})