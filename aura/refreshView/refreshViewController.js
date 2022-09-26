({
	/*doInit : function(component, event, helper) {
		$A.get('e.force:refreshView').fire();
	},*/
    invoke : function(component, event, helper) {
        //$A.get('e.force:refreshView').fire();
        var navEvt = $A.get("e.force:navigateToSObject");
            navEvt.setParams({
              "recordId": component.get("v.recordId")
              //"slideDevName": "related"
            });
            navEvt.fire();
            }
})