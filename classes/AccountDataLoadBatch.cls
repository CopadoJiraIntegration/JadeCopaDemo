public class AccountDataLoadBatch implements Database.Batchable<SObject>,Database.Stateful{

    list<string> lstCountries;
    string query;
    list<Account> lstAccToInsert = new list<Account>();
    list<id> lstAccIds = new list<id>();
    
    
    /**
     * Constructor to prepare the query.
     * @Params: NA.
     * @Output: NA.
    */
    public AccountDataLoadBatch(list<string> lstCountries){
    	this.lstCountries = lstCountries;

        query = 'Select Id, Name' +
                ' From User' +
                ' Where UserRoleId != null and isActive = true'; 
        System.debug('#query' + query);
    }
    
    /**
     * Batch's start method to query records.
     * @Params: NA
     * @Output: List<User>
    */
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(query);
    }
    
    /**
     * Batch's execute method to create Accounts
     * @Params: List<User>
     * @Output: void
    */
    public void execute(Database.BatchableContext bc, list<User> lstUsers){
        for(string country: lstCountries){
            for(User usr: lstUsers){  
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
                    //lstAccName.add(acc.Name);
                    lstAccToInsert.add(acc);
                }
            }    
        }
        
        // Insert Accounts
        Database.SaveResult[] srList = Database.insert(lstAccToInsert, false);
        
        // Iterate through each returned result
        for (Database.SaveResult sr : srList) {
            if (sr.isSuccess()) {
                // Operation was successful, so get the ID of the record that was processed
                //System.debug('Successfully inserted account. Account ID: ' + sr.getId());
                lstAccIds.add(sr.getId());
            }
        }
        
    }
    
    /**
     * Batch's finish method.
     * @Params: NA
     * @Output: void
    */
    public void finish(Database.BatchableContext bc){
        Database.executeBatch(new CaseDataLoadBatch(lstAccIds));
        Database.executeBatch(new OppDataLoadBatch(lstAccIds));
    }
}