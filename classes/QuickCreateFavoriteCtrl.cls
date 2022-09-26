public class QuickCreateFavoriteCtrl {
  
    @AuraEnabled
    public static String setQuickCreateFavoritesId(Id QuoteId, Id UserId){

        List<Favorites__c> listFavorites = new List<Favorites__c>([SELECT Id FROM Favorites__c WHERE Original_Quote__c = :QuoteId AND User__c = :UserId LIMIT 1]);
        Favorites__c instFav = new Favorites__c();
        if(!listFavorites.isEmpty()){
            instFav.Id = listFavorites[0].Id;
        }
        return instFav.Id;  
    }
    
     @AuraEnabled
    public static String checkDuplicateNameExist(String QCFName, String QuoteId){
        
        List<Favorites__c> listFavorites = new  List<Favorites__c>([SELECT Id FROM Favorites__c WHERE Name = :QCFName AND Original_Quote__c != :QuoteId LIMIT 1]);
        Favorites__c instFav = new Favorites__c();
        if(!listFavorites.isEmpty()){
            instFav.Id = listFavorites[0].Id;
        }
        
        return instFav.Id; 

    }
    
    @AuraEnabled
    public static boolean setGlobalFavorite(Id UserId){
      User userObj = [SELECT Id,Profile.Name FROM user WHERE Id = :UserId LIMIT 1];
        if(userObj.Profile.Name == 'System Administrator'){
            return true;
        }
        else{
            return false;
        }            
    }
}