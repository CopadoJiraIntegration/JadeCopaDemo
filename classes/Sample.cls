public class Sample {
    
    public static void createData(){
        /*
        * This script creates data for Account, Opportunity & OpportunityLineItems
        * @Author : Jade Global
        * 
        */
        
        /*
        1. Create Accounts for different countries and users
        */ 
        list<Account> lstAccToInsert = new list<Account>();
        list<id> lstAccId = new list<id>();
        list<string> lstAccName = new list<string>();
        /*list<string> lstCountry = new list<string>{'Germany', 'Greenland', 'India', 'Canada', 
            'Iceland', 'Macao', 'Taiwan', 'China', 'Japan', 
            'Jersey', 'Australia','Russia', 'China' ,'Norway',
            'Argentina','Chile', 'Peru','Brazil','Colombia','France'
            };*/
                
        list<string> lstCountry = new list<string>{'Germany'};     
        // Query the active user that are having role assigned from system
        list<User> lstUser = [select id, Name from User where UserRoleId != null and isActive = true];
        
        for(string country: lstCountry){
            for(User usr: lstUser){  
                if(usr.Name != 'Integration User' && usr.Name != 'CPQ User'){
                    Account acc = new Account();
                    acc.Name = country.substring(0, 3) + '_'+ 'Account'+'_'+ DateTime.now().millisecondGMT() + DateTime.now().minute() +DateTime.now().hour()+Date.today().day()+Date.today().month()+Date.today().year();
                    system.debug('Acc Name : '+ acc.Name);
                    acc.CurrencyIsoCode = 'USD';
                    acc.Subsidiary__c = 'HT US Newyork';
                    acc.ERPSystem__c = 'NetSuite';
                    acc.BillingCountry = country;
                    //acc.RecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName.get('Customer').getRecordTypeId();
                    acc.RecordTypeId = '0125w000000hxDwAAI';// customer record Type Id
                    acc.OwnerId = usr.Id;
                    system.debug('acc owner name : '+ usr.Name);
                    lstAccName.add(acc.Name);
                    lstAccToInsert.add(acc);
                } 
            }    
        }
        
        // Insert Accounts
        if(!lstAccToInsert.isEmpty()){
            //insert lstOppToInsert;
            Database.SaveResult[] srList = Database.insert(lstAccToInsert, false);
            for(Database.SaveResult sr : srList) {
                if(sr.isSuccess()){
                    // Operation was successful, so get the ID of the record that was processed
                    //System.debug('Successfully inserted account. Account ID: ' + sr.getId());
                    lstAccId.add(sr.getId());
                }
            }
        }
        
        /*
        2. Create opportunities and associate them with Accounts created above
        */ 
        list<Opportunity> lstOppToInsert = new list<Opportunity>();
        list<id> lstOppIds = new list<id>();
        list<string> lstOppName = new list<string>();
        list<string> lstOppTypes = new list<string>{'Existing Business', 'New Business', 'New Business / Add-on'};
        list<string> lstOppStage = new list<string>{'Prospecting', 'Closed Won', 'Proposal/Price Quote', 
            										'Qualification', 'Negotiation/Review'};
                
        // Query the Pricebook need to associate with Opportunity                                                
        Pricebook2 standardPriceBook = [select id from Pricebook2 where Name = 'Standard Price Book'];
        
        for(Account acc: [select id, Name, OwnerId from Account where id IN : lstAccId]){
            for(string oppStage: lstOppStage){
                Opportunity opp = new Opportunity();
                opp.Name = acc.Name + '_'+oppStage.substring(0, 3)+'_Opportunity';
                opp.AccountId = acc.Id;
                opp.StageName = oppStage;
                if(oppStage == 'Closed Won')
                    opp.CloseDate = date.today();
                opp.CloseDate = date.today().addDays(30);
                opp.OwnerId = acc.OwnerId;
                opp.Pricebook2Id = standardPriceBook.Id;
                opp.Type = lstOppTypes.get(Integer.valueof((Math.random() * (lstOppTypes.size()-1))));
                lstOppName.add(opp.Name);
                lstOppToInsert.add(opp);  
            }
        }
        
        // Insert Opportunity
        if(!lstOppToInsert.isEmpty()){
            //insert lstOppToInsert;
            Database.SaveResult[] srList = Database.insert(lstOppToInsert, false);
            for(Database.SaveResult sr : srList) {
                if(sr.isSuccess()){
                    // Operation was successful, so get the ID of the record that was processed
                    //System.debug('Successfully inserted account. Account ID: ' + sr.getId());
                    lstOppIds.add(sr.getId());
                }
            }
        }
        
        
        
        /*
        3. Create OpportunityProducts and associates them with Opportunities created above
        */ 
        
        // Query the list of Products in order to create Opportunity Products
        list<Product2> lstProduct = [select id, Name, CurrencyIsoCode, IsActive from Product2 where IsActive = true limit 1];
        list<OpportunityLineItem> lstOppLineItToInsert = new list<OpportunityLineItem>();
        
        for(Opportunity opp: [select id, Name from Opportunity where id in : lstOppIds]){
            for(Product2 pr: lstProduct){
                OpportunityLineItem oppLnIt = new OpportunityLineItem();
                oppLnIt.OpportunityId = opp.Id;
                //oppLnIt.Name = pr.Name;// not writeable
                oppLnIt.Product2Id = pr.Id;
                //oppLnIt.Quantity = (lstProduct.indexOf(pr) + 1);
                oppLnIt.Quantity = ((lstProduct.indexOf(pr) + 1) * 100);
                oppLnIt.TotalPrice = ((lstProduct.indexOf(pr) + 1) * 100);
                lstOppLineItToInsert.add(oppLnIt);
            }
        }
        
        //Insert OpportunityLineItems/OpportunityProducts
        if(!lstOppLineItToInsert.isEmpty()){
            insert lstOppLineItToInsert;
        }
        
        /*
        4. Create Primary Quotes and associates with Opportunities created above
        */
        
        list<string> lstQuoteStatuses = new list<string>{'Draft', 'In Review', 'Approved', 'Denied', 'Presented'};
        list<SBQQ__Quote__c> lstQuoteToInsert = new list<SBQQ__Quote__c>();
        list<id> lstQtcIds = new list<id>();
        
        for(Opportunity oppty: [select id, AccountId, OwnerId, StageName, Pricebook2Id from Opportunity where id in: lstOppIds]){
            SBQQ__Quote__c qt = new SBQQ__Quote__c();
            qt.SBQQ__Account__c = oppty.AccountId;
            qt.SBQQ__SalesRep__c = oppty.OwnerId;
            if(oppty.StageName == 'Clsoed Won'){
                qt.SBQQ__Status__c = 'Accepted'; 
            }else {
                qt.SBQQ__Status__c = lstQuoteStatuses.get(Integer.valueof((Math.random() * (lstQuoteStatuses.size()-1)))); 
            }
            qt.SBQQ__Opportunity2__c = Oppty.Id;
            qt.SBQQ__Primary__c = true;
            qt.SBQQ__PriceBook__c = Oppty.Pricebook2Id;
            
            lstQuoteToInsert.add(qt);
        }
        
        //Insert Quotes
        if(!lstQuoteToInsert.isEmpty()){
            //insert lstQuoteToInsert;
            SBQQ.TriggerControl.disable();
            Database.SaveResult[] srList = Database.insert(lstQuoteToInsert, false);
			SBQQ.TriggerControl.enable();		
            for(Database.SaveResult sr : srList) {
                if(sr.isSuccess()){
                    // Operation was successful, so get the ID of the record that was processed
                    //System.debug('Successfully inserted account. Account ID: ' + sr.getId());
                    lstQtcIds.add(sr.getId());
                }
            }
        }
        
       /*
        4. Create QuoteLineItems related to Primary Quotes created above
       */
        map<id, list<OpportunityLineItem>> mapOppIdToLstOppLnIt = new map<id, list<OpportunityLineItem>>();
        map<id, id> mapQuoteIdToOppId = new map<id, id>();
        map<id, id> mapProdIdToPriceBookEntryId = new map<id, id>();
        list<id> lstProductIds = new list<id>();
        list<SBQQ__QuoteLine__c> lstQuoLnItToInsert = new list<SBQQ__QuoteLine__c>();
        
        for(SBQQ__Quote__c qt: [select id,SBQQ__Opportunity2__c from SBQQ__Quote__c where id in: lstQtcIds]){
            mapQuoteIdToOppId.put(qt.id, qt.SBQQ__Opportunity2__c);
        }
        
        for(Opportunity opp: [select id, (select id, Product2Id, Product2.SBQQ__ChargeType__c, Quantity from OpportunityLineItems) from Opportunity where id in: mapQuoteIdToOppId.values()]){
            mapOppIdToLstOppLnIt.put(opp.id, opp.OpportunityLineItems);
            for(OpportunityLineItem oppLnIt: opp.OpportunityLineItems){
                lstProductIds.add(oppLnIt.Product2Id);
            }
        }
        
        for(PricebookEntry pe: [select id,Product2Id from PricebookEntry where Pricebook2.Name = 'Standard Price Book' and Product2Id in: lstProductIds]){
            mapProdIdToPriceBookEntryId.put(pe.Product2Id, pe.Id);
        }

        for(id quoteId: mapQuoteIdToOppId.keySet()){
            for(OpportunityLineItem oppLnIt: mapOppIdToLstOppLnIt.get(mapQuoteIdToOppId.get(quoteId))){
                SBQQ__QuoteLine__c QtLnIt = new SBQQ__QuoteLine__c();
                QtLnIt.SBQQ__Quote__c = quoteId;
                QtLnIt.SBQQ__Product__c = oppLnIt.Product2Id;
                QtLnIt.SBQQ__Quantity__c = oppLnIt.Quantity;
                QtLnIt.SBQQ__ChargeType__c = oppLnIt.Product2.SBQQ__ChargeType__c;
                QtLnIt.SBQQ__PricebookEntryId__c = mapProdIdToPriceBookEntryId.get(oppLnIt.Product2Id);
                lstQuoLnItToInsert.add(QtLnIt);
            }
        }

     	insert lstQuoLnItToInsert;
        
        
        /*
        5. Create Cases related to Accounts
        

        list<Case> lstCaseToInsert = new list<Case>();
        list<string> lstCaseStatuses = new list<string>{'On Hold', 'Escalated', 'Closed', 'New'};
        list<string> lstCaseDepartments= new list<string>{'Billing', 'Marketing', 'Renewal', 'Support', 'Service'};
        list<string> lstCaseTypes = new list<string>{'Problem','Feature Request','Question'};
        list<string> lstCaseOrigins = new list<string>{'Email','Phone','Web','Support Portal', 'NetSuite', 'Chat'};
        list<string> lstCaseReasons = new list<string>{'Complex Functionality','Existing Problem','New Problem','Instructions not clear'};
        
        for(Id accId: lstAccId){
                Case c = new Case();
                c.CurrencyIsoCode = 'USD';
                c.AccountId = accId;
                c.RecordTypeId = '0125w000000i6RFAAY';// RecordType : Dispute
                c.Status = lstCaseStatuses.get(Integer.valueof((Math.random() * (lstCaseStatuses.size()-1))));
                c.Origin = lstCaseOrigins.get(Integer.valueof((Math.random() * (lstCaseOrigins.size()-1))));
                c.Type = lstCaseTypes.get(Integer.valueof((Math.random() * (lstCaseTypes.size()-1))));
                c.Reason = lstCaseReasons.get(Integer.valueof((Math.random() * (lstCaseReasons.size()-1))));
                c.Department__c = lstCaseDepartments.get(Integer.valueof((Math.random() * (lstCaseReasons.size()-1))));
                if(c.Status == 'Closed'){
                    c.Agent_Satisfaction_Score__c = 7; 
                }    
                lstCaseToInsert.add(c); 
            }    
            
        //Insert Cases
        if(!lstCaseToInsert.isEmpty()){
            insert lstCaseToInsert;
        }
		*/
        
        /*
        6. Create Orders related to Opportunity, Accounts
        */
        list<Opportunity> lstOppsToUpdate_1= new list<Opportunity>();
        list<Opportunity> lstOppsToUpdate_2= new list<Opportunity>();
        map<id, id> mapOppIdToQtId = new map<id, id>();
        
        for(SBQQ__Quote__c qt: [select id ,SBQQ__Opportunity2__c, SBQQ__Opportunity2__r.StageName from SBQQ__Quote__c where SBQQ__Opportunity2__r.StageName = 'Closed Won' and id in: lstQtcIds]){
            mapOppIdToQtId.put(qt.SBQQ__Opportunity2__c, qt.id);
        }
        //[select count() from Opportunity where SBQQ__PrimaryQuote__c != null and id in: lstOppIds]
            
        system.debug('primary quote opportunity count: '+ [select count() from Opportunity where SBQQ__PrimaryQuote__c != null and id in: lstOppIds]);
        
        // update the closed won opportunities with ordered as true to generates the Orders
        for(Opportunity opp: [select id, StageName, SBQQ__Ordered__c, SBQQ__PrimaryQuote__c from Opportunity where id in: mapOppIdToQtId.keySet()]){
            opp.SBQQ__PrimaryQuote__c = mapOppIdToQtId.get(opp.id);
            opp.SBQQ__Ordered__c = true;
            lstOppsToUpdate_1.add(opp);
        }
        
        update lstOppsToUpdate_1;
        ///*
        /*system.debug('primary quote opportunity count: '+ [select count() from Opportunity where SBQQ__PrimaryQuote__c != null and id in: lstOppIds]);
        for(Opportunity opp: [select id, StageName, SBQQ__Ordered__c, SBQQ__PrimaryQuote__c from Opportunity where id in: mapOppIdToQtId.keySet()]){
            //opp.SBQQ__PrimaryQuote__c = mapOppIdToQtId.get(opp.id);
            opp.SBQQ__Ordered__c = true;
            lstOppsToUpdate_2.add(opp);
        }
        
        //update lstOppsToUpdate_2;
        */
        
        
        /*
        6. Create Contracts
        
        list<id> lstOrderIds = new list<id>();
        list<string> lstOrderTypes = new List<string>{'New', 'Amendment', 'Renewal'};
        list<Order> lstOrdersToUdpate = new list<Order>();
        
        list<Opportunity> lstOppsToUpdateToGenerateContracts = new list<Opportunity>();
        for(Order ord: [select id, AccountId, SBQQ__Quote__c from Order where AccountId in : lstAccId and SBQQ__Quote__c in : lstQtcIds]){
            ord.Status = 'Activated';
            ord.Type = lstOrderTypes.get(Integer.valueof((Math.random() * (lstOrderTypes.size()-1))));
            //ord.SBQQ__Contracted__c = true;
            lstOrdersToUdpate.add(ord);
        }
        
        //Update Orders
        update lstOrdersToUdpate;
        
        
        for(Opportunity opp: [select id, SBQQ__Contracted__c from Opportunity where id in: mapOppIdToQtId.keySet()]){
            opp.SBQQ__Contracted__c = true;
            lstOppsToUpdateToGenerateContracts.add(opp);
        }
        
        update lstOppsToUpdateToGenerateContracts;*/

		
    }
}