import { LightningElement, api, track , wire} from 'lwc';
import getAllProducts from '@salesforce/apex/extendLinesController.getAllProducts';
import getAllActiveSubscriptions from '@salesforce/apex/extendLinesController.getAllActiveSubscriptions';
import createQuoteLinesFromSubscription from '@salesforce/apex/extendLinesController.createQuoteLinesFromSubscription';
import getExtendedLinesForAddOn from '@salesforce/apex/extendLinesController.getExtendedLinesForAddOn';
import { NavigationMixin} from 'lightning/navigation';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

const columns = [
    { label: 'Product Name', fieldName: 'SBQQ__ProductName__c'},
    { label: 'Product Code', fieldName: 'SBQQ__ProductCode__c' },
    {
        label: '',
        type: "button", typeAttributes: {
            label: {fieldName : 'labelValue'},
            name: 'Renew Line',
            title: 'Renew Line',
            disabled: false,
            value: 'Renew Line',
            variant: {fieldName : 'variantValue'},
            iconPosition : 'left',
        }
    },
];
const renewalColumns = [
    { label: 'Product Name', fieldName: 'SBQQ__ProductName__c'},
    { label: 'Product Code', fieldName: 'Product_Code__c' },
	{ label: 'Contract #', fieldName: 'SBQQ__ContractNumber__c' },
	{ label: 'Renewal Quantity', fieldName: 'SBQQ__RenewalQuantity__c' },
	{ label: 'Start Date', fieldName: 'SBQQ__StartDate__c' },
	{ label: 'End Date', fieldName: 'SBQQ__EndDate__c' },
];
export default class ExtendLines extends NavigationMixin(LightningElement) {
    @api recordId;
    @track columns = columns;
    @track renewalColumns = renewalColumns;
    @track isLoaded = false;
    @track isShowSpinner = false;
    @track gridExpandedRows = [];
    @track dataTable = [];
	@track renewalDataTable = [];
    @track showTable = false;    
    @track showDataTable = false;    
    @track allQuoteData;
	@track allSubsLineData=[];
    @track segmentData = [];
    @track allquoteLineData=[];
	@track originalQuoteLineData=[];
    @api hideChildAction = 'slds-hide';   
    @track blnRefresh = false;
    @track showRenewButton = false;
    @track quoteName;
    @track quoteStartDate;
    @track quoteEndDate;
    @track isPhantom = false;
    @api existingRampsAvailable= false;
    @track rampedQliProductName = [];
    @api rampedQLiDefaultName='';
    @api rampedQliDefaultCode;
    @api allDataForRampedQl = [];
    @api extendedLineData=[];
    @api blnShowTable = false;
    @track defaultData = [];
    @track selectedSubsLines = [];
    @track blnPhantomWasRamped = false;
    @track phantomId;
    @track buttonLabel;
    @track rampedAllList =[];
    @track error;
	@track selectedTab;
	
    tabselect(evt) {
        this.isLoaded = false;
        this.isShowSpinner = true;
		this.showDataTable = false;
        this.selectedTab = evt.target.name;
        this.gridExpandedRows = [];
        if (this.selectedTab == 'Renew Non Co-Term Add Ons') {
            this.showRenewButton = false;
            this.getProductData();
        } else {
			this.getRenewalData();
            console.log('in renew subscriptions');
        }
    }
	
    connectedCallback() {
        this.isLoaded = false;
        this.isShowSpinner=true;
        this.getRenewalData();
    }
    getProductData() {
        //this.isLoaded = false;
        getAllProducts({QuoteId:this.recordId})
            .then(results => {    
            console.log('results::',results.quoteObj.Name,'data',results.qliList);
            this.quoteName = results.quoteObj.Name;
            this.quoteStartDate =results.quoteObj.SBQQ__StartDate__c;
            this.quoteEndDate =results.quoteObj.SBQQ__EndDate__c;
            if(results.showAllRamps == true){
                this.buttonLabel = 'Ramp All';
            }else{
                this.buttonLabel = 'Edit Ramps';
            }
            this.rampedAllList = results.rampedList;
            if(results.qliList!==null && results.qliList!==undefined && results.qliList.length!==0){
                this.allQuoteData = results.qliList[0].SBQQ__Quote__r;
                this.blnRefresh= true;
				console.log('results.qliList',results.qliList);
                this.allquoteLineData = JSON.parse(JSON.stringify(results.qliList));
				console.log('this.allquoteLineData11',this.allquoteLineData);
                for (let i = 0; i < this.allquoteLineData.length; i++) {
                    if (this.allquoteLineData[i].SBQQ__Quote_Lines__r !== null && this.allquoteLineData[i].SBQQ__Quote_Lines__r !== undefined) {
                        this.gridExpandedRows.push(this.allquoteLineData[i].Id);
                        console.log('this.allquoteLineData::', this.allquoteLineData);
                        var quoteLineData = this.allquoteLineData[i].SBQQ__Quote_Lines__r;
                        console.log('quoteLineData::', quoteLineData);
                        var innerLine = quoteLineData.length;
                        this.originalQuoteLineData.push(this.allquoteLineData[i].Id);
                        for (let j = 0; j < this.allquoteLineData[i].SBQQ__Quote_Lines__r.length ; j++){
                            console.log('this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].Source_for_Custom_Renewal__c::'+this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].is_Extended__c);
                            if (this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].is_Extended__c == true) {
                                this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].variantValue = 'success';
                                this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].labelValue = 'Edit Line';
                            } else {
                                this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].variantValue = 'neutral';
                                this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].labelValue = 'Renew Line';
                            }
							this.originalQuoteLineData.push(this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].Id);
                        }

                    }
                }
                for (let i = 0; i < this.allquoteLineData.length; i++) {
                    this.allquoteLineData[i]._children = this.allquoteLineData[i].SBQQ__Quote_Lines__r;
                    delete this.allquoteLineData[i].SBQQ__Quote_Lines__r;
                }
                let finalData =[];
                finalData = this.allquoteLineData;
                this.dataTable =finalData;
                this.allquoteLineData=[];
                finalData =[];

                console.log('this.dataTable::',this.dataTable);
                this.showTable = true;
                this.showDataTable = true;
                
            }else{
                this.showTable = true;
                this.showDataTable = false;
            }
            this.isLoaded = true;
            this.isShowSpinner = false;
        })
        .catch(error => {
            this.error = error;
            this.isLoaded = true;
            this.isShowSpinner = false;
            console.log('error::'+JSON.stringify(this.error));
            this.showToastInfo(JSON.stringify(this.error));
            
        });
    }

    getRenewalData() {
        getAllActiveSubscriptions({quoteId:this.recordId})
            .then(results => {    
            console.log('results::',results.subLineList);
			this.quoteName = results.quoteObj.Name;
            this.quoteStartDate =results.quoteObj.SBQQ__StartDate__c;
            this.quoteEndDate =results.quoteObj.SBQQ__EndDate__c;
            if(results.subLineList !==null && results.subLineList !==undefined && results.subLineList.length!==0){
				this.allSubsLineData = JSON.parse(JSON.stringify(results.subLineList));
				console.log('this.allSubsLineData',this.allSubsLineData);
                for (let i = 0; i < this.allSubsLineData.length; i++) {
                    this.gridExpandedRows.push(this.allSubsLineData[i].Id);
                    this.allSubsLineData[i]._children = this.allSubsLineData[i].ChildSubscriptions__r;
                    delete this.allSubsLineData[i].ChildSubscriptions__r;
                }
                this.showRenewButton = true;
				let finalData =[];
                finalData = this.allSubsLineData;
                this.renewalDataTable = finalData;
				finalData =[];

                this.blnRefresh= true;
                
                console.log('this.dataTable::',this.renewalDataTable,'this.gridExpandedRows',this.gridExpandedRows);
                this.showTable = true;
                this.showDataTable = true; 
            }else{
                this.showTable = true;
                this.showRenewButton = false;
                this.showDataTable = false;
            }
                this.isLoaded = true;
                this.isShowSpinner = false;
        })
        .catch(error => {
            this.isLoaded = true;
            this.isShowSpinner = false;
			this.error = error;
			console.log('error::'+JSON.stringify(this.error));
			this.showToastInfo(JSON.stringify(this.error));
			
		});
    }

	callRenewalRowAction(event) {
    }
    
    callRowAction(event) {
        this.allDataForRampedQl = [];
        this.extendedLineData = [];
        var platformEndDate;
        console.log('event.detail.row.Id::'+event.detail.row.Id);
        console.log('event.detail.row.Name::'+event.detail.row.Name);

        getExtendedLinesForAddOn({quoteId: this.recordId,selectedAddOn:event.detail.row.Id})
        .then(results => {
            console.log('getExisitngRampLinesForPhantom',results);
            if(results!==null && results!==undefined && results.length>0){
                for (let i = 0; i < results.length; i++){
                    if (results[i].Is_Platform_SKU__c == false) {
                        this.extendedLineData.push(results[i]);
                    } else {
                        platformEndDate = results[i].SBQQ__EndDate__c
                    }
                }
                console.log('this.extendedLineData',this.extendedLineData);
                this.template.querySelector('c-extend-lines-modal').setData(event.detail.row.SBQQ__StartDate__c,event.detail.row.SBQQ__EndDate__c,event.detail.row.Id,this.recordId,event.detail.row.SBQQ__Quantity__c,true,'','',true,this.quoteEndDate,this.extendedLineData,event.detail.row.Id,platformEndDate);
            }else{
                this.template.querySelector('c-extend-lines-modal').setData(event.detail.row.SBQQ__StartDate__c,event.detail.row.SBQQ__EndDate__c,event.detail.row.Id,this.recordId,event.detail.row.SBQQ__Quantity__c,true,event.detail.row.SBQQ__ProductCode__c,event.detail.row.SBQQ__RequiredBy__c,true,this.quoteEndDate,this.extendedLineData,event.detail.row.Id,platformEndDate);
            }
        })
        .catch(error =>{
            this.error = error;
            console.log('error::'+JSON.stringify(this.error));
            this.showToastInfo(JSON.stringify(this.error));

        })
        this.template.querySelector('c-extend-lines-modal').openModal();
    }

    renewLines() {
        this.isShowSpinner = true;
        var el = this.template.querySelector('lightning-tree-grid');
        console.log('tree grid', el);
        var selected = el.getSelectedRows();
        console.log('selectedSubsLines', this.selectedSubsLines, selected);
        if (selected == undefined || selected == null || selected.length == 0) {
            this.isShowSpinner = false;
            this.showToastInfo('Please select atleast one line to renew.');
        } else {
            createQuoteLinesFromSubscription({ QuoteId: this.recordId, subscriptionLineList: selected })
                .then(results => {
                    if (results === 'success') {
                        this.isShowSpinner = false;
                        this.onBack();
                    } else {
                        this.showToastInfo(results);
                        this.isShowSpinner = false;
                    }
                })
                .catch(error => {
                    this.error = error;
                    this.isShowSpinner = false;
                    this.showToastInfo(JSON.stringify(this.error));
                });
        }
    }

    onParent(event){
        this.dataTable =[];
        this.getProductData();
    }

    onBack(){
		let link = '/apex/sbqq__sb?id=' +this.recordId
					+ '#quote/le?qId=' + this.recordId;
		this[NavigationMixin.Navigate]({
        type: 'standard__webPage',
        attributes: {
            url: link
        },
		}, true);
    }
    
    showToastInfo(msg){
        const toastEvnt = new  ShowToastEvent( {
            title: 'Error!',
            message: msg,
            variant: 'error',
            mode: "dismissable"
        });
        this.dispatchEvent (toastEvnt);
    }
}