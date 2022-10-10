public class CaseDataLoadBatch implements Database.Batchable<SObject>,Database.Stateful{
    string query;
    list<id> lstAccIds;
    
    list<Case> lstCaseToInsert = new list<Case>();
        list<string> lstCaseStatuses = new list<string>{'On Hold', 'Escalated', 'Closed', 'New'};
        list<string> lstCaseDepartments= new list<string>{'Billing', 'Marketing', 'Renewal', 'Support', 'Service'};
        list<string> lstCaseTypes = new list<string>{'Problem','Feature Request','Question'};
        list<string> lstCaseOrigins = new list<string>{'Email','Phone','Web','Support Portal', 'NetSuite', 'Chat'};
        list<string> lstCaseReasons = new list<string>{'Complex Functionality','Existing Problem','New Problem','Instructions not clear'};
    
    /**
     * Constructor to prepare the query.
     * @Params: list<id> lstAccIds
     * @Output: NA.
    */
    public CaseDataLoadBatch(list<id> lstAccIds){
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
		//Pricebook2 standardPriceBook = [select id, CurrencyIsoCode from Pricebook2 where Name = 'Standard Price Book'];		
        
        for(Account acc: lstAccounts){
                Case c = new Case();
                c.CurrencyIsoCode = 'USD';
                c.AccountId = acc.Id;
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
    }
    
    /**
     * Batch's finish method.
     * @Params: NA
     * @Output: void
    */
    public void finish(Database.BatchableContext bc){
        
    }
}