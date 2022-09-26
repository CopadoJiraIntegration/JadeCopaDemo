/*
 * OrgDataLoader
 * This class for available objects in org
 * @Author : Jade Global
 *
*/
public class OrgDataLoader {
    /*
     * 
     * This method creates data for Accounts, Opportunity & OpportunityProducts and associates them
     * 
    */
    @future
    public static void createOrgData(list<string> lstCountry){
        /*
        1. Create Accounts for different countries and users
        */ 
        list<Account> lstAccToInsert = new list<Account>();
        list<string> lstAccName = new list<string>();
       
        for(string country: lstCountry){
            // Query the active user that are having role assigned from system
            for(User usr: [SELECT id, Name FROM User WHERE UserRoleId != NULL AND isActive = TRUE]){  
                if(usr.Name != 'Integration User' && usr.Name != 'CPQ User'){
                    Account acc = new Account();
                    acc.Name = country.substring(0, 3) + '_'+ 'Account'+'_'+ DateTime.now().millisecondGMT() + DateTime.now().minute() +DateTime.now().hour()+Date.today().day()+Date.today().month()+Date.today().year();
                    system.debug('Acc Name : '+ acc.Name);
                    acc.CurrencyIsoCode = 'USD';
                    acc.Subsidiary__c = 'HT US Newyork';
                    acc.ERPSystem__c = 'NetSuite';
                    acc.BillingCountry = country;
                    acc.RecordTypeId = '0125w000000hxDwAAI';// customer record Type Id
                    acc.OwnerId = usr.Id;
                    lstAccName.add(acc.Name);
                    lstAccToInsert.add(acc);
                }
            }    
        }
        
        // Insert Accounts
        if(!lstAccToInsert.isEmpty()){
            insert lstAccToInsert;
        }
        
        
        /*
        2. Create opportunities and associate them with Accounts created above
        */ 
        list<Opportunity> lstOppToInsert = new list<Opportunity>();
        list<string> lstOppName = new list<string>();
        list<string> lstOppStage = new list<string>{
            										'Prospecting', 'Closed Won', 'Proposal/Price Quote', 
            										'Qualification', 'Negotiation/Review'
                                                   };
                
        // Query the Pricebook need to associate with Opportunity                                                
        Pricebook2 standardPriceBook = [SELECT id 
                                        FROM Pricebook2 
                                        WHERE Name = 'Standard Price Book'];
        
        for(Account acc: [SELECT id, Name, OwnerId FROM Account WHERE Name IN : lstAccName]){
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
                lstOppName.add(opp.Name);
                lstOppToInsert.add(opp);  
            }
        }
        
        // Insert Opportunity
        if(!lstOppToInsert.isEmpty()){
            insert lstOppToInsert;
        }
        
        
        /*
        3. Create OpportunityProducts and associates them with Opportunities created above
        */ 
        // Query the list of Products in order to create Opportunity Products
        list<Product2> lstProduct = [SELECT id, Name, CurrencyIsoCode, IsActive FROM Product2 WHERE IsActive = true LIMIT 10];
        list<OpportunityLineItem> lstOppLineItToInsert = new list<OpportunityLineItem>();
        
        for(Opportunity opp: [SELECT id, Name FROM Opportunity WHERE Name IN : lstOppName]){
            for(Product2 pr: lstProduct){
                OpportunityLineItem oppLnIt = new OpportunityLineItem();
                oppLnIt.OpportunityId = opp.Id;
                //oppLnIt.Name = pr.Name;// not writeable
                oppLnIt.Product2Id = pr.Id;
                oppLnIt.Quantity = (lstProduct.indexOf(pr) + 1);
                lstOppLineItToInsert.add(oppLnIt);
            }
        }
        
        //Insert OpportunityLineItems/OpportunityProducts
        if(!lstOppLineItToInsert.isEmpty()){
            insert lstOppLineItToInsert;
        }
    }
}