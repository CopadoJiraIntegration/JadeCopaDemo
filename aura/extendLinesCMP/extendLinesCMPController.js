({
    doInit : function(component, event, helper) {
        //alert('in doinit');
        var pageReference = component.get("v.pageReference");
        if(pageReference.state.c__refresh =='true'){
            window.location.assign('/lightning/cmp/c__extendLinesCMP?c__id=' + pageReference.state.c__id +'&c__refresh=false');
        }else{
            component.set("v.quoteId", pageReference.state.c__id);
            component.set("v.boolean", "true");
        }
    }
})