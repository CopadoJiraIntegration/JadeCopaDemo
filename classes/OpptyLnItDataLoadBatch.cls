public class OpptyLnItDataLoadBatch implements Database.Batchable<SObject>,Database.Stateful{
	string query;
    list<id> lstOppIds;
    list<OpportunityLineItem> lstOppLineItToInsert = new list<OpportunityLineItem>();
    
    /**
     * Constructor to prepare the query.
     * @Params: NA.
     * @Output: NA.
    */
    public OpptyLnItDataLoadBatch(list<id> lstOppIds){
    	this.lstOppIds = lstOppIds;

        query = 'Select Id, Name' +
                ' From Opportunity' +
                ' Where Id IN: lstOppIds'; 
        System.debug('#query' + query);
    }
    
    /**
     * Batch's start method to query records.
     * @Params: NA
     * @Output: List<Opportunity>
    */
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator(query);
    }
    
    /**
     * Batch's execute method to create OpportunityProducts
     * @Params: List<Opportunity>
     * @Output: void
    */
    public void execute(Database.BatchableContext bc, list<Opportunity> lstOpportunities){
        
        // Query the list of Products in order to create Opportunity Products
		list<Product2> lstProduct = [select id, Name, CurrencyIsoCode, IsActive from Product2 where IsActive = true limit 5];		
        
        for(Opportunity opp: lstOpportunities){
            for(Product2 pr: lstProduct){
                OpportunityLineItem oppLnIt = new OpportunityLineItem();
                oppLnIt.OpportunityId = opp.Id;
                //oppLnIt.Name = pr.Name;// not writeable
                oppLnIt.Product2Id = pr.Id;
                // include opp type
                // existing/business
                // 
             
                oppLnIt.Quantity = (lstProduct.indexOf(pr) * 100);
                oppLnIt.TotalPrice = (lstProduct.indexOf(pr) * 100);
                lstOppLineItToInsert.add(oppLnIt);
            }
        }
        
        // Insert OpportunityLineItem
        Database.SaveResult[] srList = Database.insert(lstOppLineItToInsert, false);
        
        // Iterate through each returned result
        for (Database.SaveResult sr : srList) {
            if (sr.isSuccess()) {
                // Operation was successful, so get the ID of the record that was processed
                //System.debug('Successfully inserted account. Account ID: ' + sr.getId());
                //lstOppIds.add(sr.getId());
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
        //Database.executeBatch(new ContractStatusOnContactPYMCRBatch(batchSize), batchSize);
    }
}