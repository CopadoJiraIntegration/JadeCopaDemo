public class CommunityRedirectController {
    
    @AuraEnabled
    public static String redirectToCommunityPage(){
        
        Id userId = UserInfo.getUserId();
        List<User> lstUser = [Select Id,Name,ContactId from User WHERE Id = :userId LIMIT 1];
        
        List<SBQQ__Quote__c> quoteList = [SELECT Id, Name,SBQQ__PrimaryContact__c, SBQQ__PrimaryContact__r.Name,Payment_Mode__c,
                                          SBQQ__NetAmount__c,Redirection_Required__c
                                          FROM SBQQ__Quote__c
                  						  WHERE SBQQ__PrimaryContact__c =: lstUser[0].ContactId
                                          AND Payment_Mode__c !=null /*AND SBQQ__Primary__c = TRUE*/];
        
        system.debug('quoteList '+quoteList);
       
        if(!quoteList.isEmpty() && quoteList[0].Redirection_Required__c == 'Yes'){
            if(quoteList[0].Payment_Mode__c == 'Arrear Payments'){
                return 'Arrear';
            }else if(quoteList[0].Payment_Mode__c == 'Advancement payments'){
                return 'Advancement';
            }
        }
        
        return null;     
    }
    
}