trigger CaseTrigger on Case (before insert,before update) {/*
        set<Id> AssetIds = new set<Id>();
        list<Entitlement> listofEntitlement = new list<Entitlement>();
        Entitlement EntObj = new Entitlement();
        list<Asset> listofAsset = new list<Asset>();
        
        for(Case caseObj : trigger.new){
            if(caseObj.AssetId!= null){
                AssetIds.add(caseObj.AssetId);
            }
        }
    system.debug('AssetIds****'+AssetIds);
    if(AssetIds!= null){
            listofEntitlement = [Select id,AssetId,AccountId  from  Entitlement Where AssetId =: AssetIds];
        if(listofEntitlement.size()>0){
            EntObj = listofEntitlement[0];
             system.debug('EntObj****'+EntObj);
        }
    }
    system.debug('listofEntitlement****'+listofEntitlement);
        
        for(Case caseObj : trigger.new){
           // if(EntObj.Id != '' && EntObj.Id != null){
                caseObj.EntitlementId = EntObj.Id;
           // }
            system.debug('caseObj.EntitlementId****'+caseObj.EntitlementId);
            }   */
}