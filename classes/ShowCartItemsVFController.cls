global class ShowCartItemsVFController {
    
    public SBQQ__Quote__c quote {get;set;}
    public Boolean isPartnerSummit {get;set;}
    public Boolean isPartnerAdjustment {get;set;}
    public Boolean isTraditional {get;set;}
    public Boolean isSummitFederal {get;set;}

    public Boolean isFy21VolumeTier { get; set; }
    public Boolean isFy21SingleTier { get; set; }
    public List<CoSellAtivity> coSellList { get; private set; }
    public list<SBQQ__QuoteLine__c> quoteLineList {get;set;}
    public list<SBQQ__Subscription__c> subscriptionsListTraditional {get;set;}
    public list<SBQQ__Subscription__c> subscriptionsListFederal {get;set;}
    public list<SBQQ__Subscription__c> subscriptionsListPartnerSummit {get;set;}
    public list<SBQQ__Subscription__c> subscriptionsListSummitDiscount {get;set;}
    public list<SBQQ__QuoteLine__c> listOfRecurringLineItems {get;set;}
    public list<SBQQ__QuoteLine__c> listOfRecurringRenewalLineItems {get;set;}
    public list<SBQQ__QuoteLine__c> listOfOneTimeLineItems {get;set;}
    public list<SBQQ__QuoteLine__c> ListOfQuoteLineDetails {get;set;}

   // public List<Billing_Schedule__c> lstBillingSchedules {get;set;}

   // public SB_YearWiseSplitUtil.YearWiseSplitWrapper yearWiseSplit { get; set; }
    
    public Boolean showDRSourced {get;set;}
    public Boolean showDRTeamResell {get;set;}
    public Boolean showDRTeamTech {get;set;}
    public Boolean isSummitDiscount {get;set;}
    
    public Boolean isRenewal {get;set;}
    public Boolean isAmendement {get;set;}
    public String priceListName {get; set;}
    public Boolean hasRecurringLines {get;set;}

    public Boolean hasRecurringRenewalLines {get;set;}

    public Boolean hasOneTimeLines {get;set;}
    public Boolean hasSupportLine {get;set;}
   
    public Double netVariance {get; set;}
    public Decimal totalUnitRecommendedNet {get; set;}
    public Decimal totalNetPUPY {get; set;}
    public Decimal totalUnitRecommended {get; set;}
    public Decimal totalPriceWithAdjustment {get; set;}

    public string url {get;set;}
    public String quoteRecordId {get;set;}
    public String isClickFromQLE {get;set;}
    public Boolean showBtnOnQLE {get;set;}

    public Decimal totalBaseExtendedPrice {get; set;}
    public Decimal totalStandardPrice {get; set;}
    public Decimal totalNetPrice {get; set;}
    public Decimal totalACV {get; set;}
    public Decimal totalMRR {get; set;}
    public Decimal totalPPU {get; set;}
    public Decimal totalNetToZscaler {get; set;}
    public Decimal totalZSRP {get; set;}
    public Decimal supportNetPrice {get; set;}
    public Double supportDiscount {get; set;}
    public Decimal totalNetUnitPrice {get; set;}
    public Decimal noOfUsers = 0;

    public Decimal oldppu{get;set;}
    public Decimal newppu{get;set;}
    public Decimal changeofPPU{get;set;}

    // Approvals Section on Email Template 
    public String InstanceURL{get; set;}
    public ID ApproverId{get; set;}
    public ID ApprovalRequestId{get; set;}
    public boolean IsAssignment {get; set;}
    public boolean IsApproved {get; set;}
    public boolean IsApproveOrReject {get; set;}
    public Boolean IsShowApprovalSection {get;set;}
    public boolean IsEmailTemplateView {get;set;}
    public boolean IsShowCartView {get;set;}

    public String quoteId {get;set;}
    public String recordtypeName {get;set;}
   // public Boolean isOrangePartner { get; set; }  
    
    public list<sbaa__Approval__c> approvalList {get;set;}

    //  Collapsible table...
    //public list<SBQQ__QuoteLine__c> qLinesList {get;set;}
    public id pid {get;set;}
    public boolean showChild {get;set;}
    public List<WrapperList> wList {get;set;}
    public String BtnValue {get;set;}


    public ShowCartItemsVFController(){

        quote = new SBQQ__Quote__c();
        quoteLineList = new list<SBQQ__QuoteLine__c>();
        subscriptionsListTraditional = new list<SBQQ__Subscription__c>();
        subscriptionsListFederal = new list<SBQQ__Subscription__c>();
        subscriptionsListPartnerSummit = new list<SBQQ__Subscription__c>();
        subscriptionsListSummitDiscount = new list<SBQQ__Subscription__c>();
        listOfRecurringLineItems = new list<SBQQ__QuoteLine__c>();
        listOfRecurringRenewalLineItems = new list<SBQQ__QuoteLine__c>();
        listOfOneTimeLineItems = new list<SBQQ__QuoteLine__c>();
        ListOfQuoteLineDetails = new list<SBQQ__QuoteLine__c>();
        isTraditional = true;

      //  lstBillingSchedules = new List<Billing_Schedule__c>();
        approvalList = new List<sbaa__Approval__c>();

        url  = System.Url.getSalesforceBaseURL().toExternalForm();
        isFy21VolumeTier = false;
        isFy21SingleTier = false;
        isRenewal = false;
        isAmendement = false;

        String quoteId = ApexPages.currentPage().getParameters().get('id');
        quoteRecordId = ApexPages.currentPage().getParameters().get('id');
        isClickFromQLE = ApexPages.currentPage().getParameters().get('isClickQLE');
        if(isClickFromQLE == 'Yes'){
            showBtnOnQLE = true;
        }else{
            showBtnOnQLE = false;
        }
        
        coSellList = new List<CoSellAtivity>();
        priceListName = '';
        isSummitFederal = false;

        hasRecurringLines = false;
        hasRecurringRenewalLines=false;
        hasOneTimeLines = true;
        hasSupportLine = false;
        totalBaseExtendedPrice = totalStandardPrice = totalNetPrice = totalACV = totalMRR = totalPPU = totalNetToZscaler = totalZSRP = 0;
        totalUnitRecommended = totalNetUnitPrice = totalPriceWithAdjustment = 0;
        supportNetPrice = supportDiscount = netVariance = 0.00;

        // Collapsible Table...
        BtnValue = '+';
        wList = new List<WrapperList>();
        
        // Query for Quote record..
        if(quoteId != null && quoteId != ''){
            
            //CR# 3959 - Added Summit_Distribution__c,Transacting_Distributor_Discount__c to below query
            quote = [SELECT id, 
                        Name, SBQQ__Account__r.Name,SBQQ__Opportunity2__r.Name, 
                        Price_List__c,                              
                        SBQQ__BillingFrequency__c,SBQQ__PaymentTerms__c,SBQQ__StartDate__c,
                        SBQQ__EndDate__c
                        FROM SBQQ__Quote__c 
                        WHERE Id =: quoteId];
            
            if(quote.Price_List__c != null && (quote.Price_List__c == 'FY21 Volume Tier Price List' || quote.Price_List__c == 'FY22 Volume Tier Upsell Price List')){
                isFy21VolumeTier = true;
                priceListName = quote.Price_List__c;
            }
            
            if(quote.Price_List__c != null && quote.Price_List__c == 'FY21 Federal Bundles Price List'){
                isFy21VolumeTier = true;
                priceListName = quote.Price_List__c;
            }
            
            if(quote.Price_List__c != null && (quote.Price_List__c  == 'FY21 Single Tier Price List' || quote.Price_List__c == 'FY22 Single Tier Price List' || quote.Price_List__c == 'FY22 Single Tier Upsell Price List')){
                isFy21SingleTier = true;
                priceListName = quote.Price_List__c;
            }
            
            if(quote.Price_List__c != null && quote.Price_List__c == 'FY21 Federal Editions Price List'){
                isFy21SingleTier = true;
                priceListName = quote.Price_List__c;
            }
            
      
            if(!isFy21VolumeTier && !isFy21SingleTier){
                priceListName = quote.Price_List__c;
            }           
                 
            // Query the quote lines....
            quoteLineList = [SELECT Id,Name,SBQQ__ProductName__c, SBQQ__ProductCode__c, 
                            SBQQ__ListPrice__c, 
                            SBQQ__Quantity__c, SBQQ__StartDate__c, SBQQ__EndDate__c, SBQQ__SubscriptionTerm__c,
                            SBQQ__Discount__c,AdditionalDiscountUnit__c,SBQQ__Number__c,
                            SBQQ__RequiredBy__c,SBQQ__NetTotal__c,SBQQ__Product__r.SBQQ__SubscriptionType__c,
                            SBQQ__EffectiveQuantity__c,Show_Ramp__c
                            FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =: quoteId AND SBQQ__ProductCode__c != null
                            AND Line_Status__c != 'Existing' /* AND Line_Status__c != 'Cancelled' */
                            ORDER BY SBQQ__Number__c]; 

            // Create Wrapper List for Collapsible Table...
            for(SBQQ__QuoteLine__c qline: quoteLineList){
                WrapperList objWrapper = new WrapperList(qline,false,'+');
                wList.add(objWrapper);
            }              
                            
            
            // Query the subscriptions....
            if(quote != null && quote.SBQQ__Account__c != null){

                subscriptionsListTraditional =  [SELECT id,SBQQ__Account__c,SBQQ__Account__r.Name,
                                                SBQQ__ProductName__c,SBQQ__Quantity__c,SBQQ__StartDate__c,
                                                SBQQ__EndDate__c
                                                FROM SBQQ__Subscription__c 
                                                WHERE SBQQ__Account__c =: quote.SBQQ__Account__c                                               
                                                AND SBQQ__Contract__r.Status = 'Activated'];
                
                subscriptionsListFederal =  [SELECT id,SBQQ__Account__c,SBQQ__Account__r.Name,
                                                SBQQ__ProductName__c,SBQQ__Quantity__c,SBQQ__StartDate__c,
                                                SBQQ__EndDate__c
                                                FROM SBQQ__Subscription__c 
                                                WHERE SBQQ__Account__c =: quote.SBQQ__Account__c                                               
                                                AND SBQQ__Contract__r.Status = 'Activated'];


                subscriptionsListSummitDiscount =  [SELECT id,SBQQ__Account__c,SBQQ__Account__r.Name,
                                                SBQQ__ProductName__c,SBQQ__Quantity__c,SBQQ__StartDate__c,
                                                SBQQ__EndDate__c
                                                FROM SBQQ__Subscription__c 
                                                WHERE SBQQ__Account__c =: quote.SBQQ__Account__c                                               
                                                AND SBQQ__Contract__r.Status = 'Activated'];

            
            }
            
            // Query for Recurring Lines....
            listOfRecurringLineItems = [SELECT Id,Name,SBQQ__ProductName__c, SBQQ__ProductCode__c, 
                            SBQQ__ListPrice__c, 
                            SBQQ__Quantity__c, SBQQ__StartDate__c, SBQQ__EndDate__c, SBQQ__SubscriptionTerm__c,
                            SBQQ__Discount__c,AdditionalDiscountUnit__c,SBQQ__Number__c,
                            SBQQ__RequiredBy__c,SBQQ__NetTotal__c,SBQQ__Product__r.SBQQ__SubscriptionType__c,
                            SBQQ__EffectiveQuantity__c,Show_Ramp__c
                            FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =: quoteId AND SBQQ__ProductCode__c != null 
                                        AND SBQQ__Product__r.SBQQ__SubscriptionType__c = 'Renewable' AND Line_Status__c != 'Cancelled'                                    
                                        AND Line_Status__c != 'Renewed' 
                                        AND Line_Status__c != 'Existing' 
                                        ORDER BY SBQQ__Number__c];
            

            if(!listOfRecurringLineItems.isEmpty()){
                hasRecurringLines = true;
            }

            // Query for Recurring Renewal Lines....
            listOfRecurringRenewalLineItems = [SELECT Id,Name,SBQQ__ProductName__c, SBQQ__ProductCode__c, 
                            SBQQ__ListPrice__c, 
                            SBQQ__Quantity__c, SBQQ__StartDate__c, SBQQ__EndDate__c, SBQQ__SubscriptionTerm__c,
                            SBQQ__Discount__c,AdditionalDiscountUnit__c,SBQQ__Number__c,
                            SBQQ__RequiredBy__c,SBQQ__NetTotal__c,SBQQ__Product__r.SBQQ__SubscriptionType__c,
                            SBQQ__EffectiveQuantity__c,Show_Ramp__c
                            FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =: quoteId AND SBQQ__ProductCode__c != null 
                                                AND SBQQ__Product__r.SBQQ__SubscriptionType__c = 'Renewable' AND Line_Status__c != 'Cancelled'                                                 
                                                AND Line_Status__c = 'Renewed'
                                                AND Line_Status__c != 'Existing'
                                                ORDER BY SBQQ__Number__c];


            if(!listOfRecurringRenewalLineItems.isEmpty()){
                hasRecurringRenewalLines = true;
            }

            // Query for One Time Lines...
            listOfOneTimeLineItems = [SELECT Id,Name,SBQQ__ProductName__c, SBQQ__ProductCode__c, 
                            SBQQ__ListPrice__c, 
                            SBQQ__Quantity__c, SBQQ__StartDate__c, SBQQ__EndDate__c, SBQQ__SubscriptionTerm__c,
                            SBQQ__Discount__c,AdditionalDiscountUnit__c,SBQQ__Number__c,
                            SBQQ__RequiredBy__c,SBQQ__NetTotal__c,SBQQ__Product__r.SBQQ__SubscriptionType__c,
                            SBQQ__EffectiveQuantity__c,Show_Ramp__c
                            FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =: quoteId AND SBQQ__ProductCode__c != null 
                                    AND SBQQ__Product__r.SBQQ__SubscriptionType__c != 'Renewable' AND Line_Status__c != 'Cancelled'
                                    AND Line_Status__c != 'Existing'  
                                    ORDER BY SBQQ__Number__c];
            
            if(!listOfOneTimeLineItems.isEmpty()){
                hasOneTimeLines = true;
            }

            // Query for Support Lines....
            List<SBQQ__QuoteLine__c> supportLines = [SELECT Id,Name,SBQQ__ProductName__c, SBQQ__ProductCode__c, 
                            SBQQ__ListPrice__c, 
                            SBQQ__Quantity__c, SBQQ__StartDate__c, SBQQ__EndDate__c, SBQQ__SubscriptionTerm__c,
                            SBQQ__Discount__c,AdditionalDiscountUnit__c,SBQQ__Number__c,
                            SBQQ__RequiredBy__c,SBQQ__NetTotal__c,SBQQ__Product__r.SBQQ__SubscriptionType__c,
                            SBQQ__EffectiveQuantity__c,Show_Ramp__c
                            FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =: quoteId and 
                                                    Line_Status__c != 'Cancelled'];
            if(!supportLines.isEmpty()){
                hasSupportLine = true;
                if(supportLines[0].SBQQ__NetTotal__c != null){
                    supportNetPrice = supportLines[0].SBQQ__NetTotal__c;
                }
                    
            }
                
            // Query for Quote Line Details to visible on Cart Details Table...
            ListOfQuoteLineDetails = [SELECT Id,Name,SBQQ__ProductName__c, SBQQ__ProductCode__c, 
                            SBQQ__ListPrice__c, 
                            SBQQ__Quantity__c, SBQQ__StartDate__c, SBQQ__EndDate__c, SBQQ__SubscriptionTerm__c,
                            SBQQ__Discount__c,AdditionalDiscountUnit__c,SBQQ__Number__c,
                            SBQQ__RequiredBy__c,SBQQ__NetTotal__c,SBQQ__Product__r.SBQQ__SubscriptionType__c,
                            SBQQ__EffectiveQuantity__c,Show_Ramp__c
                            FROM SBQQ__QuoteLine__c WHERE SBQQ__Quote__c =: quoteId AND SBQQ__ProductCode__c != null
                                        AND Line_Status__c != 'Existing' /* AND Line_Status__c != 'Cancelled' */
                                        ORDER BY SBQQ__Number__c];
     
            // Display previous approver records...
            approvalList =  [SELECT Id,sbaa__ApprovalStep__c, sbaa__Status__c, sbaa__ApprovedBy__r.Name, sbaa__CommentsLong__c,sbaa__Archived__c 
                            FROM sbaa__Approval__c WHERE Quote__c =: quoteId AND sbaa__Status__c ='Approved'
                            AND sbaa__Archived__c = false];
            
        }
    }


    public Pagereference GetChildRecords(){
        List<WrapperList> temp = new List<WrapperList>();
        temp.addAll(wList);
        for(WrapperList objWrapper: wList){
            if(objWrapper.parentRecord.SBQQ__RequiredBy__c == pid){
                objWrapper.showRow = !objWrapper.showRow;
                objWrapper.styleClass = !objWrapper.showRow ? 'displayNone alignTextRight' : 'alignTextRight';
            }
            if(objWrapper.parentRecord.Id == pid){
                objWrapper.btnLabelVal = objWrapper.btnLabelVal == '+' ? '-' : '+';
            }
        }

        BtnValue = '-';
        return null;
    }
    
    public Pagereference onCancel(){
    // return to QLE.....
        PageReference resPg = Page.SBQQ__SB;
        resPg.getParameters().put('scontrolCaching','1');
        resPg.getParameters().put('id',quoteId);  
        resPg.setRedirect(true);
        return resPg;
    }


    public Class CoSellAtivity{
        public string Activity {get;set;}
        public string PartnerName {get;set;}
        public Decimal Margin {get;set;}
        
        public CoSellAtivity(String activity,String partName, Decimal margin){
            this.Activity = activity;
            this.PartnerName = partName;
            this.Margin = margin;
        }
        
    }

    public Class WrapperList{
        public SBQQ__QuoteLine__c parentRecord {get; set;}
        public Boolean showRow {get; set;}
        public String btnLabelVal {get;set;}
        public String styleClass {get;set;}

        public WrapperList(SBQQ__QuoteLine__c parentRecord, Boolean showChild, String btnLabelVal){
            this.parentRecord = parentRecord;
            //this.childRecord = childRecord;
            this.showRow = parentRecord.SBQQ__RequiredBy__c == null ? true : false;
            this.btnLabelVal = '+';
            this.styleClass = !this.showRow ? 'displayNone alignTextRight' : 'alignTextRight';
         //   this.parentRowClass = this.showRow ? 'alignTextRight'
        }
        
    }

}