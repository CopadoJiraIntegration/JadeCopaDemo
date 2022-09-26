public class CreateEntitlementHelper {
    
    /*@future
    public static void createEntitlements(Set<Id> subscriptionIds,Set<Id> contractIds,Set<Id> productIds){
        
        set<Id> orderIds = new set<ID>();
        list<SBQQ__Subscription__c> subscriptionList = new list<SBQQ__Subscription__c>();
        list<Contract> listofContract = new list<Contract>();
        list<Asset> listofAsset = new list<Asset>();
        
        //SOQL on Subscription to get all new Subscriptoins
        subscriptionList = [select id,SBQQ__Product__c,SBQQ__Account__c,SBQQ__StartDate__c,SBQQ__EndDate__c from SBQQ__Subscription__c where id in: subscriptionIds];
        
        //SOQL on Contract to get Order Ids
         listofContract = [SELECT Id,SBQQ__Order__c FROM Contract WHERE Id =: contractIds];
         system.debug('listofContract****'+listofContract);
        //Create set of Order Ids
        for(Contract con:listofContract){
            
           orderIds.add(con.SBQQ__Order__c);
        }
         system.debug('orderIds****'+orderIds);
        //SOQL on Asset to get all Assets for Order Ids in previous step
        listofAsset = [Select id,Order__c from Asset  where Order__c =: orderIds];
        system.debug('listofAsset****'+listofAsset);
        
        list<Product2> listOfProduct = [SELECT Id, Name,Family FROM Product2 WHERE Id =: productIds ];
        Id entitlementProcessId      = [SELECT Id FROM SlaProcess WHERE SObjectType = 'Case'].Id;
        System.debug('entitlementProcessId= ' + entitlementProcessId);
        
        list<Entitlement> entList = new list<Entitlement>();
        //Iterate over Asset List
        for(Asset ass: listofAsset){
            for(SBQQ__Subscription__c  subcrp : subscriptionList){
                for(product2 pro :listOfProduct){
                    if(pro.Id == subcrp.SBQQ__Product__c  && pro.Family =='Support'){
                        Entitlement entl = new Entitlement();
                        entl.Name        = 'Entitlement for Product: '+ pro.Name;
                        entl.AccountId   = subcrp.SBQQ__Account__c;
                        entl.Startdate   = subcrp.SBQQ__StartDate__c;
                        entl.Enddate     = subcrp.SBQQ__EndDate__c;
                        entl.SlaProcessId= entitlementProcessId;
                        entl.AssetId =  ass.Id;
                        entList.add(entl);
                    }
                }
            }
        }
        
        if(entList.size()>0){
            system.debug('entList****'+entList);
            insert entList;
        }
        System.debug(entList);
    }*/
    
}