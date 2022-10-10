import { LightningElement,api,track,wire } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import getProductsForSelectedBundle from '@salesforce/apex/renewalScenariosController.getProductsForSelectedBundle';
import getBundlesValuesForPicklist from '@salesforce/apex/renewalScenariosController.getBundlesValuesForPicklist';
import saveRenewalLinesToQuote from '@salesforce/apex/renewalScenariosController.saveRenewalLinesToQuote';

const columns = [
    { label: 'Upgrade to', fieldName: 'description',wrapText : true},
    { label: 'Upgrade Path', fieldName: 'nameRenewedTo'},
    {
        label: 'Action',
        type:'button-icon',
        typeAttributes: {
            title: "Select",
            alternativeText: "Select",
            iconName: 'utility:new',
            
        }, cellAttributes: {class:{ fieldName: 'cssClass' },iconPosition: 'left'}
    },
];

export default class RenewalScenario extends NavigationMixin(LightningElement) {
    @api recordId;
    @track showTable = true;
    @track selectedTab;
    @track selectedInstallBase;
    @track data =[];
    @track selectedRows;
    @track renewalData = [];
    @track renewalDataWithDate=[];
    @track dataCopy =[];
    @track dataForPicklist =[];
    @track isShowSpinner = false;
    @track proposalName;
    @track quoteName;
    @track idArray=[];
    @track uniqueInstallBase = [];
    columns = columns;
    @track openModal = false;
    @track msgForNoProducts = false;
    @track installBaseSelectedKey;
    @track error;
    @track finalDataToApexOnSelect =[];
    mapOfInstallBaseVsSubId = new Map();
    earlierVisitedTab = new Map();
    @track pickListAndData=[];
    //@track upgradeTable=[];

    get options() {
        var returnOptions = [];
        let pickListData =[];
        pickListData = this.dataForPicklist;
        if(pickListData !==null && pickListData !==undefined){
            pickListData.forEach(element => {
                returnOptions.push({label:element.SBQQ__Product__r.Name,value:element.SBQQ__Product__r.Name + '_' +element.Id + '_'+this.selectedTab});
            });
            return returnOptions;
        }
    }

    tabselect(evt) {
        this.data = [];
        this.selectedTab = evt.target.name;
        if(this.earlierVisitedTab.has(evt.target.name)){
            this.data = this.pickListAndData[this.earlierVisitedTab.get(evt.target.name)];
            //this.renewalData = this.upgradeTable[this.earlierVisitedTab.get(evt.target.name)];
            console.log('this.data::',this.data);
        }else{
            getBundlesValuesForPicklist({quoteId :this.recordId})
            .then(results => {
                console.log('results::',results);
                if(results.picklistValues ==undefined){
                    this.dataForPicklist =[];
                    this.msgForNoProducts = true;
                }
                if(results.quoteObj !==null){
                    this.proposalName = results.quoteObj.Proposal_Name__c;
                    this.quoteName = results.quoteObj.Name;
                }
                if(results.picklistValues!==undefined && results.picklistValues!==null){
                    console.log(results.picklistValues);
                    this.dataForPicklist = results.picklistValues;
                }
                console.log('this.dataForPicklist ::',this.dataForPicklist );
            })
            .catch(error =>{
                this.error = error;
                console.log('error::',JSON.stringify(this.error));
                this.showToastInfo(JSON.stringify(this.error));
            })
        }
    }
    handlePicklistChange(event){
        this.showTable = true;
        this.isShowSpinner = true;
        console.log('event.target.value::',event.target.value);
        var installBaseVal = event.target.value;
        this.installBaseSelectedKey = installBaseVal;
        this.mapOfInstallBaseVsSubId.set(installBaseVal.split('_')[0],installBaseVal.split('_')[1]);
        this.selectedInstallBase = installBaseVal.split('_')[0];
        console.log('handlePicklistChangethis.recordId...'+this.recordId);
        getProductsForSelectedBundle({installBase:this.selectedInstallBase,type:this.selectedTab,quoteId:this.recordId })
        .then(results => {
            console.log('on picklist select::',results);
            let dataCopyForJSON =[];
            let childQuoteLines =[];
            dataCopyForJSON = results;
            for(let i=0;i<dataCopyForJSON.length;i++){
                for(let j=0;j<dataCopyForJSON[i].lstQuoteLine.length;j++){
                    if(dataCopyForJSON[i].lstQuoteLine[j].SBQQ__RequiredBy__c !== undefined){
                        childQuoteLines.push({description:dataCopyForJSON[i].lstQuoteLine[j].SBQQ__ProductName__c,installBase:'',nameRenewedTo:'',cssClass:'slds-hidden'});
                    }
                }
                dataCopyForJSON[i].lstQuoteLine = childQuoteLines;
                childQuoteLines =[];
            }
            for(let i=0;i<dataCopyForJSON.length;i++){
                dataCopyForJSON[i]._children = dataCopyForJSON[i].lstQuoteLine;
                delete dataCopyForJSON[i].lstQuoteLine;
            }
            childQuoteLines=[];
            this.data= dataCopyForJSON;
            this.isShowSpinner = false;
            if(this.earlierVisitedTab.has(this.selectedTab) ){
                this.earlierVisitedTab.delete(this.selectedTab);
                this.earlierVisitedTab.set(this.selectedTab,this.installBaseSelectedKey);
                this.pickListAndData[this.installBaseSelectedKey] = this.data;
                //this.upgradeTable[this.installBaseSelectedKey] = this.renewalData;
                
                console.log('pickListData::',this.pickListAndData);
            }else{
                this.earlierVisitedTab.set(this.selectedTab,this.installBaseSelectedKey);
                this.pickListAndData[this.installBaseSelectedKey] = this.data;
                //this.upgradeTable[this.installBaseSelectedKey] = this.renewalData;
                console.log('pickListData in else::',this.pickListAndData);
            }
		})
		.catch(error =>{
            this.error = error;
            this.showToastInfo(JSON.stringify(this.error));
        })
        
        
    }
    handleSelect(event){
        let dataToUpgrade =[];
        var indexValue;
        var idIndex;
        dataToUpgrade.push({Id:event.detail.row.Id,originalQuoteId:event.detail.row.originalQuoteId,
                            nameRenewedTo:event.detail.row.nameRenewedTo,installBase:event.detail.row.installBase,
                            description:event.detail.row.description,
                            subscriptionId:this.mapOfInstallBaseVsSubId.get(event.detail.row.installBase),selectedTab:this.selectedTab,productFamily:event.detail.row.zscalerProductFamily});
        for(let i=0;i<dataToUpgrade.length;i++){
            // idArray - donot allow more than 1 selection for 1 record
            // uniqueInstallBase - one unique value per installbase
            if(!this.idArray.includes(dataToUpgrade[i].Id) && !this.uniqueInstallBase.includes(dataToUpgrade[i].installBase)){
                this.renewalData.push(dataToUpgrade[i]);
                this.idArray.push(dataToUpgrade[i].Id);
                this.uniqueInstallBase.push(dataToUpgrade[i].installBase);
            }else if(!this.idArray.includes(dataToUpgrade[i].Id) && this.uniqueInstallBase.includes(dataToUpgrade[i].installBase)){
                this.renewalData.forEach(element => {
                    if(element.installBase == dataToUpgrade[i].installBase){
                        indexValue = this.renewalData.indexOf(element);
                        this.renewalData.splice(indexValue,1);
                        idIndex = this.idArray.indexOf(element.Id);
                        this.idArray.splice(idIndex,1);
                        this.renewalData.push(dataToUpgrade[i]);
                    }
                });
            }
        }
        dataToUpgrade=[];
    }

    handleCancel(){
		let link = '/apex/sbqq__sb?id=' +this.recordId
					+ '#quote/le?qId=' + this.recordId;
		this[NavigationMixin.Navigate]({
        type: 'standard__webPage',
        attributes: {
            url: link
        },
		}, true);
        this.renewalData =[];
        this.data = [];
    }

    handleModalCancel(){
        this.openModal = false;
    }

    handleEffectiveDate(event){
        this.renewalData.forEach(element => {
            if(element.Id === event.target.name){
                element['effectiveDate'] = event.target.value;
                this.renewalDataWithDate.push(element);
            }
        });
    }

    deleterows(event){
        let dataBuffer =[];
        var indexOfElement;
        var indexForInstallBase;
        this.renewalData.forEach(element => {
            if(element.Id !== event.target.name){
                dataBuffer.push(element);
            }else if(element.Id === event.target.name){
                if(this.uniqueInstallBase.includes(element.installBase)){
                    indexForInstallBase = this.uniqueInstallBase.indexOf(element.installBase);
                    this.uniqueInstallBase.splice(indexForInstallBase,1);
                }
            }
        });
        this.renewalData = dataBuffer;
        if(this.idArray.includes(event.target.name)){
            indexOfElement = this.idArray.indexOf(event.target.name);
            this.idArray.splice(indexOfElement,1);
        }
    }

    handleFooterSelect(){
        this.openModal = true;
    }
    saveQuoteLines(){
        this.isShowSpinner = true;
        this.openModal = false;
        console.log('this.renewalData:: on saveQuoteLines',this.renewalData);
        saveRenewalLinesToQuote({destQuoteId :this.recordId,selectedRowsForRenewal:JSON.stringify(this.renewalData),selectedInstallBase:this.uniqueInstallBase})
        .then(results => {
            if(results === 'success'){
                window.location.assign('/one/one.app#/alohaRedirect/apex/sbqq__sb?id=' + this.recordId);
                this.isShowSpinner = false;
            }
        })
        .catch(error =>{
            this.isShowSpinner = false;
            this.error = error;
            this.showToastInfo(JSON.stringify(this.error));
        })
    }
    closeModal() {
        this.openModal = false;
    }
    showToastInfo(msg){
        const toastEvnt = new  ShowToastEvent( {
            title: 'Error!',
            message: msg,
            variant: 'error',
            mode: "sticky"
        });
        this.dispatchEvent (toastEvnt);
    }
}