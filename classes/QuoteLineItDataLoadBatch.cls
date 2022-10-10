public class QuoteLineItDataLoadBatch implements Database.Batchable<SObject>,Database.Stateful{
    string query;
    list<id> lstQtcIds;
    
    map<id, list<OpportunityLineItem>> mapOppIdToLstOppLnIt = new map<id, list<OpportunityLineItem>>();
        map<id, id> mapQuoteIdToOppId = new map<id, id>();
        map<id, id> mapProdIdToPriceBookEntryId = new map<id, id>();
        list<id> lstProductIds = new list<id>();
        list<SBQQ__QuoteLine__c> lstQuoLnItToInsert = new list<SBQQ__QuoteLine__c>();
    
    /**
     * Constructor to prepare the query.
     * @Params: list<id> lstOppIds
     * @Output: NA.
    */
    public QuoteLineItDataLoadBatch(list<id> lstQtcIds){
    	this.lstQtcIds = lstQtcIds;

        query = 'Select Id, SBQQ__Opportunity2__c' +
                ' From SBQQ__Quote__c' +
                ' Where Id IN: lstQtcIds'; 
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
    public void execute(Database.BatchableContext bc, list<SBQQ__Quote__c> lstQuotes){	
        
        
        for(SBQQ__Quote__c qt: lstQuotes){
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
    }
    // 
    
    /**
     * Batch's finish method.
     * @Params: NA
     * @Output: void
    */
    public void finish(Database.BatchableContext bc){
        //Database.executeBatch(new OpptyLnItDataLoadBatch(lstOppIds));
    }
}