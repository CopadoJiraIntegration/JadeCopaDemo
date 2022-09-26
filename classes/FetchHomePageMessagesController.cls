public class FetchHomePageMessagesController {
    
    @AuraEnabled
    public static String fetchQuoteRecord(){
        
        Id userId = UserInfo.getUserId();
        List<User> lstUser = [Select Id,Name,ContactId from User WHERE Id = :userId LIMIT 1];
         system.debug('lstUser '+lstUser[0]);	
         system.debug('UserName '+lstUser[0].Name);          
        
        List<SBQQ__Quote__c> quoteList = [SELECT Id, Name,SBQQ__PrimaryContact__c, SBQQ__PrimaryContact__r.Name,Payment_Mode__c,
                                          SBQQ__NetAmount__c
                                          FROM SBQQ__Quote__c 
                  						  WHERE SBQQ__PrimaryContact__c =: lstUser[0].ContactId
                                          AND Payment_Mode__c !=null];
        
        system.debug('quoteList '+quoteList);
       
        if(!quoteList.isEmpty() && quoteList[0].Payment_Mode__c == 'Arrear Payments'){
            return 'Arrear';
        }
        else if(!quoteList.isEmpty() && quoteList[0].Payment_Mode__c == 'Advancement payments'){
            return 'Advancement';
        }
        return null;
           
    }

}