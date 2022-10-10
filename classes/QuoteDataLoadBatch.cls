public class QuoteDataLoadBatch implements Database.Batchable<SObject>,Database.Stateful{
    string query;
    list<id> lstOppIds;
    
    list<string> lstQuoteStatuses = new list<string>{'Draft', 'In Review', 'Approved', 'Denied', 'Presented'};
    list<SBQQ__Quote__c> lstQuoteToInsert = new list<SBQQ__Quote__c>();
    list<id> lstQtcIds = new list<id>();
    
    /**
     * Constructor to prepare the query.
     * @Params: list<id> lstOppIds
     * @Output: NA.
    */
    public QuoteDataLoadBatch(list<id> lstOppIds){
    	this.lstOppIds = lstOppIds;

        query = 'Select Id, AccountId, OwnerId, StageName' +
                ' From Opportunity' +
                ' Where Id IN: lstOppIds'; 
        System.debug('#query' + query);
    }
    
    /**
     * Batch's start method to query records.
     * @Params: NA
     * @Output: list<Opportunity>
    */
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(query);
    }
    
    /**
     * Batch's execute method to create Opportunities.
     * @Params: List<Opportunity>
     * @Output: void
    */
    public void execute(Database.BatchableContext bc, list<Opportunity> lstOpps){	
        
        for(Opportunity oppty: lstOpps){
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
            
            lstQuoteToInsert.add(qt);
        }
        // disable the sbqq managed package trigger
        SBQQ.TriggerControl.disable();
        // Insert Opportunities
        Database.SaveResult[] srList = Database.insert(lstQuoteToInsert, false);
        
        // Enable the sbqq managed package trigger
        SBQQ.TriggerControl.enable();
        
        // Iterate through each returned result
        for (Database.SaveResult sr : srList) {
            if (sr.isSuccess()) {
                // Operation was successful, so get the ID of the record that was processed
                //System.debug('Successfully inserted account. Account ID: ' + sr.getId());
                lstQtcIds.add(sr.getId());
            }
        }
    }
    // 
    
    /**
     * Batch's finish method.
     * @Params: NA
     * @Output: void
    */
    public void finish(Database.BatchableContext bc){
        Database.executeBatch(new QuoteLineItDataLoadBatch(lstQtcIds));
    }
}