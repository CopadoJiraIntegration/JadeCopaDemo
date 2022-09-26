/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 11-24-2021
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class renewalScenariosController {

    @AuraEnabled
    public static List<SelectedBundleData> getProductsForSelectedBundle(String installBase,String type,String quoteId){
        try {
            List<SelectedBundleData> wrapperDataLst = new List<SelectedBundleData>();
            List<String> originalQuoteId = new  List<String>();
            List<Renewal_Scenario__c > lstRenewData = new List<Renewal_Scenario__c >();
            List<SBQQ__QuoteLine__c > lstQuoteLine = new List<SBQQ__QuoteLine__c >();
            List<SBQQ__Quote__c > listQuotes = new List<SBQQ__Quote__c >([SELECT Id,SBQQ__PriceBook__c,price_list__c  FROM SBQQ__Quote__c WHERE Id=:quoteId LIMIT 1]);
            if(installBase.contains('Suite')){
                type = type == 'Upgrade' ? 'Suites Upgrade' : 'Suites Like to Like';
            }else{
                type = type == 'Upgrade' ? 'Bundles Upgrade' : 'Bundles Like to Like';
            }
            lstRenewData = [SELECT Id,Type__c ,Installed_Base_Name__c,Original_Quote__c , Name_Renewed_To__c,Description__c,InstallBaseZscalerProductFamily__c FROM Renewal_Scenario__c WHERE Installed_Base_Name__c=:installBase AND Type__c =:type AND Active__c=TRUE AND price_list__c  =: listQuotes[0].price_list__c ];
            if(!lstRenewData.isEmpty()){
                for (Renewal_Scenario__c eachRenewData : lstRenewData) {
                    originalQuoteId.add(eachRenewData.Original_Quote__c);
                }
                lstQuoteLine = [SELECT Id,SBQQ__Quote__c,SBQQ__ProductName__c,SBQQ__ProductCode__c,SBQQ__RequiredBy__c FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c IN : originalQuoteId];
            }                
            for (Renewal_Scenario__c eachRenewData : lstRenewData) {
                List<SBQQ__QuoteLine__c> qliList = new List<SBQQ__QuoteLine__c>();
                for (SBQQ__QuoteLine__c eachQuoteLine : lstQuoteLine) {
                    if(eachRenewData.Original_Quote__c == eachQuoteLine.SBQQ__Quote__c){
                        qliList.add(eachQuoteLine);
                    }
                }
                wrapperDataLst.add(new SelectedBundleData(eachRenewData.Id,eachRenewData.Original_Quote__c,eachRenewData.Name_Renewed_To__c,eachRenewData.Description__c,eachRenewData.Installed_Base_Name__c,qliList,eachRenewData.InstallBaseZscalerProductFamily__c));
            }
            return wrapperDataLst;
        }catch (Exception e) {system.debug(e);throw new AuraHandledException(e.getMessage());}
    }    

    @AuraEnabled
    public static QuoteLineWrapper getBundlesValuesForPicklist(String quoteId){
        try {
            Set<Id> renewedSubscriptionFromQL = new Set<Id>();
            SBQQ__Quote__c quoteObj =[SELECT Id,Name, SBQQ__Opportunity2__r.SBQQ__RenewedContract__c FROM SBQQ__Quote__c WHERE id=:quoteId];
            List<SBQQ__QuoteLine__c> qliList = [SELECT Id, SBQQ__Product__c,SBQQ__RenewedSubscription__c,SBQQ__UpgradedSubscription__c,SBQQ__RequiredBy__c,SBQQ__Quantity__c, SBQQ__ProductCode__c, SBQQ__AdditionalDiscount__c, SBQQ__Discount__c, SBQQ__EndDate__c,SBQQ__RenewedSubscription__r.SBQQ__Product__r.Name FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =: quoteId];
            for(SBQQ__QuoteLine__c qliObj:qliList){
                if(qliObj.SBQQ__RenewedSubscription__c!=null){
                    renewedSubscriptionFromQL.add(qliObj.SBQQ__RenewedSubscription__c);
                }else if(qliObj.SBQQ__UpgradedSubscription__c!=null){//added to enable Upgrade path for Amendment
                    renewedSubscriptionFromQL.add(qliObj.SBQQ__UpgradedSubscription__c);
                }                
            }
            List<SBQQ__Subscription__c> picklistValues = [SELECT id, SBQQ__Product__r.Name, SBQQ__Product__r.ProductCode,SBQQ__Contract__r.ContractNumber FROM SBQQ__Subscription__c WHERE SBQQ__TerminatedDate__c = null AND SBQQ__Product__r.Available_for_Upgrade_Utility__c = true AND Id IN:renewedSubscriptionFromQL];
            QuoteLineWrapper qliWrap = new QuoteLineWrapper(quoteObj,picklistValues);  
            return qliWrap;
        }catch (Exception e) {system.debug(e);throw new AuraHandledException(e.getMessage());}
    }

    @AuraEnabled
    public static String saveRenewalLinesToQuote(String destQuoteId, String selectedRowsForRenewal, List<String> selectedInstallBase){
        String strMsg  = 'success';
        try {
            Map <String,String> originalQuoteVsSubId = new Map <String,String>(); 
            Map <String,String> originalQuoteVsSelectedTab = new Map <String,String>(); 
            Map <String,Decimal> oldAddOnsVsQuantity = new Map <String,Decimal>(); 
            Map <String,Decimal> oldBundleVsQuantity = new Map <String,Decimal>(); 
            Map <String,String> newEditionVsOldBundle = new Map <String,String>(); 
            Map <String,String> oldBundleVSNewEdition = new Map <String,String>();
            Map <String,String> requiredByVsOldBundle = new Map <String,String>(); 
            Map <String,String> oldBundleVsRequiredBy = new Map <String,String>(); 
            Map <String,List<String>> requiredByVsOldAddOn = new Map <String,List<String>>(); 
            Map <String,List<String>> bundleVsAddOn = new Map <String,List<String>>(); 
            Map <String,String> requiredByVsNewEdition = new Map <String,String>(); 
            Map <String,String> requiredByVsNewEditionCode = new Map <String,String>(); 
            Map <String,String> installBaseVsOriginalQuote = new Map <String,String>(); 
            Map <String,String> newEditionVsRequiredBy = new Map <String,String>(); 
            Map <String,String> requiredByVsProductOption = new Map <String,String>(); 
            Map <String,String> reqdByOptionalSkuVsProdOpId = new Map <String,String>(); 
            Map <String,String> prodOptionVsFeature = new Map <String,String>(); 
            Map <String,String> productNameVsExcludeFromPlatform = new Map <String,String>(); 
            Map <String,String> prodNameVsProdId = new Map <String,String>(); 
            Map <String,String> originalQuoteIdVsEffDate = new Map <String,String>();
            Map <String,List<String>> requiredByVsNewAddOn = new Map <String,List<String>>(); 
            Map <String,List<String>> newEditionVsAddOn = new Map <String,List<String>>(); 
            Map <String,List<String>> remainingAddOnVsOriginalRequiredBy = new Map <String,List<String>>(); 
            Map<String,String> reqdByVsOptionalSKU = new Map <String,String>();
            Map<String,Decimal> requiredByVsMaxQlNumber = new Map <String,Decimal>();
            Map <String,String> oldPhantomVsSubscriptionId = new Map <String,String>(); 
            Map<Id,Id> mapChildToParent = new Map<Id,Id>();
            List<String> originalQuoteIds = new List<String>();
            List<String> lstOptionalSKU = new List<String>();
            List<String> lstRequiredByIds = new List<String>();
            List<String> lstNewRequiredByIds = new List<String>();
            List<String> lstRenewalTypes = new List<String>();
            List<String> lstAddOns = new List<String>();
            List<String> lstNewAddOns = new List<String>();
            List<String> lstRemainingAddons = new List<String>();
            List<String> oldAddOnsToZeroOut = new List<String>();
            List <String> oldBundleProducts= new List<String>();
            List <String> newEditionProducts= new List<String>();
            Map<String,String> mapOldSKUToNewSKUID = new Map<String,String>();
            Map<String,String> mapNewSKUToOldSKUName = new Map<String,String>();
            Map<String,String> mapOldSKUToNewSKUName = new Map<String,String>();
            List<Renewal_Scenario__c > lstSelectedRenewData = new List<Renewal_Scenario__c >();
            //List<SBQQ__QuoteLine__c> originalQliToUpdate = new List<SBQQ__QuoteLine__c>();
             List<SBQQ__QuoteLine__c> listQLToUpdate = new List<SBQQ__QuoteLine__c>();
             List<String> productfamily= new List<String>();
            SBQQ__Quote__c Quote = new SBQQ__Quote__c();
            if(destQuoteId!=null){
                Quote  =  [SELECT id ,SBQQ__LineItemCount__c,QuoteRenewalProductFamily__c,SBQQ__StartDate__c,SBQQ__EndDate__c,SBQQ__LineItemsGrouped__c,Quote_Renewal_Type__c,Opportunity_Record_Type__c,Price_List__c FROM SBQQ__Quote__c WHERE id=:destQuoteId];
            }
            for(Product_Upgrade_Mappings__c objPUM : [SELECT Id,Original_SKU__c,Original_SKU__r.name,Upgraded_SKU__c, Upgraded_SKU__r.name FROM Product_Upgrade_Mappings__c WHERE Price_List__c INCLUDES (:quote.Price_List__c) AND Original_SKU__c IN (SELECT SBQQ__Product__C FROM SBQQ__QuoteLine__C WHERE SBQQ__Quote__c=:destQuoteId )]){
                mapOldSKUToNewSKUID.put(objPUM.Original_SKU__r.name,objPUM.Upgraded_SKU__c);
                mapNewSKUToOldSKUName.put(objPUM.Upgraded_SKU__r.name,objPUM.Original_SKU__r.name);
                mapOldSKUToNewSKUName.put(objPUM.Original_SKU__r.name,objPUM.Upgraded_SKU__r.name);
            }
            List<RenewWrapper> renewedTableData = (List<RenewWrapper>)Json.deserialize(selectedRowsForRenewal,List<RenewWrapper>.class);
            Map<Id,SBQQ__QuoteLine__c> mapOldPhantomToQL = new Map<Id,SBQQ__QuoteLine__c>();
            for(SBQQ__QuoteLine__c qliObj: [SELECT Id, SBQQ__Product__c,SBQQ__RenewedSubscription__c,SBQQ__UpgradedSubscription__c,SBQQ__RequiredBy__c,SBQQ__Quantity__c, SBQQ__ProductCode__c, SBQQ__AdditionalDiscount__c, SBQQ__Discount__c, SBQQ__EndDate__c,SBQQ__RenewedSubscription__r.SBQQ__Product__r.Name,SBQQ__UpgradedSubscription__r.SBQQ__Product__r.Name,Platform_Subscription__c,Sum_of_Child_Original_MRR__c,Sum_of_Child_Original_PUPY__c, SBQQ__ProductOption__c,SBQQ__ProductOption__r.SBQQ__Feature__r.Name,SBQQ__Product__r.Name  FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =: destQuoteId AND Renewed_From_Bundle__c = false]){
                if(selectedInstallBase.contains(qliObj.SBQQ__RenewedSubscription__r.SBQQ__Product__r.Name) || selectedInstallBase.contains(qliObj.SBQQ__UpgradedSubscription__r.SBQQ__Product__r.Name)){
                    lstRequiredByIds.add(qliObj.SBQQ__RequiredBy__c);
                }
                if(selectedInstallBase.contains(qliObj.SBQQ__RenewedSubscription__r.SBQQ__Product__r.Name) || selectedInstallBase.contains(qliObj.SBQQ__UpgradedSubscription__r.SBQQ__Product__r.Name)){
                    lstRequiredByIds.add(qliObj.SBQQ__RequiredBy__c);
                }
                if(qliObj.SBQQ__RequiredBy__c == null){ // collectiong phantoms and thier renewal subscriptions
                    String strSubId = qliObj.SBQQ__RenewedSubscription__c!=null ? qliObj.SBQQ__RenewedSubscription__c : (qliObj.SBQQ__UpgradedSubscription__c!=null ? qliObj.SBQQ__UpgradedSubscription__c : null);
                    if(strSubId!=null){
                        oldPhantomVsSubscriptionId.put(qliObj.Id,qliObj.SBQQ__RenewedSubscription__c);
                        mapOldPhantomToQL.put(qliObj.SBQQ__RenewedSubscription__c,qliObj);
                    }                   
                }
                if(qliObj.SBQQ__RequiredBy__c!=null){
                    if(qliObj.SBQQ__ProductOption__r.SBQQ__Feature__r.Name == 'Platform - Bundles' || qliObj.SBQQ__ProductOption__r.SBQQ__Feature__r.Name == 'Suites'){
                        oldBundleVsQuantity.put(qliObj.SBQQ__Product__r.Name,qliObj.SBQQ__Quantity__c);
                        requiredByVsOldBundle.put(qliObj.SBQQ__RequiredBy__c,qliObj.SBQQ__Product__r.Name);
                        oldBundleVsRequiredBy.put(qliObj.SBQQ__Product__r.Name,qliObj.SBQQ__RequiredBy__c);
                }else{
                        oldAddOnsVsQuantity.put(qliObj.SBQQ__Product__r.Name,qliObj.SBQQ__Quantity__c);
                        lstAddOns.add(qliObj.SBQQ__Product__r.Name);
                        if(mapNewSKUToOldSKUName!=null && mapNewSKUToOldSKUName.size()>0 && mapNewSKUToOldSKUName.containskey(qliObj.SBQQ__Product__r.Name)){
                            lstAddOns.add(mapNewSKUToOldSKUName.get(qliObj.SBQQ__Product__r.Name));
                            oldAddOnsVsQuantity.put(mapNewSKUToOldSKUName.get(qliObj.SBQQ__Product__r.Name),qliObj.SBQQ__Quantity__c);
                }                                   
                        requiredByVsOldAddOn.put(qliObj.SBQQ__RequiredBy__c,lstAddOns);
            }
                }
                
            }            
            for(String reqId : lstRequiredByIds){
                if(requiredByVsOldBundle.containsKey(reqId)){
                    List<String> tempList = requiredByVsOldAddOn.containsKey(reqId) ? requiredByVsOldAddOn.get(reqId) : null;
                    bundleVsAddOn.put(requiredByVsOldBundle.get(reqId),tempList);
                }
            }
            for(RenewWrapper curRec: renewedTableData){
                originalQuoteIds.add(curRec.originalQuoteId);
                originalQuoteVsSubId.put(curRec.originalQuoteId,curRec.subscriptionId);
                originalQuoteVsSelectedTab.put(curRec.originalQuoteId,curRec.selectedTab);
                installBaseVsOriginalQuote.put(curRec.installBase,curRec.originalQuoteId);
                if(!String.isBlank(curRec.effectiveDate)){
                    originalQuoteIdVsEffDate.put(curRec.originalQuoteId, curRec.effectiveDate);
                }
                if(!lstRenewalTypes.contains(curRec.selectedTab)){
                    String strRenewalType = curRec.installBase.contains('Suite') ? (curRec.selectedTab == 'Upgrade' ? 'Suites Upgrade' : 'Suites Like to Like') : (curRec.selectedTab == 'Upgrade' ? 'Bundles Upgrade' : 'Bundles Like to Like');
                    lstRenewalTypes.add(strRenewalType);
                }
                if(!productfamily.contains(curRec.productFamily) && Quote.QuoteRenewalProductFamily__c != curRec.productFamily){
                    productfamily.add(curRec.productFamily);
                }
                
            }
            for(Renewal_Scenario__c renewalData: [SELECT Id,Type__c,Associated_Platform_Edition__c,Installed_Base_Name__c,Original_Quote__c , Name_Renewed_To__c,Description__c FROM Renewal_Scenario__c WHERE Installed_Base_Name__c IN :selectedInstallBase AND Type__c IN : lstRenewalTypes AND Original_Quote__c IN:originalQuoteIds AND Active__c=TRUE]){
                // - Map of new Edition and Old bundle  
                newEditionVsOldBundle.put(renewalData.Associated_Platform_Edition__c,renewalData.Installed_Base_Name__c);
                oldBundleVSNewEdition.put(renewalData.Installed_Base_Name__c,renewalData.Associated_Platform_Edition__c);
            }
            if(destQuoteId != null){
               // Quote  =  [SELECT id ,SBQQ__LineItemCount__c,SBQQ__StartDate__c,SBQQ__EndDate__c,SBQQ__LineItemsGrouped__c,Quote_Renewal_Type__c,Opportunity_Record_Type__c,Price_List__c FROM SBQQ__Quote__c WHERE id=:destQuoteId];
                if(lstRenewalTypes!=null){
                    Quote.Quote_Renewal_Type__c = string.join(lstRenewalTypes,';');
                    if(!productfamily.isEmpty()){
                        Quote.QuoteRenewalProductFamily__c = Quote.QuoteRenewalProductFamily__c !=null ? Quote.QuoteRenewalProductFamily__c+';'+string.join(productfamily,';') : string.join(productfamily,';');
                    }
                   // SBQQ.TriggerControl.disable();
                    UPDATE Quote;
                //  SBQQ.TriggerControl.enable();
                }
            }
            Decimal intQLNumber = Quote.SBQQ__LineItemCount__c +1;
            Integer daysBtw = Quote.SBQQ__StartDate__c.daysBetween(Quote.SBQQ__EndDate__c);

            List<SBQQ__QuoteLine__c> quotelineItems = [SELECT Id,SBQQ__ProductOption__r.SBQQ__Feature__r.SBQQ__Category__c,SBQQ__ProductOption__r.SBQQ__Feature__r.Name,SBQQ__ProductOption__c,SBQQ__Product__r.Name,SBQQ__RequiredBy__c,SBQQ__Bundle__c ,SBQQ__OptionType__c ,SBQQ__DynamicOptionId__c ,SBQQ__OptionLevel__c ,SBQQ__Quote__c,SBQQ__StartDate__c, SBQQ__Product__c,SBQQ__Quantity__c, SBQQ__ProductCode__c, SBQQ__AdditionalDiscount__c, SBQQ__Discount__c, SBQQ__EndDate__c,SBQQ__ProductOption__r.SBQQ__Quantity__c FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c IN: originalQuoteIds ORDER BY SBQQ__Quote__c,SBQQ__Number__c];
            List<SBQQ__QuoteLine__c> newLineItems = new List<SBQQ__QuoteLine__c>();
            // - Cretion of Renewal Quote lines.
            if(quotelineItems != null && quotelineItems.size() > 0){
                // - Create New Quote Lines
                for(SBQQ__QuoteLine__c items : quotelineItems){
                    //- Map of Edition and Add on
                    if(items.SBQQ__RequiredBy__c!=null && items.SBQQ__ProductOption__r.SBQQ__Feature__r.SBQQ__Category__c == 'Platform - Editions'){ 
                        requiredByVsNewEdition.put(items.SBQQ__RequiredBy__c,items.SBQQ__Product__r.Name);
                        newEditionVsRequiredBy.put(items.SBQQ__Product__r.Name,items.SBQQ__RequiredBy__c);
                        requiredByVsNewEditionCode.put(items.SBQQ__RequiredBy__c,items.SBQQ__ProductCode__c);
                    }else if(items.SBQQ__RequiredBy__c!=null && items.SBQQ__ProductOption__r.SBQQ__Feature__r.SBQQ__Category__c != 'Platform - Editions'){
                            lstNewAddOns.add(items.SBQQ__Product__r.Name);
                            requiredByVsNewAddOn.put(items.SBQQ__RequiredBy__c,lstNewAddOns);
                    }
                    if(items.SBQQ__RequiredBy__c!=null && !lstNewRequiredByIds.contains(items.SBQQ__RequiredBy__c)){
                        lstNewRequiredByIds.add(items.SBQQ__RequiredBy__c);
                    }
                }
                Decimal decPlatformQty = 0;
                for(SBQQ__QuoteLine__c items : quotelineItems){    
                    SBQQ__QuoteLine__c ObjNewQuoteLine = new SBQQ__QuoteLine__c();
                    String strDate = (!originalQuoteIdVsEffDate.isEmpty() && originalQuoteIdVsEffDate.containsKey(items.SBQQ__Quote__c)) ? originalQuoteIdVsEffDate.get(items.SBQQ__Quote__c) : '';
                    ObjNewQuoteLine.SBQQ__StartDate__c = strDate!='' ? Date.valueOf(strDate) : Quote.SBQQ__StartDate__c;
                    ObjNewQuoteLine.SBQQ__EndDate__c = strDate!='' ? ObjNewQuoteLine.SBQQ__StartDate__c.addYears(3) : ObjNewQuoteLine.SBQQ__StartDate__c.addDays(daysBtw);
                    ObjNewQuoteLine.SBQQ__Quote__c = destQuoteId;
                    ObjNewQuoteLine.SBQQ__Product__c = items.SBQQ__Product__c;
                    ObjNewQuoteLine.SBQQ__OptionLevel__c  = items.SBQQ__OptionLevel__c ;
                    ObjNewQuoteLine.SBQQ__OptionType__c  = items.SBQQ__OptionType__c ;
                    ObjNewQuoteLine.SBQQ__DynamicOptionId__c  = items.SBQQ__DynamicOptionId__c ;
                    ObjNewQuoteLine.SBQQ__Bundle__c  = items.SBQQ__Bundle__c ;
                    ObjNewQuoteLine.SBQQ__ProductOption__c  = items.SBQQ__ProductOption__c ;
                    ObjNewQuoteLine.Renewed_From_Bundle__c = true;
                    // - Put Quantity of old bundle in NEw edition
                    if(newEditionVsOldBundle.containsKey(items.SBQQ__Product__r.Name) && oldBundleVsQuantity!=null){
                        ObjNewQuoteLine.SBQQ__Quantity__c = oldBundleVsQuantity.get(newEditionVsOldBundle.get(items.SBQQ__Product__r.Name));                        
                        decPlatformQty = ObjNewQuoteLine.SBQQ__Quantity__c;
                        oldAddOnsToZeroOut.add(newEditionVsOldBundle.get(items.SBQQ__Product__r.Name));
                    }
                    // - Put the quantity from old Add ons to new addons
                    else if(oldAddOnsVsQuantity.containsKey(items.SBQQ__Product__r.Name)){
                        ObjNewQuoteLine.SBQQ__Quantity__c = oldAddOnsVsQuantity.get(items.SBQQ__Product__r.Name);oldAddOnsToZeroOut.add(items.SBQQ__Product__r.Name);
                    }
                    ObjNewQuoteLine.SBQQ__Number__c = intQLNumber;
                    ObjNewQuoteLine.Source_Favorite_Line__c  = items.Id;
                    if(items.SBQQ__RequiredBy__c != null && newEditionVsRequiredBy.containsKey(items.SBQQ__Product__r.Name)){
                        if(Quote.Opportunity_Record_Type__c.contains('Renewal')){
                            ObjNewQuoteLine.SBQQ__RenewedSubscription__c = originalQuoteVsSubId.get(items.SBQQ__Quote__c); // get subscription Id
                        }else{
                            ObjNewQuoteLine.Upgraded_From_Subscription__c = originalQuoteVsSubId.get(items.SBQQ__Quote__c); // get subscription Id
                        }
                    }else{
                        if(Quote.Opportunity_Record_Type__c.contains('Renewal')){
                            ObjNewQuoteLine.Renewed_From_Subscription__c = originalQuoteVsSubId.get(items.SBQQ__Quote__c); // get subscription Id
                        }else{
                            ObjNewQuoteLine.Upgraded_From_Subscription__c = originalQuoteVsSubId.get(items.SBQQ__Quote__c); // get subscription Id
                        }
                        ObjNewQuoteLine.SBQQ__Quantity__c = items.SBQQ__RequiredBy__c == null ? 1 : decPlatformQty;
                    }
                    if(items.SBQQ__ProductOption__c!=null && items.SBQQ__ProductOption__r.SBQQ__Quantity__c > ObjNewQuoteLine.SBQQ__Quantity__c){
                        ObjNewQuoteLine.SBQQ__Quantity__c = items.SBQQ__ProductOption__r.SBQQ__Quantity__c;oldAddOnsToZeroOut.add(items.SBQQ__Product__r.Name);
                    }
                    // New Phantom should have old Phantom's subscription Id
                    if(items.SBQQ__RequiredBy__c == null && requiredByVsNewEdition.containsKey(items.Id)){
                        if(Quote.Opportunity_record_type__c.contains('Renewal')){
                            ObjNewQuoteLine.SBQQ__RenewedSubscription__c = oldPhantomVsSubscriptionId.get(oldBundleVsRequiredBy.get(newEditionVsOldBundle.get(requiredByVsNewEdition.get(items.Id)))); // get subscription Id
                        }else{
                            ObjNewQuoteLine.Upgraded_From_Subscription__c = oldPhantomVsSubscriptionId.get(oldBundleVsRequiredBy.get(newEditionVsOldBundle.get(requiredByVsNewEdition.get(items.Id)))); // get subscription Id
                        }
                        id idSub = ObjNewQuoteLine.SBQQ__RenewedSubscription__c!=null ? ObjNewQuoteLine.SBQQ__RenewedSubscription__c :ObjNewQuoteLine.Upgraded_From_Subscription__c;
                        if(mapOldPhantomToQL.containsKey(idSub)){
                            SBQQ__QuoteLine__c objOldQL = mapOldPhantomToQL.get(idSub); 
                            ObjNewQuoteLine.Platform_Subscription__c = objOldQL.Platform_Subscription__c;
                            ObjNewQuoteLine.Sum_of_Child_Original_MRR__c = objOldQL.Sum_of_Child_Original_MRR__c;
                            ObjNewQuoteLine.Sum_of_Child_Original_PUPY__c = objOldQL.Sum_of_Child_Original_PUPY__c;
                            
                        }
                        ObjNewQuoteLine.Renewed_From_Subscription__c = null;
                    }
                    ObjNewQuoteLine.Renewal_Upgrade_Type__c = originalQuoteVsSelectedTab.get(items.SBQQ__Quote__c); // get the selected tab
                    intQLNumber =  intQLNumber +1;
                    if(items.SBQQ__RequiredBy__c != null){
                        mapChildToParent.put(items.id,items.SBQQ__RequiredBy__c);
                    }
                    newLineItems.add(ObjNewQuoteLine);
                }
                for(String reqId : lstNewRequiredByIds){
                    if(requiredByVsNewEdition.containsKey(reqId)){
                        List<String> tempList = requiredByVsNewAddOn.containsKey(reqId) ? requiredByVsNewAddOn.get(reqId) : null;
                        newEditionVsAddOn.put(requiredByVsNewEdition.get(reqId),tempList);
                    }
                }
                
                Set<String> setAddOnMappings= new Set<String>();
                Map<String,Set<String>> mapReqByToAddOns = new Map<String,Set<STring>>();
                for(String reqId : lstNewRequiredByIds){
                    oldBundleProducts = bundleVsAddOn.get(newEditionVsOldBundle.get(requiredByVsNewEdition.get(reqId)));
                    newEditionProducts = newEditionVsAddOn.get(requiredByVsNewEdition.get(reqId));
                    if(oldBundleProducts!=null){
                        for(String strBundle : oldBundleProducts){
                            system.debug('strBundle'+strBundle);
                            system.debug('mapOldSKUToNewSKUID..'+mapOldSKUToNewSKUID);
                            system.debug('reqId..'+reqId);
                            if(mapOldSKUToNewSKUID!=null && mapOldSKUToNewSKUID.size()>0 && mapOldSKUToNewSKUID.containsKey(strBundle)){
                                Set<String> setAddOnsIds = mapReqByToAddOns.containsKey(reqId) ? mapReqByToAddOns.get(reqId)  : new Set<STring>();
                                setAddOnMappings.add(mapOldSKUToNewSKUID.get(strBundle));
                                setAddOnsIds.add(mapOldSKUToNewSKUID.get(strBundle));
                                system.debug('setAddOnsIds.'+setAddOnsIds);
                                mapReqByToAddOns.put(reqId,setAddOnsIds);
                            }else if( newEditionProducts !=null && !newEditionProducts.isEmpty() && !newEditionProducts.contains(strBundle)){
                                lstRemainingAddons.add(strBundle);remainingAddOnVsOriginalRequiredBy.put(reqId,lstRemainingAddons);                            
                            }else if(newEditionProducts ==null){
                                lstRemainingAddons.add(strBundle);remainingAddOnVsOriginalRequiredBy.put(reqId,lstRemainingAddons);
                            }
                        }
                    }                    
                }
                system.debug('setAddOnMappings.'+setAddOnMappings);
                
                system.debug('mapReqByToAddOns.'+mapReqByToAddOns);
                system.debug('lstRemainingAddons.'+lstRemainingAddons);
                system.debug('remainingAddOnVsOriginalRequiredBy.'+remainingAddOnVsOriginalRequiredBy);
                Map<String,String> productIdVsOriginalReqdBy = new Map <String,String>();
                if(remainingAddOnVsOriginalRequiredBy!=null || mapReqByToAddOns!=null){
                    Set<String>  setPhantomIds = new Set<String>();
                    if(remainingAddOnVsOriginalRequiredBy!=null && remainingAddOnVsOriginalRequiredBy.size()>0){
                        setPhantomIds.addAll(remainingAddOnVsOriginalRequiredBy.keySet());
                    }
                    if(mapReqByToAddOns!=null && mapReqByToAddOns.size()>0){
                        setPhantomIds.addAll(mapReqByToAddOns.keySet());
                    }
                    system.debug('setPhantomIds..'+setPhantomIds);
                    for(SBQQ__QuoteLine__C phantomProdId : [SELECT id, SBQQ__Product__c FROM SBQQ__QuoteLine__c WHERE id IN: setPhantomIds]){
                        productIdVsOriginalReqdBy.put(phantomProdId.SBQQ__Product__c,phantomProdId.id);
                    }
                }
                
                system.debug('lstRemainingAddons..'+lstRemainingAddons);
                if(productIdVsOriginalReqdBy!=null){
                    if(lstRemainingAddons!=null && lstRemainingAddons.size()>0){
                        for(SBQQ__ProductOption__c prodOp : [SELECT id,SBQQ__ConfiguredSKU__c,SBQQ__OptionalSKU__c,SBQQ__OptionalSKU__r.Name FROM SBQQ__ProductOption__c WHERE SBQQ__ConfiguredSKU__c IN: productIdVsOriginalReqdBy.keySet() AND SBQQ__OptionalSKU__r.Name IN: lstRemainingAddons ]){
                            setAddOnMappings.add(prodOp.SBQQ__OptionalSKU__c);
                        }
                    }
                    system.debug('productIdVsOriginalReqdBy.'+productIdVsOriginalReqdBy);
                    system.debug('setAddOnMappings..'+setAddOnMappings);
                    for(SBQQ__ProductOption__c prodOp : [SELECT id,SBQQ__ConfiguredSKU__c,SBQQ__Feature__c,SBQQ__OptionalSKU__c,SBQQ__OptionalSKU__r.Exclude_for_Platform__c,SBQQ__OptionalSKU__r.Name FROM SBQQ__ProductOption__c WHERE SBQQ__ConfiguredSKU__c IN: productIdVsOriginalReqdBy.keySet() AND SBQQ__OptionalSKU__c IN: setAddOnMappings]){
                        prodNameVsProdId.put(prodOp.SBQQ__OptionalSKU__r.Name,prodOp.SBQQ__OptionalSKU__c);
                        system.debug('prodNameVsProdId.'+prodNameVsProdId);
                        system.debug('prodOp.SBQQ__ConfiguredSKU__c..'+prodOp.SBQQ__ConfiguredSKU__c);
                        if(productIdVsOriginalReqdBy.containsKey(prodOp.SBQQ__ConfiguredSKU__c)){
                            productNameVsExcludeFromPlatform.put(prodOp.SBQQ__OptionalSKU__r.Name,prodOp.SBQQ__OptionalSKU__r.Exclude_for_Platform__c);reqdByVsOptionalSKU.put(productIdVsOriginalReqdBy.get(prodOp.SBQQ__ConfiguredSKU__c)+'_'+prodOp.SBQQ__OptionalSKU__c,prodOp.SBQQ__OptionalSKU__r.Name);
                        }
                        reqdByOptionalSkuVsProdOpId.put(productIdVsOriginalReqdBy.get(prodOp.SBQQ__ConfiguredSKU__c)+'_'+prodOp.SBQQ__OptionalSKU__r.Name,prodOp.Id);prodOptionVsFeature.put(prodOp.Id,prodOp.SBQQ__Feature__c);
                    }
                }
            }
            String platformProductCode;
            String remainingProd;
            List<String> finalRemainingProds = new List<String>();
            system.debug('reqdByVsOptionalSKU..'+reqdByVsOptionalSKU);
            system.debug('productNameVsExcludeFromPlatform.'+productNameVsExcludeFromPlatform);
            for(String originalReqdByConcat :reqdByVsOptionalSKU.keySet()){
                String originalReqdBy = originalReqdByConcat.split('_')[0];
                if(requiredByVsNewEditionCode.containsKey(originalReqdBy)){
                    platformProductCode = requiredByVsNewEditionCode.get(originalReqdBy);
                    String strOldPlatformProductCode = (platformProductCode.contains('EDITION')) ? platformProductCode.replace('EDITION','BUNDLE') : '';remainingProd = reqdByVsOptionalSKU.get(originalReqdByConcat);
                    system.debug('remainingProd..'+remainingProd);
                    if(productNameVsExcludeFromPlatform.get(remainingProd) == null || (productNameVsExcludeFromPlatform.get(remainingProd)!=null && !productNameVsExcludeFromPlatform.get(remainingProd).contains(platformProductCode) && (strOldPlatformProductCode!='' && !productNameVsExcludeFromPlatform.get(remainingProd).contains(strOldPlatformProductCode)))){   
                        String strTemp = (!mapNewSKUToOldSKUName.isEmpty() && mapNewSKUToOldSKUName.containsKey(remainingProd)) ? mapNewSKUToOldSKUName.get(remainingProd) : remainingProd;finalRemainingProds.add(strTemp);
                    }else{
                        oldAddOnsToZeroOut.add(remainingProd);if((!mapNewSKUToOldSKUName.isEmpty() && mapNewSKUToOldSKUName.containsKey(remainingProd))){oldAddOnsToZeroOut.add(mapNewSKUToOldSKUName.get(remainingProd));}
                    }
                }
            }
            system.debug('finalRemainingProds ...'+finalRemainingProds );
            if(finalRemainingProds.isempty() && !lstRemainingAddons.isempty() && reqdByVsOptionalSKU.isempty()){
                for(String strAddon : lstRemainingAddons){
                    oldAddOnsToZeroOut.add(strAddon);
                    if(mapNewSKUToOldSKUName.containskey(strAddon)){
                        oldAddOnsToZeroOut.add(mapNewSKUToOldSKUName.get(strAddon));
                    }
                }
            }
            if(newLineItems != null && newLineItems.size() > 0 ){
                INSERT newLineItems;
                Map<Id,Id> mapSourceToTargetLines = new Map<Id,Id>();
                for(SBQQ__QuoteLine__C objQLI : newLineItems){
                    mapSourceToTargetLines.put(objQLI.Source_Favorite_Line__c,objQLI.id);
                }
                if(!mapSourceToTargetLines.isEmpty()){
                    for(SBQQ__QuoteLine__C objQLI : newLineItems){
                        if(objQLI.SBQQ__Bundle__c == false && mapChildToParent!=null && mapChildToParent.containsKey(objQLI.Source_Favorite_Line__c) && mapSourceToTargetLines!=null && mapSourceToTargetLines.containsKey(mapChildToParent.get(objQLI.Source_Favorite_Line__c))){
                            objQLI.SBQQ__RequiredBy__c= mapSourceToTargetLines.get(mapChildToParent.get(objQLI.Source_Favorite_Line__c));
                            requiredByVsMaxQlNumber.put(objQLI.SBQQ__RequiredBy__c,objQLI.SBQQ__Number__c);
                            listQLToUpdate.add(objQLI);
                        }
                    }
                    system.debug('354finalRemainingProds ...'+finalRemainingProds );
                    if(!finalRemainingProds.isEmpty()){
                        for(SBQQ__QuoteLine__c qliObj: [SELECT Id,SBQQ__OptionLevel__c,SBQQ__OptionType__c,SBQQ__DynamicOptionId__c,SBQQ__Bundle__c,SBQQ__Product__r.Name,SBQQ__Product__c,SBQQ__ProductOption__c,SBQQ__RequiredBy__c,SBQQ__Quantity__c, SBQQ__ProductCode__c, SBQQ__AdditionalDiscount__c, SBQQ__Discount__c, SBQQ__EndDate__c,Renewal_Upgrade_Type__c,SBQQ__RenewedSubscription__c,SBQQ__RenewedSubscription__r.SBQQ__Product__r.Name,SBQQ__UpgradedSubscription__c,SBQQ__UpgradedSubscription__r.SBQQ__Product__r.Name FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =: destQuoteId AND SBQQ__Product__r.Name IN:finalRemainingProds]){
                            if(selectedInstallBase.contains(requiredByVsOldBundle.get(qliObj.SBQQ__RequiredBy__c))){
                                SBQQ__QuoteLine__c newAddOnQuoteLine = new SBQQ__QuoteLine__c();
                                String strDate = (!originalQuoteIdVsEffDate.isEmpty() && originalQuoteIdVsEffDate.containsKey(installBaseVsOriginalQuote.get(requiredByVsOldBundle.get(qliObj.SBQQ__RequiredBy__c)))) ? originalQuoteIdVsEffDate.get(installBaseVsOriginalQuote.get(requiredByVsOldBundle.get(qliObj.SBQQ__RequiredBy__c))) : '';
                                newAddOnQuoteLine.SBQQ__StartDate__c = strDate!='' ? Date.valueOf(strDate) : Quote.SBQQ__StartDate__c;
                                newAddOnQuoteLine.SBQQ__EndDate__c = strDate!='' ? newAddOnQuoteLine.SBQQ__StartDate__c.addYears(3) : newAddOnQuoteLine.SBQQ__StartDate__c.addDays(daysBtw);
                                newAddOnQuoteLine.SBQQ__Quote__c = destQuoteId;String strProdName = (mapOldSKUToNewSKUName!=null && mapOldSKUToNewSKUName.size()>0 && mapOldSKUToNewSKUName.containsKey(qliObj.SBQQ__Product__r.Name)) ?  mapOldSKUToNewSKUName.get(qliObj.SBQQ__Product__r.Name) : qliObj.SBQQ__Product__r.Name;
                                newAddOnQuoteLine.SBQQ__Product__c = prodNameVsProdId.get(strProdName);newAddOnQuoteLine.SBQQ__OptionLevel__c  = qliObj.SBQQ__OptionLevel__c ;newAddOnQuoteLine.SBQQ__OptionType__c  = qliObj.SBQQ__OptionType__c ;newAddOnQuoteLine.SBQQ__Bundle__c  = qliObj.SBQQ__Bundle__c ;newAddOnQuoteLine.SBQQ__Quantity__c = qliObj.SBQQ__Quantity__c ;newAddOnQuoteLine.Renewed_From_Bundle__c = true;
                                // - Add the older product to map to zero out
                                oldAddOnsToZeroOut.add(qliObj.SBQQ__Product__r.Name);
                                if(mapNewSKUToOldSKUName.containskey(qliObj.SBQQ__Product__r.Name)){oldAddOnsToZeroOut.add(mapNewSKUToOldSKUName.get(qliObj.SBQQ__Product__r.Name));}
                                newAddOnQuoteLine.SBQQ__RequiredBy__c = mapSourceToTargetLines.get(newEditionVsRequiredBy.get(oldBundleVSNewEdition.get(requiredByVsOldBundle.get(qliObj.SBQQ__RequiredBy__c))));
                                //commented as add ons mapping 1:N to not be done
                                //newAddOnQuoteLine.SBQQ__RenewedSubscription__c = qliObj.SBQQ__RenewedSubscription__c; // get subscription Id
                                if(Quote.Opportunity_record_Type__c.contains('Renewal')){
                                    newAddOnQuoteLine.SBQQ__RenewedSubscription__c = qliObj.SBQQ__UpgradedSubscription__c !=null ? qliObj.SBQQ__UpgradedSubscription__c : qliObj.SBQQ__RenewedSubscription__c; // get subscription Id
                                }else{
                                    newAddOnQuoteLine.Upgraded_From_Subscription__c = qliObj.SBQQ__UpgradedSubscription__c !=null ? qliObj.SBQQ__UpgradedSubscription__c : qliObj.SBQQ__RenewedSubscription__c; // get subscription Id
                                }
                                
                                //newAddOnQuoteLine.Renewed_From_Subscription__c = qliObj.SBQQ__RenewedSubscription__c;
                                newAddOnQuoteLine.Renewal_Upgrade_Type__c = originalQuoteVsSelectedTab.get(installBaseVsOriginalQuote.get(requiredByVsOldBundle.get(qliObj.SBQQ__RequiredBy__c)));
                                newAddOnQuoteLine.SBQQ__Number__c = requiredByVsMaxQlNumber.get(newAddOnQuoteLine.SBQQ__RequiredBy__c);   
                                if(reqdByOptionalSkuVsProdOpId.containsKey(newEditionVsRequiredBy.get(oldBundleVSNewEdition.get(requiredByVsOldBundle.get(qliObj.SBQQ__RequiredBy__c)))+'_'+qliObj.SBQQ__Product__r.Name)){
                                    newAddOnQuoteLine.SBQQ__ProductOption__c  = reqdByOptionalSkuVsProdOpId.get(newEditionVsRequiredBy.get(oldBundleVSNewEdition.get(requiredByVsOldBundle.get(qliObj.SBQQ__RequiredBy__c)))+'_'+qliObj.SBQQ__Product__r.Name);
                                }else if(reqdByOptionalSkuVsProdOpId.containsKey(newEditionVsRequiredBy.get(oldBundleVSNewEdition.get(requiredByVsOldBundle.get(qliObj.SBQQ__RequiredBy__c)))+'_'+((mapOldSKUToNewSKUName!=null && mapOldSKUToNewSKUName.size()>0 && mapOldSKUToNewSKUName.containsKey(qliObj.SBQQ__Product__r.Name)) ?  mapOldSKUToNewSKUName.get(qliObj.SBQQ__Product__r.Name) : qliObj.SBQQ__Product__r.Name))){
                                    newAddOnQuoteLine.SBQQ__ProductOption__c  = reqdByOptionalSkuVsProdOpId.get(newEditionVsRequiredBy.get(oldBundleVSNewEdition.get(requiredByVsOldBundle.get(qliObj.SBQQ__RequiredBy__c)))+'_'+((mapOldSKUToNewSKUName!=null && mapOldSKUToNewSKUName.size()>0 && mapOldSKUToNewSKUName.containsKey(qliObj.SBQQ__Product__r.Name)) ?  mapOldSKUToNewSKUName.get(qliObj.SBQQ__Product__r.Name) : qliObj.SBQQ__Product__r.Name));
                                } 
                                if(newAddOnQuoteLine.SBQQ__ProductOption__c !=null){newAddOnQuoteLine.SBQQ__DynamicOptionId__c  = prodOptionVsFeature.get(newAddOnQuoteLine.SBQQ__ProductOption__c);}
                                listQLToUpdate.add(newAddOnQuoteLine);
                            }
                        }
                    }
                } 
            }
             // - Zero out the quantity of platform in selectedInstallBase
            for(SBQQ__QuoteLine__c qliObj: [SELECT Id, SBQQ__Product__c,SBQQ__RequiredBy__c,SBQQ__Quantity__c, SBQQ__ProductCode__c, SBQQ__AdditionalDiscount__c, SBQQ__Discount__c, SBQQ__EndDate__c,SBQQ__RenewedSubscription__r.SBQQ__Product__r.Name,SBQQ__UpgradedSubscription__r.SBQQ__Product__r.Name,SBQQ__Product__r.Name FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =: destQuoteId AND (SBQQ__Product__r.Name IN :oldAddOnsToZeroOut OR id in: requiredByVsOldBundle.keyset() OR SBQQ__Productcode__c ='ZSC-SIP' OR (SBQQ__RequiredBy__c IN: requiredByVsOldAddOn.keyset() AND SBQQ__Quantity__c > 0 ))]){
                if(requiredByVsOldAddOn.containsKey(qliObj.SBQQ__RequiredBy__c) || requiredByVsOldBundle.containsKey(qliObj.SBQQ__RequiredBy__c) || qliObj.SBQQ__ProductCode__c=='ZSC-SIP'){
                    qliObj.SBQQ__Quantity__c = 0;
                   listQLToUpdate.add(qliObj);
                }
                
            }
            if(!listQLToUpdate.isEmpty()){
                UPSERT listQLToUpdate;
            }
            
        }
        catch (Exception e) {system.debug(e);strMsg = e.getMessage();throw new AuraHandledException(e.getMessage());}
        return strMsg;
    }

    public class RenewWrapper{
        @AuraEnabled public String Id; // Id for Renewal Scenario record
        @AuraEnabled public String effectiveDate;
        @AuraEnabled public String installBase;
        @AuraEnabled public String originalQuoteId;
        @AuraEnabled public String subscriptionId;
        @AuraEnabled public String selectedTab;
        @AuraEnabled public String productFamily;
        public RenewWrapper(String Id,String effectiveDate,String installBase,String originalQuoteId,String subscriptionId, String selectedTab,String productFamily){
            this.Id = Id;
            this.effectiveDate = effectiveDate;
            this.installBase = installBase;
            this.originalQuoteId = originalQuoteId;
            this.subscriptionId = subscriptionId;
            this.selectedTab = selectedTab;
            this.productFamily = productFamily;
        }
    }
    
    public class SelectedBundleData{
        @AuraEnabled public String Id;  // Renewal Scenario record Id
        @AuraEnabled public String originalQuoteId; 
        @AuraEnabled public String nameRenewedTo;
        @AuraEnabled public String description;
        @AuraEnabled public String installBase;
        @AuraEnabled public String zscalerProductFamily;
        @AuraEnabled public List<SBQQ__QuoteLine__c> lstQuoteLine;
        public SelectedBundleData(String Id,String originalQuoteId,String nameRenewedTo,String description,String installBase,List<SBQQ__QuoteLine__c> lstQuoteLine, String zscalerProductFamily){
            this.Id = Id;
            this.originalQuoteId = originalQuoteId;
            this.nameRenewedTo = nameRenewedTo;
            this.description = description;
            this.installBase = installBase;
            this.zscalerProductFamily = zscalerProductFamily;
            this.lstQuoteLine = lstQuoteLine;
        }
    }
    
    public class QuoteLineWrapper{
        @AuraEnabled public SBQQ__Quote__c quoteObj;
        @AuraEnabled public List<SBQQ__Subscription__c> picklistValues;
        public QuoteLineWrapper(SBQQ__Quote__c quoteObj,List<SBQQ__Subscription__c> picklistValues){
            this.quoteObj = quoteObj;
            this.picklistValues=picklistValues;
            
        }
    }

}