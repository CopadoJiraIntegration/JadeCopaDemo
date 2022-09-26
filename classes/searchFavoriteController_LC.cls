public with sharing class searchFavoriteController_LC {

    public static Id priceBookQuote;
    public static String currencyCodeQuote;
    public static Map<Id,Decimal> mapProductUnitPrice = new Map<Id,Decimal>();


    /**
    * @description : This method passes quoteId and UserId to searchFavoriteAura cmp
    **/
    @AuraEnabled
    public static QuoteDetails getQuoteDetails(String quoteId){
        QuoteDetails objQuoteDetails;
        List<SBQQ__QuoteLineGroup__c> listQLG = [Select id, SBQQ__Quote__c FROM SBQQ__QuoteLineGroup__c WHERE id =: quoteId];
        if(listQLG != null && listQLG.size()>0){
            objQuoteDetails = new QuoteDetails(quoteId,UserInfo.getUserId(),listQLG[0].SBQQ__Quote__c);
        }else{
            objQuoteDetails = new QuoteDetails(quoteId,UserInfo.getUserId(),'');
        }
        return objQuoteDetails;
    }

    /**
    * @description : Get User details and pass to aura to set component
    **/
    @AuraEnabled
    public static UserDetails getUserGlobalFav(String quoteId){
        UserDetails objUserDetails;
        //List<SBQQ__Quote__c> listQuote = [Select id,SBQQ__Account__r.Global_Product_Group__c FROM SBQQ__Quote__c WHERE id =: quoteId];
        List<User> listUser = [Select id,Allow_Global_Filter__c  FROM User WHERE id =: UserInfo.getUserId()];
        objUserDetails = new UserDetails(UserInfo.getUserId(),listUser[0].Allow_Global_Filter__c,true);
        return objUserDetails;
    }

    /**
    * @description : This method returns list of product group which will be displayed
                    under pre-packaged solution and personal tab
    **/
    @AuraEnabled
    public static List<addFavourite> getProductGroupList(String tabSelectedVal, String quoteRecId) {

        List<Favorites__c> favList = new List<Favorites__c>();
        List<Favorites__c> getFavQuoteIdList     = new List<Favorites__c>();
        List<addFavourite> favWrapperList           = new List<addFavourite>();
        List<SBQQ__QuoteLine__c> quoteLineList      = new List<SBQQ__QuoteLine__c>();
        List<SBQQ__QuoteLine__c> quoteLines         = new List<SBQQ__QuoteLine__c>();
        List<SBQQ__QuoteLine__c> personalQLList     = new List<SBQQ__QuoteLine__c>();
        Map<Id,Favorites__c> mapFavoriteCategory = new Map<Id,Favorites__c>();
        Id pricebookid                              = null;
        Set<Id> prodids                             = new Set<Id>();
        String currcode                             = null;
        List<String> strListOfSelecetedTab = new List<String>();
        String strCategory;
        String strSubCategory;
        String strPersonalFav;
        SBQQ__Quote__c objQuote = new SBQQ__Quote__c();
        if(quoteRecId!=null && quoteRecId!=''){
            objQuote = [SELECT Id,Price_List__c FROM SBQQ__Quote__c WHERE ID=:quoteRecId];        
        }
        if(tabSelectedVal != null && tabSelectedVal != '' && tabSelectedVal == 'Personal Favorite'){
                strPersonalFav = tabSelectedVal;
                for(Favorites__c fav : [SELECT Id, Name, Global_Favorite__c,Description__c, Original_Quote__c,Original_Quote__r.name FROM Favorites__c WHERE Id != null AND User__c =: UserInfo.getUserId() AND Original_Quote__r.Price_List__c =: objQuote.Price_List__c AND Global_Favorite__c=FALSE AND Original_Quote__c!=NULL]){
                    String strKey = 'Personal Favorite-'+fav.Id;
                    favWrapperList.add(new addFavourite(strKey,fav.Global_Favorite__c, fav.Name, fav.Description__c, fav.Original_Quote__r.name, false,false,fav.id,
                null,null,null,null,null,null,null));
                }
        }else{
            for(Favorites__c fav : [SELECT Id, Name, Global_Favorite__c, Description__c, Original_Quote__c,Original_Quote__r.name FROM Favorites__c WHERE Id != null AND Global_Favorite__c=True AND Original_Quote__r.Price_List__c =: objQuote.Price_List__c AND Original_Quote__c!=NULL]){
                String strKey = 'Global Favorite-'+fav.Id;
                favWrapperList.add(new addFavourite(strKey,fav.Global_Favorite__c, fav.Name, fav.Description__c, fav.Original_Quote__r.name, false,false,fav.id,
            null,null,null,null,null,null,null));
            }
        }
          
        if(!favWrapperList.isEmpty()){
            return favWrapperList;
        }
        return new List<addFavourite>();
    }

    /**
    * @description : This method returns list of products when product group is selected
    **/
    @AuraEnabled
    public static List<addProducts> getProductsList(String quoteId,String targetQuoteId) {
        List<addProducts> favWrapperList = new List<addProducts>();
        List<SBQQ__QuoteLine__c> QLList = new List<SBQQ__QuoteLine__c>();
        set<Id> quoteIds = new set<Id>();
        Id pricebookid                              = null;
        Set<Id> prodids                             = new Set<Id>();
        String currcode                             = null;
        Decimal conversionRate = null;
        Decimal PBUnitPrice  = null;
        SBQQ__Quote__c objQuote= new SBQQ__Quote__c();
        for(SBQQ__Quote__c qut:[SELECT id,SBQQ__PriceBook__c,Currency__c,SBQQ__Opportunity2__r.pricebook2id from SBQQ__Quote__c WHERE id =:targetQuoteId]){
            pricebookid =   qut.SBQQ__PriceBook__c!=null?qut.SBQQ__PriceBook__c:qut.SBQQ__Opportunity2__r.pricebook2id;
            currcode    = qut.Currency__c;
            conversionRate = 1;
            objQuote = qut;
        }
        if(pricebookid!=null ){
            prodids  =  getProductRelatedToPB(pricebookid,currcode);
        } 
        String queryQL = 'SELECT Id, SBQQ__Quote__c,SBQQ__Product__r.Name,SBQQ__Product__r.ProductCode,SBQQ__ProductCode__c,SBQQ__Product__r.Family, SBQQ__ListPrice__c,Currency__c FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c = \'' + quoteId + '\'';
        queryQL = queryQL +' AND SBQQ__Product__c IN'+ inClausify(prodids);
        //queryQL = queryQL +' AND SBQQ__Quote__r.SBQQ__PriceBook__c IN'+ inClausify(pricebookEntryId);
        QLList = Database.query(queryQL);
        if(QLList != null && QLList.size() > 0){
            for(SBQQ__QuoteLine__c objProduct : QLList){
                PBUnitPrice = mapProductUnitPrice.get(objProduct.SBQQ__Product__c);
                favWrapperList.add(new addProducts(objProduct.SBQQ__Product__r.Name, objProduct.SBQQ__ProductCode__c, objProduct.id, String.valueOf(PBUnitPrice),currcode,PBUnitPrice,objProduct.SBQQ__Quote__c));//objProduct.SBQQ__ListPrice__c*conversionRate
                //objProduct.SBQQ__ListPrice__c*conversionRate
            }
        }
        if(favWrapperList != null && favWrapperList.size() > 0){
            return favWrapperList;
        }
        return new List<addProducts>();
    }//End of method

    @AuraEnabled
    public static Map<Id, List<addProducts>> getAllProductsList(List<String> lstquoteId,String targetQuoteId) {
        Map<Id, List<addProducts>> resultMap = new Map<Id, List<addProducts>>();
        List<addProducts> favWrapperList = new List<addProducts>();
        List<SBQQ__QuoteLine__c> QLList = new List<SBQQ__QuoteLine__c>();
        set<Id> quoteIds = new set<Id>();
        Id pricebookid                              = null;
        Set<Id> prodids                             = new Set<Id>();
        String currcode                             = null;
        Decimal conversionRate = null;
        Decimal PBUnitPrice  = null;
        SBQQ__Quote__c objQuote= new SBQQ__Quote__c();
        for(SBQQ__Quote__c qut:[SELECT id,SBQQ__PriceBook__c,Currency__c,SBQQ__Opportunity2__r.pricebook2id from SBQQ__Quote__c WHERE id =:targetQuoteId]){
            pricebookid =   qut.SBQQ__PriceBook__c!=null?qut.SBQQ__PriceBook__c:qut.SBQQ__Opportunity2__r.pricebook2id;
            currcode    = qut.Currency__c;
            conversionRate = 1;
            objQuote = qut;
        }
        if(pricebookid!=null ){
            prodids  =  getProductRelatedToPB(pricebookid,currcode);
        } 
        String queryQL = 'SELECT Id, SBQQ__Quote__c,SBQQ__Product__r.Name,SBQQ__Product__r.ProductCode,SBQQ__ProductCode__c,SBQQ__Product__r.Family, SBQQ__ListPrice__c,Currency__c FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c in: lstquoteId';
        queryQL = queryQL +' AND SBQQ__Product__c IN'+ inClausify(prodids);
        //queryQL = queryQL +' AND SBQQ__Quote__r.SBQQ__PriceBook__c IN'+ inClausify(pricebookEntryId);
        QLList = Database.query(queryQL);
        if(QLList != null && QLList.size() > 0){
            for(SBQQ__QuoteLine__c objProduct : QLList){
                PBUnitPrice = mapProductUnitPrice.get(objProduct.SBQQ__Product__c);
                if(resultMap.containsKey(objProduct.SBQQ__Quote__c)){
                    resultMap.get(objProduct.SBQQ__Quote__c).add(new addProducts(objProduct.SBQQ__Product__r.Name, objProduct.SBQQ__ProductCode__c, objProduct.id, String.valueOf(PBUnitPrice),currcode,PBUnitPrice, objProduct.SBQQ__Quote__c));
                }else{
                    resultMap.put(objProduct.SBQQ__Quote__c, new List<addProducts>{new addProducts(objProduct.SBQQ__Product__r.Name, objProduct.SBQQ__ProductCode__c, objProduct.id, String.valueOf(PBUnitPrice),currcode,PBUnitPrice, objProduct.SBQQ__Quote__c)});
                }
            }
        }
        if(!resultMap.keySet().isEmpty()){
            return resultMap;
        }
        return new Map<Id, List<addProducts>>();
    }

    public Static String inClausify(Set<Id> ids) {
        String inClause = String.format( '(\'\'{0}\'\')',
                                        new List<String> { String.join( new List<Id>(ids) , '\',\'') });
        return inClause;
    }//End of method

    @AuraEnabled
    public static String getUserDetails() {
        return UserInfo.getUserId();
    }//End of method

    @AuraEnabled
    public static String showValidationError(String sourceUserId, String favName, Boolean isAllowGlobal, String quoteId){
        String strError = '';
        String strSameQuoteError = '';
        String strNoError = '';
        List<Favorites__c> objFav = [SELECT Name, Global_Favorite__c, Original_Quote__c, User__c FROM Favorites__c WHERE Global_Favorite__c =: isAllowGlobal AND Name =: favName];
        List<Favorites__c> objProductGroup = [SELECT Name, Global_Favorite__c, Original_Quote__c, User__c FROM Favorites__c WHERE Original_Quote__c =: quoteId];

        if(!objFav.isEmpty()){
            if((!isAllowGlobal && objFav[0].User__c == sourceUserId && !objFav[0].Global_Favorite__c) || (isAllowGlobal && objFav[0].Global_Favorite__c)){
                strError = 'Error';
                return strError;
            }
        }
        if(!objProductGroup.isEmpty()){
            if(objProductGroup[0].Original_Quote__c == quoteId){
                strSameQuoteError = 'quoteError';
                return strSameQuoteError;
            }
        }
        return strNoError;
    }//End of method

    /**
        * @description : This method used to populate product group category dynamically while saving product group
    
    @AuraEnabled
    public static List<String> getFavoriteCategory(String getquoteId){
        Set<String> setOfFavoriteCategory = new Set<String>();
        List<String> setFavoriteCategorylist = new List<String>();
        List<String> strCategorylist = new List<String>();
        Id pricebookid                              = null;
        Set<Id> prodids                             = new Set<Id>();
        String currcode                             = null;
        for(SBQQ__Quote__c qut:[SELECT id,SBQQ__PriceBook__c,currencyisocode,SBQQ__Opportunity2__r.pricebook2id from SBQQ__Quote__c WHERE id =:getquoteId]){
            pricebookid =   qut.SBQQ__PriceBook__c!=null?qut.SBQQ__PriceBook__c:qut.SBQQ__Opportunity2__r.pricebook2id;
            currcode    = qut.currencyisocode;
        }
        if(pricebookid!=null ){
            prodids  =  getProductRelatedToPB(pricebookid,currcode);
        }
        for(SBQQ__QuoteLine__c quoteline : [Select SBQQ__Product__c,SBQQ__Product__r.Favorite_Category__c FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =: getquoteId AND SBQQ__Product__c IN :prodids]){
            strCategorylist.add(quoteline.SBQQ__Product__r.Favorite_Category__c);
        }
        for(String strFavCategory : strCategorylist){
            List<String> storeListOfCat = strFavCategory.split(';');
            setOfFavoriteCategory.addAll(storeListOfCat);
        }
        setFavoriteCategorylist.addAll(setOfFavoriteCategory);
        return setFavoriteCategorylist;
    }//End of method
    **/
    @AuraEnabled
    public static string getAccount(String getquoteId){
        List<SBQQ__Quote__c> quoteList = new List<SBQQ__Quote__c>();
        String strAccount;
        String query = 'Select Id,SBQQ__Account__c from SBQQ__Quote__c where Id =: getquoteId';
        quoteList = Database.query(query);
        for(SBQQ__Quote__c objQL : quoteList){
            strAccount = objQL.SBQQ__Account__c;
        }
        return strAccount;
    }//End of method

    /**
        * @description : This method creates QuoteLine when product group is selected
        **/
    @AuraEnabled
        public static void createQuoteLines(String quoteIdn, String originalQuoteId, String quoteGroupId, String opportunityId) {
            List<SBQQ__QuoteLine__c> quotelineItems = [SELECT Id, SBQQ__Product__c,SBQQ__Quantity__c, SBQQ__ProductCode__c, SBQQ__AdditionalDiscount__c, SBQQ__Discount__c, SBQQ__EndDate__c FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =: quoteIdn];
            List<SBQQ__QuoteLine__c> newLineItems = new List<SBQQ__QuoteLine__c>();
            if(quotelineItems != null && quotelineItems.size() > 0){
                for(SBQQ__QuoteLine__c items : quotelineItems){
                    SBQQ__QuoteLine__c ObjNewQuoteLine = new SBQQ__QuoteLine__c();
                    ObjNewQuoteLine.SBQQ__Quote__c = originalQuoteId;
                    ObjNewQuoteLine.SBQQ__Product__c = items.SBQQ__Product__c;
                   // ObjNewQuoteLine.Product_Code__c = items.Product_Code__c;
                    ObjNewQuoteLine.SBQQ__Quantity__c = items.SBQQ__Quantity__c;
                    if(quoteGroupId != null && quoteGroupId != ''){
                        ObjNewQuoteLine.SBQQ__Group__c = quoteGroupId;
                    }
                    newLineItems.add(ObjNewQuoteLine);
                }
            }
            if(newLineItems != null && newLineItems.size() > 0 ){
                insert newLineItems;
                PageReference resPg = Page.SBQQ__SB;
                resPg.getParameters().put('scontrolCaching','1');
                resPg.getParameters().put('id',originalQuoteId);
                resPg.setRedirect(true);
            }
        }//End of method

    /**
        * @description : This method is used to save product group
        **/
    @AuraEnabled
    public static String  saveQuoteLines(String favStrobj,String qid,String grpId,String prodSearchData) {
        String strMsg                                   = 'success';
        List<addFavourite> favouriteList                =  ( List < addFavourite >)JSON.deSerialize( favStrobj, List < addFavourite >.class );
        List<SBQQ__QuoteLine__c>  newQuoteLines         = new List<SBQQ__QuoteLine__c>();
        Set<Id> qliIds                                  = new Set<Id>();
        Id quoteId                                      = qid;
        List<selectedProduct> selectedProd                =  ( List < selectedProduct >)JSON.deSerialize( prodSearchData, List < selectedProduct >.class );
        SBQQ__Quote__c Quote                            = new SBQQ__Quote__c();
        Id favId ;
        Id idSourceQuote ;
        Map<Id,Id> mapChildToParent = new Map<Id,Id>();
        for(addFavourite favWrapObj : favouriteList){
            if(favWrapObj.isSelected ==  true){
                favId = favWrapObj.uniqueKey.split('-')[1];
            }
        }
        if(qid != null){
            Quote  =  [SELECT id ,SBQQ__LineItemCount__c,SBQQ__startDate__c,SBQQ__EndDate__c,SBQQ__LineItemsGrouped__c FROM SBQQ__Quote__c WHERE id=:qid];
        }
        if(favId!=null){
            Favorites__c objFav = [SELECT ID,Original_Quote__c From Favorites__c WHERE Id =: favId][0];
            if(objFav.Original_Quote__c!=null){
                idSourceQuote =    objFav.Original_Quote__c;
            }
            Decimal intQLNumber = Quote.SBQQ__LineItemCount__c +1;
           // Integer intLineIndex = 0;
            //Map<Id,Id> mapParentIdToIndex = new Map<Id,Id>();
            
            for(SBQQ__QuoteLine__C objQLI : [SELECT Id,SBQQ__ProductOption__c,SBQQ__RequiredBy__c,SBQQ__Bundle__c,SBQQ__DynamicOptionId__c,SBQQ__OptionLevel__c,SBQQ__OptionType__c,SBQQ__Quote__r.SBQQ__StartDate__c,SBQQ__Product__c,SBQQ__Quantity__c,SBQQ__StartDate__c,SBQQ__EndDate__c FROM SBQQ__QuoteLine__c WHERE SBQQ__QUote__c =: idSourceQuote order by sbqq__number__c]){
                SBQQ__QuoteLine__C objNewQLI = new SBQQ__QuoteLine__C();
                objNewQLI.SBQQ__Quote__C = quoteId;
                objNewQLI.SBQQ__Product__c = objQLI.SBQQ__Product__c;
                objNewQLI.SBQQ__Quantity__c = objQLI.SBQQ__Quantity__c;
                objNewQLI.SBQQ__StartDate__c = Quote.SBQQ__StartDate__c;
                objNewQLI.SBQQ__OptionLevel__c = objQLI.SBQQ__OptionLevel__c;
                objNewQLI.SBQQ__OptionType__c = objQLI.SBQQ__OptionType__c;
                objNewQLI.SBQQ__DynamicOptionId__c = objQLI.SBQQ__DynamicOptionId__c;
                objNewQLI.SBQQ__Bundle__c = objQLI.SBQQ__Bundle__c;//SBQQ__RequiredBy__c
                objNewQLI.SBQQ__ProductOption__c = objQLI.SBQQ__ProductOption__c;
                objNewQLI.Source_Favorite_Line__c = objQLI.id;
                objNewQLI.SBQQ__Number__c = intQLNumber;
                if(objQLI.SBQQ__RequiredBy__c == null){
                   // mapParentIdToIndex.put(objQLI.id,intLineIndex);
                }else{
                    mapChildToParent.put(objQLI.id,objQLI.SBQQ__RequiredBy__c);
                }
                intQLNumber =  intQLNumber +1;
                //intLineIndex = intLineIndex
                if(objQLI.SBQQ__EndDate__c != null){
                    Integer daysBtw = objQLI.SBQQ__StartDate__c.daysBetween(objQLI.SBQQ__EndDate__c);
                    objNewQLI.SBQQ__EndDate__c = Quote.SBQQ__StartDate__c.addDays(daysBtw);     
                }
                newQuoteLines.add(objNewQLI);
            }
            
        }
        
        /*        
        for(addFavourite favWrapObj : favouriteList){
            if(favWrapObj.isSelected ==  true){
                if(!favWrapObj.wrapProdList.isEmpty()){
                        for(addProducts prod: favWrapObj.wrapProdList){
                            if(prod.isProdSelected == true){
                                qliIds.add(prod.quoteLineId);
                            }
                        }
                           
                }// End of FOR loop of products

            }
            if( favWrapObj.favouriteId == null  && favWrapObj.isSelectedForCategory == true ){
                SBQQ__QuoteLine__c newLine = new SBQQ__QuoteLine__c();
                newLine.SBQQ__Quote__c     = Quote.Id;
                newLine.SBQQ__Group__c     = grpId;
                newLine.SBQQ__Product__c   = favWrapObj.Id;
                newLine.SBQQ__Quantity__c  = 1;
                newLine.SBQQ__ListPrice__c = favWrapObj.listPrice.contains(',')?Decimal.valueOf(favWrapObj.listPrice.remove(',')):Decimal.valueOf(favWrapObj.listPrice.remove(','));
                newLine.SBQQ__NetPrice__c  = newLine.SBQQ__ListPrice__c;
                //newLine.Currency__c    = Quote.Currency__c;
                newQuoteLines.add(newLine);
            }
        }//End of FOR loop -addFavourite*/
       
        Savepoint sp = Database.setSavepoint();
        try{
            if(!newQuoteLines.isEmpty()){
                insert newQuoteLines;  
                Map<Id,Id> mapSourceToTargetLines = new Map<Id,Id>();
                for(SBQQ__QuoteLine__C objQLI : newQuoteLines){
                    mapSourceToTargetLines.put(objQLI.Source_Favorite_Line__c,objQLI.id);
                }
                if(!mapSourceToTargetLines.isEmpty()){
                    List<SBQQ__QuoteLine__c> listQLToUpdate = new List<SBQQ__QuoteLine__c>();
                    for(SBQQ__QuoteLine__C objQLI : newQuoteLines){
                        if(objQLI.SBQQ__Bundle__c == false && mapChildToParent!=null && mapChildToParent.containsKey(objQLI.Source_Favorite_Line__c) && mapSourceToTargetLines!=null && mapSourceToTargetLines.containsKey(mapChildToParent.get(objQLI.Source_Favorite_Line__c))){
                            objQLI.SBQQ__RequiredBy__C= mapSourceToTargetLines.get(mapChildToParent.get(objQLI.Source_Favorite_Line__c));
                            listQLToUpdate.add(objQLI);
                        }
                    }
                    if(!listQLToUpdate.isEmpty()){
                        update listQLToUpdate;
                    }
                }      
            }
            /*if((!qliIds.isEmpty() || !newQuoteLines.isEmpty() || !selectedProd.isEmpty()) && (Quote.SBQQ__LineItemsGrouped__c== false || grpId!= null)){
                for( SBQQ__QuoteLine__c qli:[SELECT id,SBQQ__Product__c,SBQQ__ProductName__c,SBQQ__Quantity__c,SBQQ__Quote__c,SBQQ__Group__c,SBQQ__Group__r.name,SBQQ__Quote__r.SBQQ__LineItemsGrouped__c,SBQQ__Group__r.SBQQ__Number__c    FROM SBQQ__QuoteLine__c WHERE ID IN: qliIds]){
                    SBQQ__QuoteLine__c newLine = qli.clone();
                    newLine.SBQQ__Quote__c     = Quote.Id;
                    newLine.SBQQ__Group__c     = grpId;
                    newLine.id                 = null;
                    //newLine.Currency__c    = Quote.Currency__c;
                    newQuoteLines.add(newLine);
                   
                }
                if(!selectedProd.isEmpty() && (Quote.SBQQ__LineItemsGrouped__c== false || grpId!= null) ){
                    for(selectedProduct selProd:selectedProd  ){
                            SBQQ__QuoteLine__c newLine = new SBQQ__QuoteLine__c();
                            newLine.SBQQ__Quote__c     = Quote.Id;
                            newLine.SBQQ__Group__c     = grpId;
                            newLine.SBQQ__Product__c   = selProd.Product2Id;
                            newLine.SBQQ__Quantity__c  = 1;
                            newLine.SBQQ__ListPrice__c = selProd.UnitPrice;
                            newLine.SBQQ__NetPrice__c  = newLine.SBQQ__ListPrice__c;
                            //newLine.Currency__c    = Quote.Currency__c;
                            newQuoteLines.add(newLine);
                        }
                }

                //Insert Quote Line
                if(!newQuoteLines.isEmpty()){
                    INSERT newQuoteLines;
                }

                
            }*/
        }catch(DmlException dmlEx){
            Database.rollback(sp);
            strMsg = dmlEx.getDmlMessage(0);
        }
        catch(Exception ex){
            Database.rollback(sp);
            strMsg = ex.getMessage();

        }
        return strMsg;
    }//End of method -saveQuoteLines

    // - For Product Categories Tab
/*  @AuraEnabled
    public static List<addFavourite> getProductForCategory(String category, String subcategory, String quoteRecId){
        Id pricebookid = null;
        Set<Id> prodids = new Set<Id>();
        String currcode = null;
        Boolean isSelectedForCategory = false;
        String prodCat;
        String prodSubCat;
        List<addFavourite> prodCategoryData = new List<addFavourite>();
        for(SBQQ__Quote__c qutForCat:[SELECT id,SBQQ__PriceBook__c,currencyisocode,SBQQ__Opportunity2__r.pricebook2id
                                FROM SBQQ__Quote__c WHERE id =:quoteRecId]){
            pricebookid = qutForCat.SBQQ__PriceBook__c!=null?qutForCat.SBQQ__PriceBook__c:qutForCat.SBQQ__Opportunity2__r.pricebook2id;
            currcode    = qutForCat.currencyisocode;
        }
        if(pricebookid!=null ){
            prodids  =  getProductRelatedToPBForCategory(pricebookid,currcode,category,subcategory);
        }
        if(prodids!=null){
            for(Pricebookentry pbeCategory :[SELECT product2id,Product2.ProductCode, Product2.Name,Pricebook2id,UnitPrice,CurrencyIsoCode,Product2.Favorite_Category_Type__c FROM Pricebookentry where Pricebook2id=:pricebookid AND isactive=true AND currencyisocode = :currCode AND product2id =: prodids  ORDER BY Product2.Name]){

                prodCategoryData.add(new addFavourite(null,null,null,null,null,null,null,null,
                category,subcategory,Integer.valueOf(pbeCategory.Product2.ProductCode), pbeCategory.Product2.Name,String.valueOf(pbeCategory.UnitPrice),pbeCategory.CurrencyIsoCode,isSelectedForCategory,pbeCategory.product2id,pbeCategory.UnitPrice));
            }
        }

        if(!prodCategoryData.isEmpty()){
            return prodCategoryData;
        }else{
            return null;
        }
    }

    public static Set<Id> getProductRelatedToPBForCategory(id pbId,String currCode,String category, String subcategory){
        String prodCat;
        String prodSubCat;
        Set<Id>  prodIds = new  Set<Id>();
        for(Pricebookentry pbe :[SELECT id,isactive,product2id,Product2.Favorite_Category__c,Product2.Favorite_Category_Type__c,Product2.ProductCode, Product2.Name,UnitPrice FROM Pricebookentry WHERE
                                Pricebook2id=:pbid AND  isactive=true AND currencyisocode = :currCode
                                AND Product2.Favorite_Category__c includes (:category) AND Product2.Favorite_Category_Type__c includes (:subcategory) AND Product2.sbqq__hidden__c = false AND Product2.sbqq__component__c = false ]){
                prodIds.add(pbe.product2id);
        }
        return prodIds;
    }//End of method getProductRelatedToPB
*/
    // wrapper class with @AuraEnabled and {get;set;} properties
    public class addFavourite{
        @AuraEnabled
        public Boolean isGlobal{get;set;}
        @AuraEnabled
        public String favouriteName{get;set;}
        public String favouriteId{get;set;}
        @AuraEnabled
        public String favDescription{get;set;}
        @AuraEnabled
        public String quoteId{get;set;}
        @AuraEnabled
        public String favoriteCategory{get;set;}
        @AuraEnabled
        public String GroupnameCategory{get;set;}
        @AuraEnabled
        public Boolean isSelected = false;
        @AuraEnabled
        public Boolean isExpanded;
        @AuraEnabled
        public String favTypeName;
        @AuraEnabled
        public String productGroupCategory;
        @AuraEnabled
        public String productGroupSubCategory;
        @AuraEnabled
        public String uniqueKey;
        @AuraEnabled public List<addProducts> wrapProdList;

        /*Product Categories*/
        @AuraEnabled
        public String productName{get;set;}
        @AuraEnabled
        public Integer productCode{get;set;}
        @AuraEnabled
        public String listPrice;
        @AuraEnabled
        public String curCode;
        @AuraEnabled
        public Boolean isSelectedForCategory = false;
        @AuraEnabled
        public String Id;
        @AuraEnabled
        public Decimal decListPrice;
        

        /*Product Search*/
        @AuraEnabled
        public String Product2Name;
        @AuraEnabled
        public String Product2ProductCode;
        @AuraEnabled
        public String UnitPrice;
        @AuraEnabled
        public String Product2Description;
        @AuraEnabled
        public Id Product2Id;

        public addFavourite(){}
        public addFavourite(String uniqueKey,Boolean isGlobal , String favouriteName, String favDescription, String quoteId, Boolean isSelected, Boolean isExpanded,id fid,
        Integer productCode, String productName, String listPrice,String curCode,Boolean isSelectedForCategory,String Id,Decimal decListPrice){
            this.uniqueKey          = uniqueKey;
            this.isGlobal           = isGlobal;
            this.favouriteName      = favouriteName;
            this.favDescription     = favDescription;
            this.quoteId            = quoteId;
            this.isSelected         = isSelected;
            this.isExpanded         = isExpanded;
            this.favouriteId        = fid;
            this.favTypeName        = null;
            this.wrapProdList       = new List<addProducts>();

            /*Product Categories*/
            this.productName        = productName;
            this.productCode        = productCode;
            this.listPrice        = listPrice;
            this.curCode        = curCode;
            this.isSelectedForCategory        = isSelectedForCategory;
            this.Id        = Id;
            this.decListPrice = decListPrice;

            /*Product Search*/
            this.Product2Name        = Product2Name;
            this.Product2ProductCode        = Product2ProductCode;
            this.UnitPrice        = UnitPrice;
            this.Product2Description        = Product2Description;
            this.Product2Id        = Product2Id;

        }
    }

    // wrapper class with @AuraEnabled and {get;set;} properties
    public class addProducts{
        @AuraEnabled
        public String productName{get;set;}
        @AuraEnabled
        public String productCode{get;set;}
        @AuraEnabled
        public String quoteLineId{get;set;}
        @AuraEnabled
        public Boolean isProdSelected;
        @AuraEnabled
        public String uniqueKey;
        @AuraEnabled
        public String index;
        @AuraEnabled
        public String listPrice;
        @AuraEnabled
        public String curCode;
        @AuraEnabled
        public Decimal decmlListPrice;
        @AuraEnabled
        public String sbQQ_Quote;
        public addProducts(){}
        public addProducts(String productName, String productCode,Id qlid, String listPrice,String curCode,Decimal decmlListPrice,String sbQQ_Quote){
            this.productName        = productName;
            this.productCode        = productCode;
            this.isProdSelected     = true;
            this.quoteLineId        = qlid;
            this.listPrice        = listPrice;
            this.curCode        = curCode;
            this.decmlListPrice = decmlListPrice;
            this.sbQQ_Quote = sbQQ_Quote;
        }
    }

    // wrapper class with @AuraEnabled and {get;set;} properties
    public class favoriteCategory{

        @AuraEnabled
        public String id{get;set;}
        @AuraEnabled
        public String label{get;set;}

        public favoriteCategory(String id, String label){
            this.id     = id;
            this.label  = label;
        }
    }

    public static Set<Id> getProductRelatedToPB(id pbId,String currCode){
        Set<Id>  prodIds = new  Set<Id>();
       // Map<Id,Decimal> mapProductUnitPrice = new Map<Id,Decimal>();
        for(Pricebookentry pbe :[SELECT id,isactive,product2id,UnitPrice FROM Pricebookentry WHERE Pricebook2id=:pbid AND  isactive=true AND Product2.sbqq__hidden__c = false AND Product2.sbqq__component__c = false ]){
            prodIds.add(pbe.product2id);
            mapProductUnitPrice.put(pbe.product2id, pbe.UnitPrice);
        }
        return prodIds;
    }//End of method getProductRelatedToPB

      // wrapper class with @AuraEnabled and {get;set;} properties
    public class QuoteDetails{

        @AuraEnabled
        public String groupId{get;set;}
        @AuraEnabled
        public String userId{get;set;}
        @AuraEnabled
        public String groupQuoteId{get;set;}

        public QuoteDetails(String groupId, String userId, String groupQuoteId){
            this.groupId = groupId;
            this.userId  = userId;
            this.groupQuoteId = groupQuoteId;
        }
    }

    // wrapper class with @AuraEnabled and {get;set;} properties
    public class UserDetails{

        @AuraEnabled
        public String userId{get;set;}
        @AuraEnabled
        public Boolean isAllowGlobalUser{get;set;}
        @AuraEnabled
        public Boolean isAllowGlobalAccount{get;set;}

        public UserDetails(String userId, Boolean isAllowGlobalUser,Boolean isAllowGlobalAccount){
            this.userId  = userId;
            this.isAllowGlobalUser = isAllowGlobalUser;
            this.isAllowGlobalAccount = isAllowGlobalAccount;
        }
    }
    public class selectedProduct{
        @AuraEnabled 
        public String Id;
        @AuraEnabled 
        public String Product2Id;
        @AuraEnabled
        public Decimal UnitPrice;
        @AuraEnabled 
        public String Pricebook2Id ;
        @AuraEnabled 
        public String CurrencyIsoCode;
        @AuraEnabled 
        public Product2 Product2;
        @AuraEnabled 
        public String Product2Name;
        @AuraEnabled 
        public String Product2Description;
        @AuraEnabled 
        public String Product2ProductCode;
    }

    // - Access MetaData records.
   /* @AuraEnabled
    public static List<Product_Finder__mdt> getFinderRecords(){
        try {
            List<Product_Finder__mdt> listFinder = [SELECT Id,Finder_Category__c,Finder_SubCategory__c,Sequence_Number__c from Product_Finder__mdt ORDER BY Sequence_Number__c ];
            return listFinder;

        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    // - Methods for Product Search
    @AuraEnabled(cacheable=false)
    public static List<PricebookEntry> search(String searchTerm,String quoteRecId) {
        String currcode = null;
        List<SBQQ__Quote__c> quoList = new List<SBQQ__Quote__c>();
        quoList=[Select SBQQ__PriceBook__c,SBQQ__Opportunity2__r.pricebook2id,currencyisocode from SBQQ__Quote__c Where Id=:quoteRecId];
        Id pricebookId=quoList[0].SBQQ__PriceBook__c!=null?quoList[0].SBQQ__PriceBook__c:quoList[0].SBQQ__Opportunity2__r.pricebook2id;
        currcode = quoList[0].currencyisocode;

        String myQuery = null;
        myQuery = 'Select Id, Product2.Name,ProductCode,Product2.Description,UnitPrice,CurrencyIsoCode from PricebookEntry WHERE Pricebook2Id=:pricebookId AND IsActive=true AND  Product2.sbqq__hidden__c = false AND Product2.sbqq__component__c = false and CurrencyIsoCode =:currcode';
        
        List<PricebookEntry> lookUpList = database.query(myQuery);
        List<PricebookEntry> listToreturn = new List<PricebookEntry>();
        Integer i=0;
        if(!lookUpList.isEmpty()){
            for(PricebookEntry pbe : lookUpList){
                if(i < 5 && ((pbe.Product2.Description!=null && pbe.Product2.Description.containsIgnoreCase(searchTerm)) || pbe.Product2.Name.containsIgnoreCase(searchTerm) || pbe.ProductCode.contains(searchTerm))){
                    listToreturn.add(pbe);
                    i++;
                }else if(i==5){
                    break;
                }
            }
        }
        return listToreturn;
    }*/
    @AuraEnabled(cacheable=false)
    public static PricebookEntry getProduct(String prodId){
        List<PricebookEntry> prod = new List<PricebookEntry>();
        prod = [Select Id,Product2Id, Product2.Name,Product2.ProductCode,Product2.Description,UnitPrice from PricebookEntry WHERE Id=:prodId];  
        return prod[0];
    }
    @AuraEnabled(cacheable=false)
    public static List<PricebookEntry> getProductList(String searchTerm,String quoteRecId){
        Id pricebookid = null;
        String currcode = null;
        List<PricebookEntry> prodList = new List<PricebookEntry>();
        for(SBQQ__Quote__c qutForCat:[SELECT id,SBQQ__PriceBook__c,Currency__c,SBQQ__Opportunity2__r.pricebook2id
                                FROM SBQQ__Quote__c WHERE id =:quoteRecId]){
            pricebookid = qutForCat.SBQQ__PriceBook__c!=null?qutForCat.SBQQ__PriceBook__c:qutForCat.SBQQ__Opportunity2__r.pricebook2id;
            currcode    = qutForCat.Currency__c;
        }

        String DescriptionSe = '%'+searchTerm+'%';
        for(PricebookEntry pbe : [Select Id, Product2.Name,Product2.ProductCode,Product2.Description,UnitPrice,Pricebook2id from PricebookEntry WHERE IsActive=true AND Product2.sbqq__hidden__c = false
        AND Product2.sbqq__component__c = false AND Pricebook2id =: pricebookid AND  ( Product2.Description like :DescriptionSe OR Product2.Name like :DescriptionSe OR Product2.Productcode like :DescriptionSe)]){
                prodList.add(pbe);

        }
        return prodList;
    }
}