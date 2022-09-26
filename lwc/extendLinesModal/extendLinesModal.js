import { LightningElement, api, track } from 'lwc';
import createQuoteLines from '@salesforce/apex/extendLinesController.createQuoteLines';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class ExtendLinesModal extends LightningElement {
    @api showModal = false;
    @api message;
    @api modalHeading;
    @track rowKey = 1;
    @api cmpName;
    @api cmpId = '';
    @track dataTable = [{ key: '1', Segment: '', StartDate: '', EndDate: '', showAction: false }];
    @track QuoteId;
    @track segEndDate;
    @track isShowSpinner = false;
    @track disableSaveButton = false;
    @track isFromPhantom = false;
    @api existingRampsAvailable;
    @api rampedQliProductName;
    @track rampedQLiDefaultName;
    @api allDataForRampedQl;
    @api extendedLineData;
    @api blnShowTable;
    @api defaultData;
    @track rampedQliDefaultCode;
    @track sourceRampAll =  false;

    /****/
    @track quoteEndDate;
    @track platformSKUEndDate;
    @track existingQty;
    @track disableExistingData = false;
    @track error;
    @track startDateDisable = true;
    @track selectedAddOnId = '';

    @api setData(startDate, endDate, cmpId,recordId,Qty,disableExistingData, productCode,requiredBy,showTableBln,quoteEndDate,extendedLineData,selectedAddOnRecordId,platformEndDate) {
        this.dataTable = [];
        let startDates = '';
        let endDates = '';
        if (startDate != undefined) {
            startDates = startDate;
        }
        if (endDate != undefined) {
            endDates = endDate;
        }
        this.QuoteId = recordId;
        this.platformSKUEndDate = platformEndDate;
        console.log('platformSKUEndDate',this.platformSKUEndDate);
        this.selectedAddOnId = selectedAddOnRecordId;
        this.existingQty = Qty;
        
        this.quoteEndDate = quoteEndDate;
        console.log(this.quoteEndDate);
        this.blnShowTable = showTableBln;
        this.disableExistingData = disableExistingData;
        var uniqueKeys;
        if (productCode !== undefined && productCode !== '' && requiredBy !== undefined && requiredBy !== '') {
            uniqueKeys = productCode.concat(requiredBy);
            this.dataTable.push({ key: '1', Segment: 'Existing', StartDate: startDates, EndDate: endDates, Qty: Qty, showAction: false, startDateDisable: true, disableExistingData: this.disableExistingData, uniqueKey: uniqueKeys ,sfdcId:selectedAddOnRecordId});
        } else {
            for (let i = 0; i < extendedLineData.length; i++) {
                var counter = i + 1;
                if (extendedLineData[i].SBQQ__ProductCode__c !== undefined && extendedLineData[i].SBQQ__RequiredBy__c !== undefined) {
                    uniqueKeys = extendedLineData[i].SBQQ__ProductCode__c.concat(extendedLineData[i].SBQQ__RequiredBy__c);
                }
                if (i+1 == extendedLineData.length && i+1 > 1) {
                    this.dataTable.push({ key: i + 1, Segment: 'New ' + counter, StartDate: extendedLineData[i].SBQQ__StartDate__c, EndDate: extendedLineData[i].SBQQ__EndDate__c, Qty: extendedLineData[i].SBQQ__Quantity__c, showAction: true,startDateDisable: false,disableExistingData:false, uniqueKey: uniqueKeys ,sfdcId:extendedLineData[i].Id});
                }
                else if (i == 0) {
                    this.dataTable.push({ key: i + 1, Segment: 'Existing', StartDate: extendedLineData[i].SBQQ__StartDate__c, EndDate: extendedLineData[i].SBQQ__EndDate__c, Qty: extendedLineData[i].SBQQ__Quantity__c, showAction: false,startDateDisable: true,disableExistingData:true, uniqueKey: uniqueKeys ,sfdcId:extendedLineData[i].Id});
                } else {
                    this.dataTable.push({ key: counter, Segment: 'New ' + counter, StartDate: extendedLineData[i].SBQQ__StartDate__c, EndDate: extendedLineData[i].SBQQ__EndDate__c, Qty: extendedLineData[i].SBQQ__Quantity__c, showAction: false,startDateDisable: false,disableExistingData:false, uniqueKey: uniqueKeys,sfdcId:extendedLineData[i].Id});
                }
            
            }
            console.log('datatble',this.dataTable);
        }
    }
    
    @api
    openModal() {
        this.showModal = true;
    }

    @api
    closeModal() {
        this.showModal = false;
    }

    handleSave() {
        let QuoteLineIds = [];
        if(this.cmpName =='Ramp Multiple Products'){
            this.cmpId.forEach(function(qliId){
                QuoteLineIds.push(qliId);
            });
        }else{
            QuoteLineIds.push(this.cmpId);
        }
        
        let segmentData = this.dataTable;
        let uniqueRampKeys = '';
        if (this.dataTable[0] != undefined) {
            uniqueRampKeys = this.dataTable[0].uniqueKey;
            segmentData.forEach(function (v) {
                delete v.key;
                delete v.showAction;
            });
        }
        this.isShowSpinner = true;
        console.log('JSON.stringify(segmentData)',JSON.stringify(segmentData));
        createQuoteLines({ QuoteId: this.QuoteId, QuoteLineIds : QuoteLineIds,segments : JSON.stringify(segmentData),uniqueRampKey:uniqueRampKeys,isOriginPhantom:false,isFromRampAll :false,selectedAddOn:this.selectedAddOnId})
            .then(results => {
                console.log('results on create::'+results);
                if(results === 'success'){
                    this.dataTable =[];
                    const passEvent = new CustomEvent('gotoparent', {
                        detail:{blnPhantom:this.isFromPhantom,phantomId : QuoteLineIds} 
                    });
                    this.dispatchEvent(passEvent);
                    this.isShowSpinner = false;
                    this.closeModal();
                }else{
                    this.showToastInfo(results);
                    this.isShowSpinner = false;
                    this.closeModal();
                }
            })
            .catch(error => {
                this.error = error;
                this.showToastInfo(JSON.stringify(this.error));
            });
    }

    handleStartDate(event) {
        let foundelement = this.dataTable.find(ele => ele.key == event.target.name);
        var eleKey = event.target.name;
        eleKey = eleKey - 1;
        console.log('eleKey in start',eleKey);
        var startDateCmp = this.template.querySelectorAll(".startDateCmp")[eleKey];
        foundelement.StartDate = event.target.value;
        console.log('plat end date1', this.platformSKUEndDate,foundelement.StartDate,'startDateCmp',startDateCmp);
        if (foundelement.StartDate > this.platformSKUEndDate) {
            console.log('inside if');
            this.disableSaveButton = true;
            startDateCmp.setCustomValidity("Add On sku start date cannot be greater than Platform sku end date");
        }
        else if (foundelement.StartDate>foundelement.EndDate) {
            this.disableSaveButton = true;
            startDateCmp.setCustomValidity("Start Date should be lesser than End Date");
        }else {
            this.disableSaveButton = false;
            startDateCmp.setCustomValidity("");
            var dateArray = this.calculateDates(new Date(foundelement.EndDate),new Date(foundelement.StartDate));
            var key =parseInt(foundelement.key) +1;
            var tempStartDate = dateArray[1];
            var tempEndDate =dateArray[0];
            for(let i=key;i<=this.dataTable.length;i++){
                this.dataTable[key-1].StartDate = tempStartDate;
                this.dataTable[key-1].EndDate = tempEndDate;
                if(i!==this.dataTable.length){
                    var nextDateArray = this.calculateDates(new Date(tempEndDate),new Date(tempStartDate));
                    tempStartDate = nextDateArray[1];
                    tempEndDate = nextDateArray[0];
                }
                key = key+1;
            }
            this.dataTable = [...this.dataTable];
        }
        startDateCmp.reportValidity();
    }

    handleEndDate(event) {
        let foundelement = this.dataTable.find(ele => ele.key == event.target.name);
        var eleKey = event.target.name;
        eleKey = eleKey - 1;
        console.log('eleKey in end',eleKey);
        console.log('foundElement:::',JSON.stringify(foundelement));
        console.log('EndDate:::1', event.target.value, 'this.platformSKUEndDate', this.platformSKUEndDate);
        foundelement.EndDate = event.target.value;
        for (let i = 1; i <= this.dataTable.length; i++) {
            var endDateCmp2 = this.template.querySelectorAll('.endDateCmp')[i];
            if (endDateCmp2 !== undefined) {
                endDateCmp2.setCustomValidity(""); // if there was a custom error before, reset it
            }
        }
        var endDateCmp = this.template.querySelectorAll('.endDateCmp')[eleKey];
        if (foundelement.EndDate > this.platformSKUEndDate) {
            this.disableSaveButton = true;
            endDateCmp.setCustomValidity("Add On sku end date cannot be greater than Platform sku end date");
        }
        else {
            this.disableSaveButton = false;
            var dateArray = this.calculateDates(new Date(event.target.value),new Date(foundelement.StartDate));
            console.log('dateArray::'+dateArray);
            if(foundelement.key ===this.dataTable.length){
                console.log('foundelement.key ::'+foundelement.key );
                console.log('this.dataTable.length::'+this.dataTable.length);
                this.dataTable[foundelement.key-1].EndDate = event.target.value;
            }
            var key =parseInt(foundelement.key) +1;
            var tempStartDate = dateArray[1];
            var tempEndDate =dateArray[0];
            console.log('dateArray[1]::'+dateArray[1]);
            console.log('key in end date change::'+key);
            for(let i=key;i<=this.dataTable.length;i++){
                this.dataTable[key-1].StartDate = tempStartDate;
                this.dataTable[key-1].EndDate = tempEndDate;
                console.log('this.dataTable[key-1]::'+this.dataTable[key-1]);
                if(i!==this.dataTable.length){
                    var nextDateArray = this.calculateDates(new Date(event.target.value),new Date(tempStartDate));
                    tempStartDate = nextDateArray[1];
                    tempEndDate = nextDateArray[0];
                }
                key = key+1;

            }
            console.log('dataTable::',this.dataTable);
        }
    }

    handelQty(event){
        let foundelement = this.dataTable.find(ele => ele.key == event.target.name);
        foundelement.Qty = event.target.value;
        this.dataTable = [...this.dataTable];
    }

    addrows() {
        var tableLength = this.dataTable.length;
        this.rowKey= tableLength;
        var prevEndDate = new Date(this.dataTable[this.rowKey-1].EndDate);
        console.log('prevEndDate in add rows::'+prevEndDate);
		var strPrevStartDate = new Date(this.dataTable[this.rowKey-1].StartDate);
        let dateArray=[];
        dateArray = this.calculateDates(prevEndDate,strPrevStartDate);
        this.dataTable[this.rowKey - 1].showAction = false;
        var endDate;
        if(this.rowKey === this.dataTable.length){
            endDate = this.quoteEndDate;
        }else{
            endDate = dateArray[0];
        }
        this.rowKey++;
        this.disableExistingData = false;
        this.startDateDisable = false;
        this.dataTable.push({ key: this.rowKey, Segment: 'New' + ' ' + this.rowKey, StartDate: dateArray[1], EndDate: this.platformSKUEndDate, Qty: this.existingQty, showAction: true, disableExistingData: this.disableExistingData, startDateDisable: this.startDateDisable,uniqueKey: null ,sfdcId:null });
    }

    deleterows(event) {
        let deletedRow = this.dataTable.find(ele => ele.key == event.target.name);
        var deletedRowEndDate = deletedRow.EndDate;
        this.isShowSpinner = true;
        this.dataTable = this.dataTable.filter(result => result.key !== event.target.name);
        this.rowKey--;
        this.isShowSpinner = false;
        let b = event.target.name - 1;
        if (b > 0) {
            let foundelement = this.dataTable.find(ele => ele.key == b);
            foundelement.EndDate = deletedRowEndDate;
            if (b > 1) {
                foundelement.showAction = true;
            } else {
                foundelement.showAction = false;
            }
            this.dataTable = [...this.dataTable];
        }
        let a = event.target.name + 1;
        for (let i = a; i <= this.dataTable.length + 1; i++) {
            let foundelement = this.dataTable.find(ele => ele.key == i);
            foundelement.key = i - 1;
            foundelement.Segment = 'Ramp' + ' '+ foundelement.key;
            var prevEndDate = new Date(this.dataTable[foundelement.key-2].EndDate);
            var strPrevStartDate = new Date(this.dataTable[foundelement.key-2].StartDate);
            let dateArrayonDel=[];
            dateArrayonDel = this.calculateDates(prevEndDate,strPrevStartDate);
            foundelement.StartDate = dateArrayonDel[1];
            foundelement.EndDate = dateArrayonDel[0];
            this.dataTable = [...this.dataTable];
        }
    }

    calculateDates(prevEndDate,strPrevStartDate){
        var b = new Date(prevEndDate.setDate(prevEndDate.getDate() + 1));
        let nextStartdate = JSON.stringify(b);
        nextStartdate = nextStartdate.slice(1,11);
        var prevEndDateMinusOne = new Date(prevEndDate.setDate(prevEndDate.getDate() - 1));
        // Calulcate difference between previous start and End Date
        var diffInDates = Math.ceil(Math.abs(prevEndDateMinusOne - strPrevStartDate) / (1000 * 60 * 60 * 24));
        //Calculate Next End Date ==> NextStartDate +(PrevEnddate - PrevstartDate)
        var nxStart = new Date(nextStartdate);
        var stDate = new Date(nxStart.setDate(nxStart.getDate() + diffInDates));
        let nextEndDate = JSON.stringify(stDate);
        nextEndDate = nextEndDate.slice(1,11);
        return [nextEndDate,nextStartdate];
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