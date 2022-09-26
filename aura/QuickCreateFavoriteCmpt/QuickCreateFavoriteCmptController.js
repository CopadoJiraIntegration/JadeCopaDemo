({
    doInit :  function(component, event, helper) {
        helper.CheckQuickCreateFavoritesRecExistOrNot(component, event, helper);
        helper.setGlobalFavoritePermission(component, event, helper);
	},
    
    onSubmitForm :  function(component, event, helper) {
         event.preventDefault();       // stop the form from submitting
         var fields = event.getParam('fields');
         var Name = fields.Name;
         if(Name){
             helper.checkDuplicateName(component, event, helper,Name ,fields);
         }
         else{
         	alert("Name is required!");
         }
    	 
	},
    
	onRecordSave : function(component, event, helper) {
        helper.redirectToQLE(component, event, helper);
        // document.getElementById("wrapper").style.display = "none";
        // document.getElementById("hiddendiv").style.display = "block";
        // $A.get("e.force:closeQuickAction").fire();
	}

})