trigger CreateEntitlementFromSubscription on SBQQ__Subscription__c (after insert) {
    set<Id> subscriptionIds = new set<Id>();
    set<Id> productIds = new set<Id>();
    set<Id> contractIds = new set<ID>();
    
    for(SBQQ__Subscription__c subscription : trigger.new){
        subscriptionIds.add(subscription.id);
        productIds.add(subscription.SBQQ__Product__c);
        contractIds.add(subscription.SBQQ__Contract__c);
    }
    
    if(subscriptionIds !=null && contractIds != null){
        CreateEntitlementHelper.createEntitlements(subscriptionIds,contractIds,productIds);
    }
}