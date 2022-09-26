({
	CheckQuickCreateFavoritesRecExistOrNot : function(component, event, helper) {
		var action = component.get("c.setQuickCreateFavoritesId");
         var objPageReference = component.get("v.pageReference"); 
        if (!$A.util.isUndefinedOrNull(objPageReference) && !$A.util.isUndefinedOrNull(objPageReference.state) && objPageReference.state.c__id != 'undefined') {
        	component.set("v.recordId",objPageReference.state.c__id);
            component.set("v.userId",$A.get("$SObjectType.CurrentUser.Id"));
        }
        console.log('objPageReference..'+objPageReference);
        console.log('record id..'+component.get("v.recordId"));
         console.log('user id..'+component.get("v.userId"));
        action.setParams({"QuoteId" : component.get("v.recordId"),
                          "UserId" : component.get("v.userId") });
        action.setCallback(this,function(response){
            var state = response.getState();
            console.log('state...'+state);
            if(state == "SUCCESS"){
                if(response.getReturnValue() != null ){
                	component.set("v.QuickCreateFavoritesId",response.getReturnValue());
                }
            }
            else{ 
                console.log(state);
            }
        });
        $A.enqueueAction(action);
	},
    
	checkDuplicateName  : function(component, event, helper, Name, fields) {
		var action = component.get("c.checkDuplicateNameExist");
        action.setParams({"QCFName" : Name,
                          "QuoteId" : component.get("v.recordId")});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state == "SUCCESS"){
                if(response.getReturnValue() != null ){
                	component.set("v.QCFDuplicateNameId",response.getReturnValue());
                 		alert("Favorite Name already exist.Please try with some other Name.");
                }else{
                    
             		if(component.get("v.QuickCreateFavoritesId")){
             			component.find('QuickCreateFavoritesFormUpdate').submit(fields);
             		}
             		else{
             			component.find('QuickCreateFavoritesFormInsert').submit(fields);   
             		}
                }
            }
            else{
                alert("Something is wrong.Contact your Admin.");
                console.log(state);
            }
        });
        $A.enqueueAction(action);
	},
    
    redirectToQLE : function(component, event, helper){
        var recId = component.get("v.recordId");
        var link = '/apex/sbqq__sb?id=' + recId;   
        var urlEvent = $A.get("e.force:navigateToURL");
        urlEvent.setParams({
            "url":link
        });
        urlEvent.fire();
    },
       setGlobalFavoritePermission  : function(component, event, helper) {
		var action = component.get("c.setGlobalFavorite");
        action.setParams({"UserId" : component.get("v.userId")});
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state == "SUCCESS"){
                if(response.getReturnValue() != null ){
                	component.set("v.GlobalFavOrNot",response.getReturnValue());
                }
            }
            else{ 
                console.log(state);
            }
        });
        $A.enqueueAction(action);
	},
    
    
})