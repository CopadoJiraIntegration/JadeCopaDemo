public class OppDataLoadBatch implements Database.Batchable<SObject>,Database.Stateful{
    string query;
    list<id> lstAccIds;
    list<string> lstOppStage = new list<string>{'Prospecting', 'Closed Won', 'Proposal/Price Quote', 
    										'Qualification', 'Negotiation/Review'};
    list<Opportunity> lstOppToInsert = new list<Opportunity>();
    list<id> lstOppIds = new list<id>();
    
    /**
     * Constructor to prepare the query.
     * @Params: list<id> lstAccIds
     * @Output: NA.
    */
    public OppDataLoadBatch(list<id> lstAccIds){
    	this.lstAccIds = lstAccIds;

        query = 'Select Id, Name, OwnerId' +
                ' From Account' +
                ' Where Id IN: lstAccIds'; 
        System.debug('#query' + query);
    }
    
    /**
     * Batch's start method to query records.
     * @Params: NA
     * @Output: list<User>
    */
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(query);
    }
    
    /**
     * Batch's execute method to create Opportunities.
     * @Params: List<Account>
     * @Output: void
    */
    public void execute(Database.BatchableContext bc, list<Account> lstAccounts){
        
        // Query the Pricebook need to associate with Opportunity                                                
		Pricebook2 standardPriceBook = [select id, CurrencyIsoCode from Pricebook2 where Name = 'Standard Price Book'];		
        
        for(Account acc: lstAccounts){
            for(string oppStage: lstOppStage){
                Opportunity opp = new Opportunity();
                opp.Name = acc.Name + '_'+oppStage.substring(0, 3)+'_Opportunity';
                opp.AccountId = acc.Id;
                opp.StageName = oppStage;
                if(oppStage == 'Closed Won')
                    opp.CloseDate = date.today();
                // 
                opp.CloseDate = date.today().addDays(30);
                opp.CurrencyIsoCode = standardPriceBook.CurrencyIsoCode;
                opp.OwnerId = acc.OwnerId;
                opp.Pricebook2Id = standardPriceBook.Id;
                //lstOppName.add(opp.Name);
                lstOppToInsert.add(opp);  
            }
        }
        
        // Insert Opportunities
        Database.SaveResult[] srList = Database.insert(lstOppToInsert, false);
        
        // Iterate through each returned result
        for (Database.SaveResult sr : srList) {
            if (sr.isSuccess()) {
                // Operation was successful, so get the ID of the record that was processed
                //System.debug('Successfully inserted account. Account ID: ' + sr.getId());
                lstOppIds.add(sr.getId());
            }
            /*else {
                    // Operation failed, so get all errors                
                    for(Database.Error err : sr.getErrors()) {
                    System.debug('The following error has occurred.');                    
                    System.debug(err.getStatusCode() + ': ' + err.getMessage());
                    System.debug('Account fields that affected this error: ' + err.getFields());
                    }
                    }*/
        }
    }
    
    /**
     * Batch's finish method.
     * @Params: NA
     * @Output: void
    */
    public void finish(Database.BatchableContext bc){
        Database.executeBatch(new OpptyLnItDataLoadBatch(lstOppIds));
    }
}