trigger AccountTrigger on Account (before update) {

    map<id,boolean> accountidcreateBillingadddress = new map<id,boolean>();
    map<id,boolean> accountidcreateShippingadddress = new map<id,boolean>();
    list<Addresses__c> insertadd = new list<Addresses__c>();
    for(account act: trigger.new){
        accountidcreateBillingadddress.put(act.id, false);
        accountidcreateShippingadddress.put(act.id, false);
        
        if(act.BillingAddressId__c == null){
            accountidcreateBillingadddress.put(act.id, true);
        }
        if(act.ShippingAddressId__c == null){
            accountidcreateShippingadddress.put(act.id, true);
        }
    }
    
    for(account act: trigger.new){
        system.debug('In second for'+ act.ShippingCountry);
        if(accountidcreateBillingadddress.get(act.id) == true){
             system.debug('In accountidcreateBillingadddress true');
                Addresses__c add = new Addresses__c ();
                add.Account__c = act.id;
                add.Billing__c = true;
                add.Street__c = act.BillingStreet;
                add.City__c = act.BillingCity;
                add.State__c =  act.BillingState;
                add.Country__c = act.BillingCountry;
                add.ZipCode__c = act.BillingPostalCode;
                add.ReadytobeSynced__c = true;
                insertadd.add(add);
            
           
        }
        
        if(accountidcreateShippingadddress.get(act.id) == true){
                Addresses__c add = new Addresses__c ();
                add.Account__c = act.id;
                add.Shipping__c = true;
                add.Street__c = act.ShippingStreet;
                add.City__c = act.ShippingCity;
                add.State__c =  act.ShippingState;
                system.debug('act.ShippingCountry::'+act.ShippingCountry);
                add.Country__c = act.ShippingCountry;
                add.ZipCode__c = act.ShippingPostalCode;
                add.ReadytobeSynced__c = true;
                insertadd.add(add);
            
            
        }
        
    }
    system.debug('insertadd::  '+ insertadd);
    insert insertadd;
    map<id,id> AccountIdBillingAddId = new map<id,id>();
    map<id,id> AccountIdShippingAddId = new map<id,id>();
    list<account> updateAccounts = new list<account>();
    

    for(Addresses__c add :insertadd){
        if(add.Billing__c = true){
            AccountIdBillingAddId.put(add.Account__c, add.Id);
        }
        
        if(add.Shipping__c = true){
            AccountIdShippingAddId.put(add.Account__c, add.Id);
        }
        
    }
    
    for(account act: trigger.new){
        Account actinsert = new Account();
        actinsert.id = act.id;
        if(AccountIdBillingAddId.containsKey(act.id)){
            
            if(trigger.isupdate){
                act.BillingAddressId__c =AccountIdBillingAddId.get(act.id);
           
            
            }
        }
        if(AccountIdShippingAddId.containsKey(act.id)){
            if(trigger.isupdate){
                act.ShippingAddressId__c =AccountIdShippingAddId.get(act.id);
                
            }
        }     
    }
}