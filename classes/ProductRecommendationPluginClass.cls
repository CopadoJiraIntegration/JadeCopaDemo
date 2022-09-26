global class ProductRecommendationPluginClass implements SBQQ.ProductRecommendationPlugin{
global ProductRecommendationPluginClass() {
}
global PricebookEntry[] recommend(SObject quote, List<SObject> quoteLines) {
    
    // Get the price book Id of the quote
    Id pricebookId = (Id)quote.get('SBQQ__PriceBookId__c');
    String quoteCurrency=(String)quote.get('CurrencyIsoCode');

    // Get Ids of all products in the quote
    Id[] productIdsInQuote = new Id[0];
    for (SObject quoteLine : quoteLines) {
        Id productId = (Id)quoteLine.get('SBQQ__Product__c');
        productIdsInQuote.add(productId);
    }

    // Query the recommendation custom object records of all products in quote.
   ProductRecommendation__c[] recommendations = [
        SELECT RecommendedProduct2Id__c
        FROM ProductRecommendation__c
        WHERE Product2Id__c IN :productIdsInQuote];

    // Get Ids of all recommended products
    Id[] recommendedProductIds = new Id[0];
    for(ProductRecommendation__c recommendation : recommendations) {
        recommendedProductIds.add(recommendation.RecommendedProduct2Id__c);
    }
    
    // Query the price book entries of the above recommended products
    PricebookEntry[] priceBookEntries = [
        SELECT Id, UnitPrice, Pricebook2Id, Product2Id, Product2.Name, Product2.ProductCode
        FROM PricebookEntry
        WHERE Product2Id IN :recommendedProductIds AND Pricebook2Id = :pricebookId AND CurrencyIsoCode=:quoteCurrency];
       
    return priceBookEntries;
}
}