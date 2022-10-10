public class OpptyLnItDataLoadBatch implements Database.Batchable<SObject>,Database.Stateful{
	string query;
    list<id> lstOppIds;
    list<OpportunityLineItem> lstOppLineItToInsert = new list<OpportunityLineItem>();
    list<id> lstOpptyltIds = new list<id>();
    
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
		list<Product2> lstProduct = [select id, Name, CurrencyIsoCode, IsActive from Product2 where IsActive = true limit 2];		
        
        for(Opportunity opp: lstOpportunities){
            for(Product2 pr: lstProduct){
                OpportunityLineItem oppLnIt = new OpportunityLineItem();
                oppLnIt.OpportunityId = opp.Id;
                //oppLnIt.Name = pr.Name;// not writeable
                oppLnIt.Product2Id = pr.Id;
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
                lstOpptyltIds.add(sr.getId());
            }
        }
    }
    
    /**
     * Batch's finish method.
     * @Params: NA
     * @Output: void
    */
    public void finish(Database.BatchableContext bc){
        Database.executeBatch(new QuoteDataLoadBatch(lstOppIds), 10);
    }
}