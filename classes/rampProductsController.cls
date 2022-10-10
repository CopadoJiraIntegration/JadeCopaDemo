/**
 * @description       : 
 * @author            : Jade
 * @group             : 
 * @last modified on  : 16-02-2022
 * @last modified by  : Jade
**/
public with sharing class rampProductsController {
    @AuraEnabled
    public static QuoteLineWrapper getAllProducts(String QuoteId){
        try {
            Boolean showAllRamps = false;
            String phantomId;
            List<SBQQ__QuoteLine__c> rampedList = new List<SBQQ__QuoteLine__c>();
            List<SBQQ__QuoteLine__c> finalGetProducts = new List<SBQQ__QuoteLine__c>();
            List<SBQQ__QuoteLine__c> qliList =[SELECT Id,SBQQ__DynamicOptionId__c,Is_Ramped__c,SBQQ__Product__r.Id,SBQQ__Product__r.Enable_Ramp__c,SBQQ__ProductName__c,SBQQ__Product__r.ProductCode,
                                                SBQQ__Product__r.SBQQ__DefaultQuantity__c,SBQQ__Quote__r.Name, SBQQ__Quote__r.SBQQ__StartDate__c, SBQQ__Quote__r.SBQQ__EndDate__c,
                                                SBQQ__NetPrice__c, Ramp_Label__c,SBQQ__ListPrice__c,SBQQ__Quantity__c,SBQQ__StartDate__c,SBQQ__Existing__c, SBQQ__EndDate__c,SBQQ__SubscriptionTerm__c, SBQQ__RequiredBy__c,SBQQ__ProductSubscriptionType__c,
                                                (SELECT Id,Ramp_Label__c,SBQQ__Product__r.Id,SBQQ__Product__r.Enable_Ramp__c,SBQQ__ProductName__c,SBQQ__ProductCode__c,SBQQ__ProductFamily__c,SBQQ__Product__r.ProductCode,SBQQ__Product__r.SBQQ__DefaultQuantity__c,
                                                SBQQ__Quote__r.Name,SBQQ__Existing__c, SBQQ__Quote__r.SBQQ__StartDate__c, SBQQ__Quote__r.SBQQ__EndDate__c,SBQQ__NetPrice__c, SBQQ__ListPrice__c,SBQQ__Quantity__c,SBQQ__StartDate__c, 
                                                SBQQ__EndDate__c,SBQQ__SubscriptionTerm__c, SBQQ__RequiredBy__c,SBQQ__DynamicOptionId__c,Is_Ramped__c,Show_Ramp__c from SBQQ__Quote_Lines__r WHERE Show_Ramp__c=false and SBQQ__Product__r.Enable_Ramp__c=true/*ORDER By SBQQ__ProductName__c*/ ORDER BY SBQQ__Number__c ASC) 
                                                FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =:QuoteId and SBQQ__RequiredBy__c = null and SBQQ__ProductSubscriptionType__c='Renewable'  and SBQQ__Product__r.Enable_Ramp__c=true and SBQQ__ProductCode__c='' ORDER BY SBQQ__Number__c ASC]; //and SBQQ__Existing__c = false  
            SBQQ__Quote__c quoteObj =[SELECT Id,Name,SBQQ__StartDate__c,SBQQ__EndDate__c FROM SBQQ__Quote__c WHERE Id=:QuoteId];
            for(SBQQ__QuoteLine__c phantomLine : [SELECT id, Is_Ramped__c,SBQQ__RequiredBy__c,SBQQ__ProductCode__c FROM SBQQ__QuoteLine__c WHERE SBQQ__RequiredBy__c =null AND SBQQ__Quote__c=:QuoteId AND SBQQ__ProductCode__c='']){
                if(phantomLine.Is_Ramped__c == false){
                    showAllRamps = true;
                }
                phantomId = phantomLine.Id;
            }
            if(showAllRamps == false){
                for(SBQQ__QuoteLine__c childLine : [SELECT id,SBQQ__Number__c,SBQQ__Quantity__c,Re_Ramped__c,SBQQ__StartDate__c, SBQQ__EndDate__c, Is_Ramped__c,SBQQ__RequiredBy__c FROM SBQQ__QuoteLine__c WHERE SBQQ__RequiredBy__c !=null AND SBQQ__Quote__c=:QuoteId ORDER BY SBQQ__Number__c ASC]){
                    if(childLine.Re_Ramped__c == true){
                        showAllRamps = true;
                    }
                }
            }
            String qliName = '';
            if(showAllRamps == false){
                for(SBQQ__QuoteLine__c childLine : [SELECT id,Ramp_Label__c,SBQQ__Number__c,SBQQ__ProductName__c,SBQQ__ProductCode__c,SBQQ__Quantity__c,Re_Ramped__c,SBQQ__StartDate__c, SBQQ__EndDate__c, Is_Ramped__c,SBQQ__RequiredBy__c FROM SBQQ__QuoteLine__c WHERE SBQQ__RequiredBy__c=:phantomId AND SBQQ__Quote__c=:QuoteId ORDER BY Ramp_Label__c ASC]){
                    if(String.isBlank(qliName)){
                        qliName = childLine.SBQQ__ProductName__c;
                    }
                    if(childLine.SBQQ__ProductName__c == qliName){
                        rampedList.add(childLine);
                    }
                }
            }
            QuoteLineWrapper qliWrap = new QuoteLineWrapper(quoteObj,qliList,rampedList,showAllRamps);                                                                   
            return qliWrap;                                  

       } catch (Exception e) {
            system.debug(e);
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled
    public static String createQuoteLines(String QuoteId, List<String> QuoteLineIds,String segments,String uniqueRampKey,Boolean isOriginPhantom, Boolean isFromRampAll){
        String strMsg = 'success';
        try {
            Set <Id> phantomIdSet = new Set <Id>();
            List<SegmentWrapper> wrapperLines = (List<SegmentWrapper>)JSON.deserialize(segments, List<SegmentWrapper>.class);
            system.debug('Check Values'+wrapperLines+'isOriginPhantom'+isOriginPhantom+'uniqueRampKey'+uniqueRampKey+'QuoteLineIds'+QuoteLineIds+'segments'+segments+'blank'+String.isBlank(uniqueRampKey)+'blank segment'+ String.isBlank(segments));
            Map<Id,List<SBQQ__QuoteLine__c>> subQLIMap =  new Map<Id,List<SBQQ__QuoteLine__c>>();
            Map<Id,SBQQ__QuoteLine__c> mainQLIMap =  new Map<Id,SBQQ__QuoteLine__c>();
            
            Map<Id,SBQQ__QuoteLine__c> getAllQuoteLines = new Map<Id,SBQQ__QuoteLine__c>();
            if(String.isNotBlank(uniqueRampKey) && !isOriginPhantom){
                getAllQuoteLines = new Map<Id,SBQQ__QuoteLine__c>([Select Id,SBQQ__Product__r.Id,SBQQ__Product__r.Name,SBQQ__RequiredBy__c,Is_Ramped__c,Show_Ramp__c,Ramp_Label__c,SBQQ__Number__c,SBQQ__Quote__c,SBQQ__ProductName__c from SBQQ__QuoteLine__c where SBQQ__Quote__c =: QuoteId AND (Id IN:QuoteLineIds OR Ramp_UniqueKey__c=:uniqueRampKey ) /*AND Is_Ramped__c=false*/]);
            }
            else {
                getAllQuoteLines = new Map<Id,SBQQ__QuoteLine__c>([Select Id,SBQQ__Product__r.Id,SBQQ__Product__r.Name,SBQQ__RequiredBy__c,Is_Ramped__c,Show_Ramp__c,Ramp_Label__c,SBQQ__Number__c,SBQQ__Quote__c,SBQQ__ProductName__c from SBQQ__QuoteLine__c where SBQQ__Quote__c =: QuoteId AND (Id=:QuoteLineIds OR SBQQ__RequiredBy__c=:QuoteLineIds ) /*AND Is_Ramped__c=false*/]);
            }
            system.debug(' getAllQuoteLines.values()::'+ getAllQuoteLines.values());
            List<SBQQ__QuoteLine__c> finalQuoteLines = new List<SBQQ__QuoteLine__c>();
            for(SBQQ__QuoteLine__c qli : getAllQuoteLines.values()){
                if(qli.SBQQ__RequiredBy__c != null){
                    if(subQLIMap.containsKey(qli.SBQQ__RequiredBy__c)){
                        subQLIMap.get(qli.SBQQ__RequiredBy__c).add(qli);
                    }
                    else{
                        subQLIMap.put(qli.SBQQ__RequiredBy__c, new List<SBQQ__QuoteLine__c> {qli});
                    }
                    if(String.isNotBlank(uniqueRampKey) && !isOriginPhantom){
                        finalQuoteLines.add(qli);
                    }
                    system.debug('subQLIMap::'+subQLIMap);
                }
                else{
                if(!mainQLIMap.containsKey(qli.Id)){
                        mainQLIMap.put(qli.Id,qli);
                }
                system.debug('mainQLIMap::'+mainQLIMap);
                }
            }
            if(isOriginPhantom){
                for(Id qlis : mainQLIMap.keyset()){
                    if(subQLIMap.containsKey(qlis)){
                        List<SBQQ__QuoteLine__c> allQl= subQLIMap.get(qlis);
                        finalQuoteLines.addAll(subQLIMap.get(qlis));
                    }
                    else{
                        finalQuoteLines.add(mainQLIMap.get(qlis));
                    }
                }
            }
            set<Id> allQLIIds =  new set<Id>();
            Set<String> uniqueKeySet = new Set<String>();
            for(SBQQ__QuoteLine__c qliss : finalQuoteLines){
                system.debug('QuoteLineId '+qliss.Id +' '+ qliss.SBQQ__Product__r.Name + ' Required By '+ qliss.SBQQ__RequiredBy__c);      
                allQLIIds.add(qliss.Id);
            }
            system.debug('allQLIIds::'+allQLIIds);
            String soql = rampProductsController.cloneRecordQuery('SBQQ__QuoteLine__c');
            soql+=':allQLIIds';
            system.debug('Query' + soql);
            Map<String,SBQQ__QuoteLine__c> toCreateMap = new Map<String,SBQQ__QuoteLine__c>();
            List<SBQQ__QuoteLine__c> toCreate = new List<SBQQ__QuoteLine__c>();
            List<SBQQ__QuoteLine__c> finaled = new List<SBQQ__QuoteLine__c>();
            finaled = Database.query(soql);
            system.debug('finaled::'+finaled);
            Map<String,SBQQ__QuoteLine__c> rampedQuoteLine =  new  Map<String,SBQQ__QuoteLine__c>();
            Map<String,Integer> codeVsNumberMap =  new  Map<String,Integer>();
            Map<String,SBQQ__QuoteLine__c> upgradeSubMap =  new  Map<String,SBQQ__QuoteLine__c>();
            Integer maxExistingNumber=0;
            List<SBQQ__QuoteLine__c> qliToDelete = new List<SBQQ__QuoteLine__c>();
            for(SBQQ__QuoteLine__c q : finaled){ 
               
                rampedQuoteLine.put(q.Ramp_Label__c+q.SBQQ__ProductCode__c,q);
                if(q.SBQQ__UpgradedSubscription__c!=null || q.SBQQ__RenewedSubscription__c !=null){
                    upgradeSubMap.put(q.SBQQ__ProductCode__c,q);
                }
                system.debug('upgradeSubMap'+upgradeSubMap);
                if(codeVsNumberMap.containsKey(q.SBQQ__ProductCode__c)){
                    maxExistingNumber = codeVsNumberMap.get(q.SBQQ__ProductCode__c);
                    Integer quoteNum = Integer.valueOf(q.SBQQ__Number__c);
                    maxExistingNumber = maxExistingNumber > quoteNum ? maxExistingNumber : quoteNum;
                    codeVsNumberMap.put(q.SBQQ__ProductCode__c,maxExistingNumber);
                }else{
                    codeVsNumberMap.put(q.SBQQ__ProductCode__c,Integer.valueOf(q.SBQQ__Number__c));
                }
                
                system.debug('codeVsNumberMap::'+codeVsNumberMap);
            }
            Integer maxRampNumber =0;
            for(SegmentWrapper sw : wrapperLines){
                String rampNumberValue = sw.Segment.split('Ramp')[1];
                rampNumberValue = rampNumberValue.trim();
                Integer rampNumber = Integer.valueOf(rampNumberValue);
                if(maxRampNumber < rampNumber){
                    maxRampNumber = rampNumber;
                }
            }
            for(SBQQ__QuoteLine__c q : finaled){ 
                system.debug(q);
                if(q.Ramp_Enabled__c == true){
                    if(isOriginPhantom){
                    phantomIdSet.add(q.SBQQ__RequiredBy__c);
                    }
                    Boolean firstRamp = false;
                    Integer intCount = 0;
                    for(SegmentWrapper sw : wrapperLines){
                        intCount = intCount+1;
                        
                        SBQQ__QuoteLine__c q1 = new SBQQ__QuoteLine__c();
                        if(String.isBlank(q.Ramp_Label__c)){
                            system.debug('fresh ramp::');
                            q1 = q.clone(false, true);
                            
                            if(firstRamp==false){
                                q1.Id = q.Id;
                                firstRamp= true;
                            }
                            q1.Ramp_Label__c = sw.Segment;
                            q1.SBQQ__Number__c=q.SBQQ__Number__c;
                            q1.Ramp_Origin__c = 'QLI';
                            /*q1.SBQQ__Number__c = maxExistingNumber;
                            if(codeVsNumberMap.containsKey(q.SBQQ__ProductCode__c)){
                                q1.SBQQ__Number__c = codeVsNumberMap.get(q.SBQQ__ProductCode__c);
                            }*/
                            system.debug('q1.SBQQ__Number__c::'+q1.SBQQ__Number__c);
                            q1.SBQQ__RequiredBy__c = q.SBQQ__RequiredBy__c;
                            q1.Is_Ramped__c=true;
                            if(isFromRampAll == false /*&& !isOriginPhantom*/){
                                q1.Re_Ramped__c = true;
                            }else{
                                q1.Re_Ramped__c = false;
                            }
                            system.debug('q1::::::'+q1);
                            if(q1.Id!= null){
                                q1.Show_Ramp__c = false;
                            }else{
                                q1.Show_Ramp__c = true;
                            }
                            system.debug('q.SBQQ__RequiredBy__c::'+q.SBQQ__RequiredBy__c);
                            q1.SBQQ__StartDate__c = date.valueOf(sw.StartDate);
                            q1.SBQQ__EndDate__c = date.valueOf(sw.EndDate);
                            q1.SBQQ__Quantity__c = Integer.valueOf(sw.Qty);
                            //commented quantity,prior quantity.Modified Existing and added else part for CR#3562-Rakshitha
                            if(q.SBQQ__UpgradedSubscription__c!=null && intCount != wrapperLines.size()){
                                q1.SBQQ__UpgradedSubscription__c =null;
                                q1.SBQQ__Existing__c = false;
                                //q1.sbqq__Quantity__c = q1.SBQQ__Quantity__c + q.SBQQ__PriorQuantity__c;
                                q1.SBQQ__PriorQuantity__c = null;
                            }else if(q.SBQQ__UpgradedSubscription__c!=null && intCount == wrapperLines.size()){
                                q1.SBQQ__Quantity__c = q1.SBQQ__Quantity__c + q.SBQQ__PriorQuantity__c;
                                //q1.Prior_Quantity1__c =q.SBQQ__PriorQuantity__c;
                            }
                           // q1.Edition_Quantity__c = q.Edition_Quantity__c;
                            q1.SBQQ__OptionLevel__c = 1;
                            system.debug('q1 from first time click::'+q1);
                            toCreate.add(q1);
                        }else{
                            if(sw.Segment == q.Ramp_Label__c){
                                q1=q;
                                system.debug('q1 existing ramp::::'+q1);
                                q1.SBQQ__StartDate__c = date.valueOf(sw.StartDate);
                                q1.SBQQ__EndDate__c = date.valueOf(sw.EndDate);
                                q1.SBQQ__Quantity__c = Integer.valueOf(sw.Qty);
                                 //commented quantity,prior quantity.Modified Existing and added else part for CR#3562-Rakshitha
                                if(q.SBQQ__UpgradedSubscription__c!=null && intCount != wrapperLines.size()&& q1.Ramp_Origin__c ==null){
                                    q1.SBQQ__UpgradedSubscription__c =null;q1.SBQQ__Existing__c =q1.SBQQ__Existing__c;
                                    //q1.sbqq__Quantity__c = q1.SBQQ__Quantity__c + q.SBQQ__PriorQuantity__c;
                                    //q1.SBQQ__PriorQuantity__c = null; 
                                }else if(q.SBQQ__UpgradedSubscription__c!=null && intCount != wrapperLines.size() ){
                                    q1.SBQQ__UpgradedSubscription__c =null;q1.SBQQ__Existing__c =false;
                                    q1.SBQQ__PriorQuantity__c = null; 
                                }
                                else if(q.SBQQ__UpgradedSubscription__c!=null && intCount == wrapperLines.size()){
                                    q1.SBQQ__Quantity__c = q1.SBQQ__Quantity__c + q.SBQQ__PriorQuantity__c;
                                }
                               // q1.Edition_Quantity__c = q.Edition_Quantity__c;q1.SBQQ__OptionLevel__c = 1;
       
                                 q1.Re_Ramped__c = (isFromRampAll == false) ? true : false;
                                
                                toCreate.add(q1);
                            }else if(!rampedQuoteLine.containsKey(sw.Segment+q.SBQQ__ProductCode__c)){
                                system.debug('clone'+upgradeSubMap.get(q.SBQQ__ProductCode__c));
                                SBQQ__QuoteLine__c upgradeQuoteline;
                                if(upgradeSubMap.containsKey(q.SBQQ__ProductCode__c)){
                                    upgradeQuoteline =upgradeSubMap.get(q.SBQQ__ProductCode__c);
                                }else{
                                    upgradeQuoteline= q;
                                }
                                system.debug('clone'+upgradeQuoteline.SBQQ__UpgradedSubscription__c);
                                system.debug('clone'+upgradeQuoteline.SBQQ__PriorQuantity__c);
                               
                                q1 = upgradeQuoteline.clone(false, true);
                                
                                q1.Ramp_Label__c = sw.Segment;q1.SBQQ__Number__c = maxExistingNumber;
                                if(codeVsNumberMap.containsKey(q.SBQQ__ProductCode__c)){
                                    q1.SBQQ__Number__c = codeVsNumberMap.get(q.SBQQ__ProductCode__c);
                                }
                                q1.SBQQ__RequiredBy__c = q.SBQQ__RequiredBy__c;
                                q1.Is_Ramped__c = true;q1.Show_Ramp__c = true;q1.Ramp_Origin__c = 'QLI';
                                q1.Re_Ramped__c = (isFromRampAll == false) ? true : false;
                               /* if(isFromRampAll == false ){
                                    q1.Re_Ramped__c = true;
                                }else{
                                    q1.Re_Ramped__c = false;
                                }*//*&& !isOriginPhantom*/
                                q1.SBQQ__StartDate__c = date.valueOf(sw.StartDate);
                                q1.SBQQ__EndDate__c = date.valueOf(sw.EndDate);
                                q1.SBQQ__Quantity__c = Integer.valueOf(sw.Qty);
                                //commented quantity,prior quantity.Modified Existing and added else part for CR#3562-Rakshitha
                                q1.sbqq__Quantity__c = q1.SBQQ__Quantity__c +(upgradeQuoteline.SBQQ__PriorQuantity__c!=null?upgradeQuoteline.SBQQ__PriorQuantity__c:0);
                                if(q.SBQQ__UpgradedSubscription__c!=null && intCount != wrapperLines.size()){
                                    q1.SBQQ__UpgradedSubscription__c =null;
                                    q1.SBQQ__Existing__c = false;
                                    //q1.sbqq__Quantity__c = q1.SBQQ__Quantity__c + q.SBQQ__PriorQuantity__c;
                                    //q1.SBQQ__PriorQuantity__c = null;
                                }
                               // q1.Edition_Quantity__c = q.Edition_Quantity__c;q1.SBQQ__OptionLevel__c = 1;
                                string requiredBy = String.valueOf(q.SBQQ__RequiredBy__c);
                                string startDate = sw.StartDate;
                                string endDate = sw.EndDate;string quant = String.valueOf(sw.Qty);
                                String key = requiredBy+startDate+endDate+quant+q.SBQQ__ProductCode__c;
                                if(!uniqueKeySet.contains(key)){
                                    uniqueKeySet.add(key);
                                    toCreate.add(q1);
                                }
                            }else {
                                String rampsNumberValue = q.Ramp_Label__c.split('Ramp')[1];
                                rampsNumberValue = rampsNumberValue.trim();
                                Integer qliRampNumber =  Integer.valueOf(rampsNumberValue);
                                system.debug('delete Line'+maxRampNumber+''+qliRampNumber);
                            
                                if(maxRampNumber < qliRampNumber){
                                    system.debug('inside delete Line');
                                    //added below code as a part of CR#3562 -Rakshitha
                                    //When rampline is deleted need to tag the upgraded subscription to last Ramp
                                    SBQQ__QuoteLine__c qli =  rampedQuoteLine.get('Ramp '+maxRampNumber+q.SBQQ__ProductCode__c);
                                    qli.SBQQ__UpgradedSubscription__c = q.SBQQ__UpgradedSubscription__c;
                                    qli.SBQQ__PriorQuantity__c = q.SBQQ__PriorQuantity__c;
                                   // qli.Edition_Quantity__c = q.Edition_Quantity__c;
                                    qli.SBQQ__OptionLevel__c = q.SBQQ__OptionLevel__c;
                                    qli.SBQQ__Existing__c = q.SBQQ__Existing__c;
                                    //qli.SBQQ__Quantity__c = qli.SBQQ__Quantity__c + q.SBQQ__PriorQuantity__c;
                                    qli.sbqq__Quantity__c = qli.sbqq__Quantity__c + (q.SBQQ__PriorQuantity__c !=null?q.SBQQ__PriorQuantity__c:0);
                                    system.debug( rampedQuoteLine.get('Ramp '+maxRampNumber+q.SBQQ__ProductCode__c));
                                    qliToDelete.add(q);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            system.debug('qliToDelete::'+qliToDelete);
            if(!qliToDelete.isEmpty()){
                DELETE qliToDelete;
            }
            if(!toCreate.isEmpty()){
                if(!phantomIdSet.isEmpty()){
                    for(SBQQ__QuoteLine__c qliPhantom : [SELECT id,Is_Ramped__c FROM SBQQ__QuoteLine__c WHERE  id IN : phantomIdSet]){
                        qliPhantom.Is_Ramped__c = true;
                        qliPhantom.Ramp_Origin__c ='QLLI';
                        toCreate.add(qliPhantom);
                    }
                }
                system.debug('toCreate====>'+toCreate);
                upsert toCreate;
                SBQQ__Quote__c quote = [Select id,RampQuote__c from SBQQ__Quote__c where id =:QuoteId];
                if(quote.RampQuote__c == false){
                    quote.RampQuote__c = true;
                    update quote;  
                }
                
                Integer counter = 0;
                String key='';
                map<Integer,SBQQ__QuoteLine__c> quoteLineMap = new map<Integer,SBQQ__QuoteLine__c>();
                map<Integer,SBQQ__QuoteLine__c> tempQuoteLineMap = new map<Integer,SBQQ__QuoteLine__c>();
                List<SBQQ__QuoteLine__c> tempQuoteLines = new List<SBQQ__QuoteLine__c>();
                for(SBQQ__QuoteLine__c qli : [Select id,SBQQ__Product__r.Id,SBQQ__Product__r.ProductCode,SBQQ__RequiredBy__c,Is_Ramped__c,Show_Ramp__c,Ramp_Label__c,SBQQ__Number__c,SBQQ__StartDate__c,SBQQ__EndDate__c,SBQQ__Quote__c,SBQQ__ProductName__c from SBQQ__QuoteLine__c where SBQQ__Quote__c =: QuoteId ORDER BY SBQQ__Number__c ASC]){
                    system.debug('qli in rearrangement'+qli);
                    //counter = qli.SBQQ__Number__c;
                    if(String.isNotBlank(qli.Ramp_Label__c)){
                        
                        String tempKey = qli.SBQQ__Product__r.ProductCode + qli.SBQQ__RequiredBy__c;
                        system.debug('in ramp if ====>'+tempKey+'key'+key);
                        if(tempKey != key){
                            key = tempKey;
                            counter++;
                            qli.SBQQ__Number__c = counter;
                            quoteLineMap.put(counter,qli);
                            system.debug('in when key does not match'+key+'counter'+counter+'quoteLineMap'+quoteLineMap);
                        }else{
                            //Integer tempCounter = counter;
                            Boolean insideLoop=false;
                            tempQuoteLineMap = quoteLineMap;
                            Integer i=1;
                            //Integer currCounter=0;
                            tempQuoteLines = new List<SBQQ__QuoteLine__c>();
                            system.debug('tempQuoteLineMap.size()'+tempQuoteLineMap.size());
                            while(i <= tempQuoteLineMap.size()){
                                
                                if(String.isNotBlank(tempQuoteLineMap.get(i).Ramp_Label__c)){
                                    String tempKey2 = tempQuoteLineMap.get(i).SBQQ__Product__r.ProductCode + tempQuoteLineMap.get(i).SBQQ__RequiredBy__c;
                                    if(tempKey2 == key){
                                        
                                        SBQQ__QuoteLine__c childLine = tempQuoteLineMap.get(i);
                                        system.debug('in when key matches'+childLine);
                                        if(qli.SBQQ__StartDate__c < childLine.SBQQ__EndDate__c && insideLoop == false){
                                            tempQuoteLines.add(childLine);
                                            //Integer diffCounter = counter - i;  2
                                            //Integer currCounter = i;
                                            //counter=i;
                                            insideLoop = true;qli.SBQQ__Number__c = i;counter = i;quoteLineMap.put(i,qli);
                                            system.debug('in when qli numbers are not arranged correctly'+counter+'quoteLineMap'+quoteLineMap+'qli'+qli);
                                            //counter++;
                                            /*childLine.SBQQ__Number__c = i+1;
                                            quoteLineMap.put(i+1,childLine);
                                            system.debug('in when qli numbers are not arranged correctly 2==>'+counter+'quoteLineMap'+quoteLineMap+'childLine'+childLine);*/
                                        }else if(insideLoop == true){tempQuoteLines.add(childLine);}
                                    }
                                }
                                i++;
                            }
                            system.debug('tempQuoteLines'+tempQuoteLines.size());
                            //Integer len = tempQuoteLines.size();
                            if(!tempQuoteLines.isEmpty() && insideLoop==true){
                                for(Integer j=0;j<tempQuoteLines.size();j++){
                                    counter++;
                                    SBQQ__QuoteLine__c childLine1 = tempQuoteLines[j];
                                    childLine1.SBQQ__Number__c = counter;
                                    quoteLineMap.put(counter,childLine1);
                                    system.debug('in mismatch for'+counter+'quoteLineMap'+quoteLineMap+'qli'+qli);
                                }
                            }else if(insideLoop==false){
                                counter++;
                                qli.SBQQ__Number__c = counter;
                                quoteLineMap.put(counter,qli);
                                system.debug('in in empty list'+counter+'quoteLineMap'+quoteLineMap+'qli'+qli);
                            }
                        }
                        
                    }else{
                        system.debug('in no ramp');
                        key = '';
                        counter++;
                        qli.SBQQ__Number__c = counter;
                        quoteLineMap.put(counter,qli);  
                        system.debug('in no ramp after '+key+'counter'+counter+'quoteLineMap'+quoteLineMap);
                    }
                }
                system.debug('final quoteLineMap'+quoteLineMap);
                if(!quoteLineMap.isEmpty()){
                    update quoteLineMap.values();
                }
                  
            }if(toCreate.isEmpty() || toCreate.size() == 1){
                List<SBQQ__QuoteLine__c> quoteLinesToUpdate = new List<SBQQ__QuoteLine__c>();
                Integer counter = Database.countQuery('SELECT count() FROM SBQQ__QuoteLine__c WHERE Ramp_Label__c != \'Ramp 1\' and Ramp_Label__c != \'\' and SBQQ__Quote__c =: QuoteId');
                system.debug('counter'+counter);
                if(counter == 0){
                    for(SBQQ__QuoteLine__c ql : [SELECT id,Ramp_Label__c,Is_Ramped__c FROM SBQQ__QuoteLine__c WHERE Is_Ramped__c = true and SBQQ__Quote__c =: QuoteId]){
                        ql.Ramp_Label__c = '';ql.Is_Ramped__c = false;quoteLinesToUpdate.add(ql);
                    }
                    if(!quoteLinesToUpdate.isEmpty()){
                        update quoteLinesToUpdate;
                    }
                    SBQQ__Quote__c quote = [Select id,RampQuote__c from SBQQ__Quote__c where id =:QuoteId];
                    if(quote.RampQuote__c == true){
                        quote.RampQuote__c = false;
                        update quote;  
                    }
                }
            }
            return strMsg;
        } catch (Exception e) {
            strMsg = e.getMessage();
            return strMsg;
        }
        //return strMsg;
    }
    
    @AuraEnabled
    public static List<SBQQ__QuoteLine__c> getRampedLines(String QuoteId, String phantomSkuSelected, String productCode,String childRequiredBy){
        //Boolean isPhantom = rampOrigin;
        //List<SegmentWrapper> rampedSegments = new List<SegmentWrapper>();
        List<SBQQ__QuoteLine__c> qliList = new List<SBQQ__QuoteLine__c>();
        system.debug('productCode'+productCode+'phantomSkuSelected'+phantomSkuSelected+'childRequiredBy'+childRequiredBy);
        if(String.isNotBlank(productCode) && String.isNotBlank(childRequiredBy)){
            qliList = new List<SBQQ__QuoteLine__c>([Select Id,SBQQ__ProductName__c,Ramped_Line__c,SBQQ__ProductCode__c,Ramp_Label__c,SBQQ__Product__r.Id,SBQQ__Product__r.Name,SBQQ__RequiredBy__c,SBQQ__Existing__c,SBQQ__ProductFamily__c,SBQQ__Quantity__c,SBQQ__StartDate__c,SBQQ__EndDate__c,Is_Ramped__c,Show_Ramp__c from SBQQ__QuoteLine__c where Is_Ramped__c=true AND SBQQ__Quote__c =: QuoteId AND SBQQ__RequiredBy__c=:childRequiredBy /*AND SBQQ__ProductCode__c=: productCode*/ ORDER By SBQQ__StartDate__c]);
        }else{
            for(SBQQ__QuoteLine__c ql : [Select Id,Ramped_Line__c,SBQQ__Existing__c,SBQQ__ProductName__c,SBQQ__ProductCode__c,Ramp_Label__c,SBQQ__Product__r.Id,SBQQ__Product__r.Name,SBQQ__RequiredBy__c,SBQQ__Quantity__c,SBQQ__ProductFamily__c,SBQQ__StartDate__c,SBQQ__EndDate__c,Is_Ramped__c,Show_Ramp__c,SBQQ__ProductOption__c,SBQQ__ProductOption__r.SBQQ__Feature__c,SBQQ__ProductOption__r.SBQQ__OptionalSKU__c,SBQQ__ProductOption__r.SBQQ__OptionalSKU__r.ProductCode,SBQQ__ProductOption__r.SBQQ__Feature__r.SBQQ__Category__c from SBQQ__QuoteLine__c where Is_Ramped__c=true AND SBQQ__Quote__c =: QuoteId AND SBQQ__RequiredBy__c=:phantomSkuSelected AND SBQQ__ProductOption__c != null AND (SBQQ__ProductOption__r.SBQQ__Feature__r.SBQQ__Category__c ='Platform - Editions' OR SBQQ__ProductOption__r.SBQQ__Feature__r.SBQQ__Category__c ='Platform - Bundles') ORDER By SBQQ__StartDate__c]){
                qliList.add(ql);
            }
        }
        /*for(SBQQ__QuoteLine__c rampedQli : qliList){
            Integer quantity = Integer.valueOf(rampedQli.SBQQ__Quantity__c);
            system.debug('rampedQli.SBQQ__Quantity__c'+rampedQli.SBQQ__Quantity__c+'integer'+Integer.valueOf(rampedQli.SBQQ__Quantity__c));
            rampedSegments.add(new SegmentWrapper(rampedQli.Ramp_Label__c,string.valueOf(rampedQli.SBQQ__StartDate__c),String.valueOf(rampedQli.SBQQ__EndDate__c),String.valueOf(quantity),rampedQli.Show_Ramp__c,rampedQli.SBQQ__ProductCode__c,rampedQli.SBQQ__RequiredBy__c,isPhantom));
        }*/
        system.debug('qliList::'+qliList);
        return qliList;
    }

    public static string cloneRecordQuery(String objectName){
        String selects = '';
        // Get a map of field name and field token
        Map<String, Schema.SObjectField> fMap = Schema.getGlobalDescribe().get(objectName.toLowerCase()).getDescribe().Fields.getMap();
        list<string> selectFields = new list<string>();
        if (fMap != null){
            for (Schema.SObjectField ft : fMap.values()){ // loop through all field tokens (ft)
                Schema.DescribeFieldResult fd = ft.getDescribe(); // describe each field (fd)
                if (fd.isCreateable() || fd.getName() == 'SBQQ__ProductCode__c' || fd.getName() == 'Ramp_Enabled__c'){ // field is creatable
                    selectFields.add(fd.getName());
                }
            }
        }
        if (!selectFields.isEmpty()){
            for (string s:selectFields){
                selects += s + ',';
            }
            if (selects.endsWith(',')){selects = selects.substring(0,selects.lastIndexOf(','));}
        }
        system.debug('SEL : '+selects + ' Object Name  : '+objectName);
        return 'SELECT Id,' + selects + ' FROM ' + objectName + ' Where Id IN ';
    }

    public class SegmentWrapper{
        @AuraEnabled public String Segment;
        @AuraEnabled public String StartDate;
        @AuraEnabled public String EndDate;
        @AuraEnabled public String Qty;
        @AuraEnabled public Boolean Ramped;
        @AuraEnabled public String pCode;
        @AuraEnabled public String reqBy;
        @AuraEnabled public Boolean isPhantom;
        public SegmentWrapper(String Segment,String StartDate,String EndDate,String Qty,Boolean Ramped,String pCode,String reqBy,Boolean isPhantom){
            this.Segment = Segment;
            this.StartDate = StartDate;
            this.EndDate = EndDate;
            this.Qty = Qty;
            this.Ramped = Ramped;
            this.pCode = pCode;
            this.reqBy = reqBy;
            this.isPhantom = isPhantom;
        }
    }

    public class QuoteLineWrapper{
        @AuraEnabled public SBQQ__Quote__c quoteObj;
        @AuraEnabled public List<SBQQ__QuoteLine__c> qliList;
        @AuraEnabled public List<SBQQ__QuoteLine__c> rampedList;
        @AuraEnabled public Boolean showAllRamps;
        public QuoteLineWrapper(SBQQ__Quote__c quoteObj,List<SBQQ__QuoteLine__c> qliList,List<SBQQ__QuoteLine__c> rampedList,Boolean showAllRamps){
            this.quoteObj = quoteObj;
            this.qliList=qliList;
            this.rampedList=rampedList;
            this.showAllRamps=showAllRamps;
        }
    }
}