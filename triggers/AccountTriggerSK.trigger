trigger AccountTriggerSK on Account (after insert, before update) {
    if(Trigger.isInsert){
        List<Addresses__c> lstAddressToInsert = new List<Addresses__c>();
        Map<Id, Account> mapAccountIdToUpdatableAccount = new Map<Id, Account>();
        
        for(Account objAccount : Trigger.new){
            Addresses__c objBillingAddress = new Addresses__c ();
            objBillingAddress.Account__c = objAccount.id;
            objBillingAddress.Billing__c = true;
            objBillingAddress.Street__c = objAccount.BillingStreet;
            objBillingAddress.City__c = objAccount.BillingCity;
            objBillingAddress.State__c =  objAccount.BillingState;
            objBillingAddress.Country__c = objAccount.BillingCountryCode;
            objBillingAddress.ZipCode__c = objAccount.BillingPostalCode;
            objBillingAddress.ReadytobeSynced__c = false;
            
            lstAddressToInsert.add(objBillingAddress);
        
            Addresses__c objShippingAddress = new Addresses__c ();
            objShippingAddress.Account__c = objAccount.id;
            objShippingAddress.Shipping__c = true;
            objShippingAddress.Street__c = objAccount.ShippingStreet;
            objShippingAddress.City__c = objAccount.ShippingCity;
            objShippingAddress.State__c =  objAccount.ShippingState;
            objShippingAddress.Country__c = objAccount.ShippingCountryCode;
            objShippingAddress.ZipCode__c = objAccount.ShippingPostalCode;
            objShippingAddress.ReadytobeSynced__c = false;

            lstAddressToInsert.add(objShippingAddress);
        }
        insert lstAddressToInsert;

        for(Addresses__c objAddress : lstAddressToInsert){
            if(mapAccountIdToUpdatableAccount.get(objAddress.Account__c) == null){

                mapAccountIdToUpdatableAccount.put(objAddress.Account__c, new Account(Id = objAddress.Account__c));
            }
            
            if(objAddress.Billing__c)
                mapAccountIdToUpdatableAccount.get(objAddress.Account__c).BillingAddressId__c = objAddress.Id;
            if(objAddress.Shipping__c)
                mapAccountIdToUpdatableAccount.get(objAddress.Account__c).ShippingAddressId__c = objAddress.Id;
            
        }
        update mapAccountIdToUpdatableAccount.values();
    }
    if(Trigger.isUpdate){
        List<Addresses__c> lstAddressToUpdate = new List<Addresses__c>();
        for(Account objAccount : Trigger.new){
            Account objAcocuntOld = Trigger.oldMap.get(objAccount.Id);
            if(objAccount.BillingStreet != objAcocuntOld.BillingStreet ||
                objAccount.BillingCity != objAcocuntOld.BillingCity ||
                objAccount.BillingState != objAcocuntOld.BillingState ||
                objAccount.BillingCountryCode != objAcocuntOld.BillingCountryCode ||
                objAccount.BillingPostalCode != objAcocuntOld.BillingPostalCode){
                    Addresses__c objBillingAddress = new Addresses__c (id = objAccount.BillingAddressId__c);
                    objBillingAddress.Street__c = objAccount.BillingStreet;
                    objBillingAddress.City__c = objAccount.BillingCity;
                    objBillingAddress.State__c =  objAccount.BillingState;
                    objBillingAddress.Country__c = objAccount.BillingCountryCode;
                    objBillingAddress.ZipCode__c = objAccount.BillingPostalCode;
                    objBillingAddress.ReadytobeSynced__c = false;
                    lstAddressToUpdate.add(objBillingAddress);
            }
            if(objAccount.ShippingStreet != objAcocuntOld.ShippingStreet ||
                objAccount.ShippingCity != objAcocuntOld.ShippingCity ||
                objAccount.ShippingState != objAcocuntOld.ShippingState ||
                objAccount.ShippingCountryCode != objAcocuntOld.ShippingCountryCode ||
                objAccount.ShippingPostalCode != objAcocuntOld.ShippingPostalCode){
                    Addresses__c objShippingAddress = new Addresses__c (id = objAccount.ShippingAddressId__c);
                    objShippingAddress.Street__c = objAccount.ShippingStreet;
                    objShippingAddress.City__c = objAccount.ShippingCity;
                    objShippingAddress.State__c =  objAccount.ShippingState;
                    objShippingAddress.Country__c = objAccount.ShippingCountryCode;
                    objShippingAddress.ZipCode__c = objAccount.ShippingPostalCode;
                    objShippingAddress.ReadytobeSynced__c = false;
                    lstAddressToUpdate.add(objShippingAddress);
            }                
        } 
        if(lstAddressToUpdate.size()>0){
            update lstAddressToUpdate;
        }
    }
}