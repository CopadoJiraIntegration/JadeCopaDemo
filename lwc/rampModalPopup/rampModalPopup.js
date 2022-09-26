import { LightningElement, api, track } from 'lwc';
import createQuoteLines from '@salesforce/apex/rampProductsController.createQuoteLines';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class RampModalPopup extends LightningElement {
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
    @api blnShowTable;
    @api defaultData;
    @track rampedQliDefaultCode;
    @track sourceRampAll =  false;
    @track error;

    @api setData(startDate, endDate, cmpId,recordId,Qty,disableStartDate, productCode,requiredBy,isPhantom,showTableBln,isRampAll) {
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
        this.isFromPhantom = isPhantom;
        this.sourceRampAll = isRampAll;
        this.blnShowTable = showTableBln;
        var uniqueKeys;
        if(productCode!==undefined && requiredBy!==undefined){
            uniqueKeys = productCode.concat(requiredBy);
        }
        
        this.dataTable.push({ key: '1', Segment: 'Ramp 1' , StartDate: startDates, EndDate: endDates,Qty:Qty, showAction: false,disableStartDate:disableStartDate,uniqueKey:uniqueKeys});
    }
   
    @api
    setOtherRampedData(allDataForRampedQLI,defaultName, QliProdNames,defaultValues,showTable, rampedProdCode,isOriginPhantom,recordId,isRampAll){
        var blnNewRamp = false;
        this.allDataForRampedQl=allDataForRampedQLI;//exiting ramp line
        this.rampedQLiDefaultName = '';
        this.rampedQliProductName = [];
        this.isFromPhantom = isOriginPhantom;
        this.QuoteId = recordId;
        this.sourceRampAll = isRampAll;
        this.blnShowTable = showTable;
        this.dataTable =[];
        if (this.isFromPhantom == false) {
            if (QliProdNames != null && QliProdNames != undefined) {
                for (let i = 0; i < QliProdNames.length; i++) {
                    console.log(QliProdNames[i].label+'::'+defaultName);
                    if (defaultName == QliProdNames[i].label) {
                        this.rampedQliProductName.unshift({ label: QliProdNames[i].label, value: QliProdNames[i].value });
                        this.rampedQLiDefaultName = QliProdNames[i].value;
                    } else {
                        this.rampedQliProductName.push({ label: QliProdNames[i].label, value: QliProdNames[i].value });
                    }
                }
                console.log('rampedLine'+this.rampedQliProductName);
            }
            if (this.rampedQLiDefaultName == '' || this.rampedQLiDefaultName == undefined) {
                this.rampedQLiDefaultName = 'create_new_ramp';
            }
            this.defaultData = defaultValues;
            this.rampedQliDefaultCode = rampedProdCode;
        }
        
        let allDataForRamp = [];
        console.log('this.allDataForRampedQl===>',this.allDataForRampedQl);
        for (let i = 0; i < this.allDataForRampedQl.length; i++){
            
            var uniqueKeys;
            if (this.isFromPhantom == false) {
                if (this.rampedQLiDefaultName === this.allDataForRampedQl[i].SBQQ__ProductCode__c) {
                    allDataForRamp.push(this.allDataForRampedQl[i]);
                } else if (this.rampedQLiDefaultName === 'create_new_ramp') {
                    blnNewRamp = true;
                }
            } else {
                allDataForRamp.push(this.allDataForRampedQl[i]);
            }
        }
        if (allDataForRamp !== null && allDataForRamp !== undefined) {
            this.dataTable = [];
            for (let i = 0; i < allDataForRamp.length; i++){
                if(allDataForRamp[i].SBQQ__ProductCode__c!==undefined && allDataForRamp[i].SBQQ__RequiredBy__c!==undefined){
                    if (this.isFromPhantom == false) {
                        uniqueKeys = this.rampedQliDefaultCode.concat(allDataForRamp[i].SBQQ__RequiredBy__c);
                        console.log('uniqueKeys::'+uniqueKeys);
                    } else {
                        uniqueKeys = allDataForRamp[i].SBQQ__ProductCode__c.concat(allDataForRamp[i].SBQQ__RequiredBy__c);
                    }
                    console.log('uniqueKeys::'+uniqueKeys);
                }
                if (i + 1 == allDataForRamp.length) {
                    
                    this.dataTable.push({key: i+1, Segment:allDataForRamp[i].Ramp_Label__c ,StartDate:allDataForRamp[i].SBQQ__StartDate__c, EndDate:allDataForRamp[i].SBQQ__EndDate__c, Qty:allDataForRamp[i].SBQQ__Quantity__c,showAction: true,disableStartDate:true,uniqueKey:uniqueKeys});
                }
                else if (i == 0) {
                    this.dataTable.push({key: i+1, Segment:allDataForRamp[i].Ramp_Label__c ,StartDate:allDataForRamp[i].SBQQ__StartDate__c, EndDate:allDataForRamp[i].SBQQ__EndDate__c, Qty:allDataForRamp[i].SBQQ__Quantity__c,showAction: false,disableStartDate:false,uniqueKey:uniqueKeys});
                } else {
                    this.dataTable.push({key: i+1, Segment:allDataForRamp[i].Ramp_Label__c ,StartDate:allDataForRamp[i].SBQQ__StartDate__c, EndDate:allDataForRamp[i].SBQQ__EndDate__c, Qty:allDataForRamp[i].SBQQ__Quantity__c,showAction: false,disableStartDate:true,uniqueKey:uniqueKeys});
                }
                
            }
            this.blnShowTable = true;
        }
        if (blnNewRamp == true) {
            this.dataTable = [];
            var prodCode = this.defaultData[3].value;
            var requiredBy = this.defaultData[4].value;
            console.log('defaultData on prodCode', prodCode, requiredBy);
            if(prodCode!==undefined && requiredBy !==undefined){
                uniqueKeys = prodCode.concat(requiredBy);
            }
            this.dataTable.push({ key: '1', Segment: 'Ramp 1', StartDate: this.defaultData[0].value, EndDate: this.defaultData[1].value, Qty: this.defaultData[2].value, showAction: false, disableStartDate: false, uniqueKey: uniqueKeys });
            this.blnShowTable = true;
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
        console.log('quotelineIds::'+QuoteLineIds);
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
        console.log('this.sourceRampAll',this.sourceRampAll,'this.isFromPhantom',this.isFromPhantom,'segmentData',segmentData,JSON.stringify(segmentData));
        createQuoteLines({ QuoteId: this.QuoteId, QuoteLineIds : QuoteLineIds,segments : JSON.stringify(segmentData),uniqueRampKey:uniqueRampKeys,isOriginPhantom:this.isFromPhantom,isFromRampAll : this.sourceRampAll})
            .then(results => {
                if(results === 'success'){
                    this.dataTable =[];
                    const passEvent = new CustomEvent('passphantombln', {
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

    handleNameChange(event) {
        let foundelement = this.dataTable.find(ele => ele.key == event.target.name);
        foundelement.Segment = event.target.value;
        this.dataTable = [...this.dataTable];
    }

    handleStartDate(event) {
        let foundelement = this.dataTable.find(ele => ele.key == event.target.name);
        var startDateCmp = this.template.querySelector(".startDateCmp");
        foundelement.StartDate = event.target.value;
        if (foundelement.StartDate>foundelement.EndDate) {
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
        console.log('foundelement',foundelement.EndDate,foundelement.StartDate);
        var eleKey = event.target.name;
        eleKey = eleKey - 1;

        var endDateCmp = this.template.querySelectorAll('.endDateCmp')[eleKey];
        for (let i = 1; i <= this.dataTable.length; i++) {
            var endDateCmp2 = this.template.querySelectorAll('.endDateCmp')[i];
            console.log('endDateCmp2',endDateCmp2);
            if (endDateCmp2 !== undefined) {
                endDateCmp2.setCustomValidity(""); // if there was a custom error before, reset it
            }
        }
        foundelement.EndDate = event.target.value;
        if (foundelement.EndDate<foundelement.StartDate) {
            this.disableSaveButton = true;
            endDateCmp.setCustomValidity("End Date should be greater than Start date.");
            endDateCmp.reportValidity(); // Tells lightning-input to show the error right away without needing interaction
        } else {
            endDateCmp.setCustomValidity(""); 
            this.disableSaveButton = false;
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
		var strPrevStartDate = new Date(this.dataTable[this.rowKey-1].StartDate);
        let dateArray=[];
        dateArray = this.calculateDates(prevEndDate,strPrevStartDate);
        this.dataTable[this.rowKey - 1].showAction = false;
        this.rowKey++;
        this.dataTable.push({ key: this.rowKey, Segment: 'Ramp'+ ' '+this.rowKey, StartDate:dateArray[1], EndDate:dateArray[0],Qty:'', showAction: true ,disableStartDate:true,uniqueKey:this.dataTable[0].uniqueKey});
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

    navigateToQLE() {
        // Navigate to a URL
        let link = '/apex/sbqq__sb?id=' + this.QuoteId;
            this[NavigationMixin.Navigate]({
                type: 'standard__webPage',
                attributes: {
                    url: link
                }
            },
            true );
    }
    
    handlerampChange(event) {
        this.dataTable=[];
        var selectedQlId = event.detail.value;
        this.blnShowTable = true;
        var blnNewRamp = false;
        let allDataForRamp=[];
        for(let i=0;i<this.allDataForRampedQl.length;i++){
            var uniqueKeys;
            if(selectedQlId === this.allDataForRampedQl[i].SBQQ__ProductCode__c){
                allDataForRamp.push(this.allDataForRampedQl[i]);
            }else if(selectedQlId ==='create_new_ramp'){
                blnNewRamp = true; 
            }
        }
        if(allDataForRamp!==null && allDataForRamp!==undefined){
            for (let i = 0; i < allDataForRamp.length; i++){
                console.log('allDataForRamp[i] at handle change',allDataForRamp[i]);
                if(allDataForRamp[i].SBQQ__ProductCode__c!==undefined && allDataForRamp[i].SBQQ__RequiredBy__c!==undefined){
                    uniqueKeys = this.rampedQliDefaultCode.concat(allDataForRamp[i].SBQQ__RequiredBy__c);
                }
                if (i == 0) {
                    this.dataTable.push({key: i+1, Segment:allDataForRamp[i].Ramp_Label__c ,StartDate:allDataForRamp[i].SBQQ__StartDate__c, EndDate:allDataForRamp[i].SBQQ__EndDate__c, Qty:allDataForRamp[i].SBQQ__Quantity__c,showAction: false,disableStartDate:false,uniqueKey:uniqueKeys});
                } else {
                    this.dataTable.push({key: i+1, Segment:allDataForRamp[i].Ramp_Label__c ,StartDate:allDataForRamp[i].SBQQ__StartDate__c, EndDate:allDataForRamp[i].SBQQ__EndDate__c, Qty:allDataForRamp[i].SBQQ__Quantity__c,showAction: true,disableStartDate:true,uniqueKey:uniqueKeys});
                }
                
            }
        }

        if (blnNewRamp == true) {
            var prodCode = this.defaultData[3].value;
            var requiredBy = this.defaultData[4].value
            if(prodCode!==undefined && requiredBy!==undefined){
                uniqueKeys = prodCode.concat(requiredBy);
            }
            this.dataTable.push({ key: '1', Segment: 'Ramp 1' , StartDate: this.defaultData[0].value, EndDate: this.defaultData[1].value,Qty:this.defaultData[2].value, showAction: false,disableStartDate:false,uniqueKey:uniqueKeys});
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