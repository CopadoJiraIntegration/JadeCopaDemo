import { LightningElement, api, track , wire} from 'lwc';
import getAllProducts from '@salesforce/apex/rampProductsController.getAllProducts';
import getRampedLines from '@salesforce/apex/rampProductsController.getRampedLines';
import { NavigationMixin} from 'lightning/navigation';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

const columns = [
    { label: 'Product Name', fieldName: 'SBQQ__ProductName__c'},
    { label: 'Product Code', fieldName: 'SBQQ__ProductCode__c' },
    {
        label: '',
        type: "button", typeAttributes: {
            label: {fieldName : 'labelValue'},
            name: 'Ramp',
            title: 'Ramp',
            disabled: false,
            value: 'Ramp',
            variant: {fieldName : 'variantValue'},
            iconPosition : 'left',
        },cellAttributes: 
        { class: {fieldName : 'showHideClass'}}
    },
];
export default class RampProducts extends NavigationMixin(LightningElement) {
    @api recordId;
    @track columns = columns;
    @track dataTable = [];
    @track showTable = false;
    @track showDataTable = false;
    @track allQuoteData;
    @track segmentData = [];
    @track allquoteLineData=[];
	@track originalQuoteLineData=[];
    @api hideChildAction = 'slds-hide';
    @track blnRefresh = false;
    @track quoteName;
    @track quoteStartDate;
    @track quoteEndDate;
    @track isPhantom = false;
    @api existingRampsAvailable= false;
    @track rampedQliProductName = [];
    @api rampedQLiDefaultName='';
    @api rampedQliDefaultCode;
    @api allDataForRampedQl=[];
    @api blnShowTable = false;
    @track defaultData = [];
    @track blnPhantomWasRamped = false;
    @track phantomId;
    @track buttonLabel;
    @track rampedAllList =[];
    @track error;
    @track disableRampAll = true;
    @track isMixedQuote = false;

    connectedCallback() {
        this.isMixedQuote = false;
        this.getProductData();
    }
    getProductData(){
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
                this.allquoteLineData = JSON.parse(JSON.stringify(results.qliList));
                for (let i = 0; i < this.allquoteLineData.length; i++) {
                    if (this.allquoteLineData[i].SBQQ__Quote_Lines__r !== null && this.allquoteLineData[i].SBQQ__Quote_Lines__r !== undefined) {
                        console.log('this.allquoteLineData::', this.allquoteLineData);
                        if (this.allquoteLineData[i].Is_Ramped__c == true || this.allquoteLineData[i].Id == this.phantomId) {
                            
                            this.allquoteLineData[i].variantValue = 'success';
                            this.allquoteLineData[i].labelValue = 'Edit Line';
                            this.allquoteLineData[i].showHideClass = 'slds-show';
                        } else {
                            this.allquoteLineData[i].variantValue = 'neutral';
                            this.allquoteLineData[i].labelValue = 'Ramp Line';
                            this.allquoteLineData[i].showHideClass = 'slds-show';
                        }
                        if(this.allquoteLineData[i].SBQQ__Existing__c == true) {
                            this.isMixedQuote = true;
                            this.allquoteLineData[i].showHideClass = 'slds-hide';
                        }
                        var quoteLineData = this.allquoteLineData[i].SBQQ__Quote_Lines__r;
                        console.log('quoteLineData::', quoteLineData);
                        var innerLine = quoteLineData.length;
                        this.originalQuoteLineData.push(this.allquoteLineData[i].Id);
                        for (let j = 0; j < this.allquoteLineData[i].SBQQ__Quote_Lines__r.length ; j++){
                            if (this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].Is_Ramped__c == true) {
                                this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].variantValue = 'success';
                                this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].labelValue = 'Edit Line';
                            } else {
                                this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].variantValue = 'neutral';
                                this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].labelValue = 'Ramp Line';
                            }
                            if(this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].SBQQ__Existing__c == true) {
                                this.isMixedQuote = true;
                            }
                            this.allquoteLineData[i].SBQQ__Quote_Lines__r[j].showHideClass = 'slds-show';
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
                this.disableRampAll = false;

            }else{
                this.showTable = true;
                this.showDataTable = false;
                this.disableRampAll = true;
            }
                console.log('mixedQuote',this.isMixedQuote);
        })
            .catch(error => {
                this.error = error;
                console.log('error::'+JSON.stringify(this.error));
                this.showToastInfo(JSON.stringify(this.error));

            });
    }
    callRowAction(event) {
        this.allDataForRampedQl = [];
        this.rampedQLiDefaultName = '';
        this.rampedQliDefaultCode = '';
        this.rampedQliProductName = [];

        let a = event.detail.row;
        this.segmentData = {cmpId:event.detail.row.Id,cmpName:event.detail.row.Name};
        if(event.detail.row.SBQQ__ProductCode__c == undefined && event.detail.row.SBQQ__RequiredBy__c==undefined){
            this.isPhantom = true;
        }else{
            this.isPhantom = false;
        }

        getRampedLines({ QuoteId: this.recordId,phantomSkuSelected :event.detail.row.Id,productCode : event.detail.row.SBQQ__ProductCode__c,childRequiredBy :event.detail.row.SBQQ__RequiredBy__c})
        .then(results => {
            console.log('getExisitngRampLinesForPhantom',results);
            this.rampedQliProductName=[];
            // Before
            // if (results !== null && results !== undefined && results.length > 0 && this.isMixedQuote == false) 
            if (results !== null && results !== undefined && results.length > 0) {
                if (this.isPhantom == true) {
                    this.existingRampsAvailable = false;
                } else {
                    this.existingRampsAvailable = true;
                }
                this.blnShowTable = false;
                let bufferArray=[];
                var blnShowDefault = false;
                for (let i = 0; i < results.length; i++){
                    if (this.isPhantom == false) {
                        if (!bufferArray.includes(results[i].SBQQ__ProductName__c)) {
                            bufferArray.push(results[i].SBQQ__ProductName__c);
                            this.rampedQliProductName.push({ label: results[i].SBQQ__ProductName__c, value: results[i].SBQQ__ProductCode__c });
                        }
                        if (event.detail.row.SBQQ__ProductName__c === results[i].SBQQ__ProductName__c) {
                            blnShowDefault = true;
                            this.rampedQLiDefaultName = event.detail.row.SBQQ__ProductName__c;
                            this.rampedQliDefaultCode = event.detail.row.SBQQ__ProductCode__c;
                        }
                        if(results[i].SBQQ__Existing__c == true){
                            this.existingRampsAvailable = false;
                        }
                    }
                    this.allDataForRampedQl.push(results[i]);
                }
                console.log(' this.allDataForRampedQl:::::::', this.allDataForRampedQl);
                if(blnShowDefault == false && this.isPhantom == false){
                    /*var startDate = event.detail.row.SBQQ__StartDate__c;
                    var endDate = event.detail.row.SBQQ__EndDate__c;
                    var quantity = event.detail.row.SBQQ__Quantity__c;
                    var prodCode = event.detail.row.SBQQ__ProductCode__c;
                    var reqdBy = event.detail.row.SBQQ__RequiredBy__c;*/
                    console.log('event.detail.row.SBQQ__Quantity__c',event.detail.row.SBQQ__Quantity__c);
                    this.defaultData.push({label:'startDate',value:event.detail.row.SBQQ__StartDate__c});
                    this.defaultData.push({label:'endDate',value:event.detail.row.SBQQ__EndDate__c});
                    this.defaultData.push({label:'quantity',value:event.detail.row.SBQQ__Quantity__c});
                    this.defaultData.push({label:'prodCode',value:event.detail.row.SBQQ__ProductCode__c});
                    this.defaultData.push({label:'reqdBy',value:event.detail.row.SBQQ__RequiredBy__c});
                    console.log('defaultData::::',this.defaultData[0].value,this.defaultData[1].value);
                    this.rampedQliProductName.push({ label: 'Create New Ramp', value: 'create_new_ramp' });
                    this.rampedQLiDefaultName = event.detail.row.SBQQ__ProductName__c;
                    this.rampedQliDefaultCode =  event.detail.row.SBQQ__ProductCode__c;
                }
                console.log('this.rampedQliProductName:::',this.rampedQliProductName,this.rampedQLiDefaultName,this.isPhantom);
                this.template.querySelector('c-ramp-modal-popup').defaultProductEndDate = this.quoteEndDate;
                this.template.querySelector('c-ramp-modal-popup').setOtherRampedData(this.allDataForRampedQl, this.rampedQLiDefaultName, this.rampedQliProductName,this.defaultData,this.blnShowTable,this.rampedQliDefaultCode,this.isPhantom,this.recordId,false);
            }else{
                this.existingRampsAvailable =  false;
                this.blnShowTable = true;
                this.template.querySelector('c-ramp-modal-popup').setData(event.detail.row.SBQQ__StartDate__c,event.detail.row.SBQQ__EndDate__c,event.detail.row.Id,this.recordId,event.detail.row.SBQQ__Quantity__c,false,event.detail.row.SBQQ__ProductCode__c,event.detail.row.SBQQ__RequiredBy__c,this.isPhantom,true,false,event.detail.row.SBQQ__Existing__c);
            }
        })
        .catch(error =>{
            this.error = error;
            console.log('error::'+JSON.stringify(this.error));
            this.showToastInfo(JSON.stringify(this.error));

        })

        this.template.querySelector('c-ramp-modal-popup').openModal();
    }
    segmentMultipleQLI() {

        this.existingRampsAvailable = false;
        console.log('this.originalQuoteLineData',this.originalQuoteLineData);
        let qliIdSet =[];
        for (let i = 0; i < this.originalQuoteLineData.length; i++) {
            qliIdSet.push(this.originalQuoteLineData[i]);
        }
        if(qliIdSet!=='' && qliIdSet!==undefined){
            this.segmentData = {cmpId:qliIdSet,cmpName:'Ramp Multiple Products'};
            console.log('ramp miultiple::',this.rampedAllList);
            if(this.rampedAllList.length >0 && this.rampedAllList !==null && this.rampedAllList !== undefined){
                this.template.querySelector('c-ramp-modal-popup').setOtherRampedData(this.rampedAllList, '', '',null,true,'',true,this.recordId,true);
            }else{
            this.template.querySelector('c-ramp-modal-popup').setData(this.quoteStartDate,this.quoteEndDate,qliIdSet,this.recordId,1,false,'','',true,true,true);
            }
            this.template.querySelector('c-ramp-modal-popup').openModal();
        }

    }
    processSegmentMultipleQLI() {

    }
    onPhantomRamp(event){
        this.dataTable =[];
        this.getProductData();
    }

    onBack(){
        //window.location.assign('/one/one.app#/alohaRedirect/apex/sbqq__sb?id=' + this.recordId);
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