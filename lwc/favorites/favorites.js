import { LightningElement,api,track,wire} from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { getPicklistValuesByRecordType } from 'lightning/uiObjectInfoApi';
import getFavourites from '@salesforce/apex/searchFavoriteController_LC.getProductGroupList';
import addFavourites from '@salesforce/apex/searchFavoriteController_LC.createQuoteLines';
import getProducts from '@salesforce/apex/searchFavoriteController_LC.getProductsList';
import saveQuoteLines from '@salesforce/apex/searchFavoriteController_LC.saveQuoteLines';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import PRODUCT_GROUP_OBJECT from '@salesforce/schema/Favorites__c';

//- Product Search
import getProduct from '@salesforce/apex/searchFavoriteController_LC.getProduct';
import getProductList from '@salesforce/apex/searchFavoriteController_LC.getProductList';

export default class SearchFavorite extends NavigationMixin(LightningElement) {
    @api sourceQuoteId;
    @api sourceQuteGroupId;
    @api quoteIdSelected = [];
    @track data;
    @track data1;
    @track columns = [];
    @track isGlobalfilter;
    @track filterCondition;
    @track filterInnerTabCondition;
    @track selectedRowItem;
    @track isShowSpinner=false;
    @track message;
    @track tempResult;
    @track splitMsg;
    mainDivTableCls = '';
    currentFav;
    displayData = true;
    finalList;
    allData = [];
    allDataObj;
    objKey = [];
    isDisabledButton = true;
    @track activetabContent = '';
    activeTabLst = [];
    activeTabMap = new Map();
    activeTabDefaultMap = new Map();
    currentTabRun = '';
    topToNextObj = new Object();
    allTabObj = new Object();
    @api title = 'Error!';
    @api variant = 'error';
    @api autoCloseTime = 5000;
    @api autoClose = false;
    @api autoCloseErrorWarning = false;
	@track tabs = [];
	@track innertabs = [];
    @track listCategoryTypeOptions;
    @track listSubCategoryTypeOptions;
    @track objPicklistValues;
    // - Product Group Category Type
    @api productGroupCatType;
    controllingPicklist=[];
    dependentPicklist;
    @track finalDependentVal=[];
    showpicklist = false;
    dependentDisabled=true;
    showdependent = false;
    // - Varibles for Product Categories
    @api blnProductCatTable= false;
	@track productCategory;
	@track productSubCategory;
	@api tableProductCategory;
	@track blnTableNoData = false;
    @track showApplyGrp=false;
    @track finderCategory;
    @track blnSelectAll = false;
    isAsc = false;
    isDsc = false;
    isNameSort = false;
    isPriceSort = false;
    isCodeSort = false;
    error;
    sortedDirection = 'asc';
    sortedColumn;
    @track tabSelected;
    @track innerShowSpinner = false;


    // - Variables for Product Search
    @api objName;
    @api iconName;
    @api filter = '';
    @api searchPlaceholder='Search';
    @track selectedName;
    @track records;
    @track isValueSelected;
    @track blurTimeout;
    @track dataCart=[];
    rowOffset = 0;
    @track searchTerm;
    error;
    showCart=false;
    cartRows=[];
    singleSelect=false;
    @track selectedRows;
    @track selectedRowsCart;
    showTable;
    onSelectExecute = false;
    onSearchExecute = false;
    sortedBy;
    defaultSortDirection = 'asc';
    sortDirection = 'asc';
    selectedRowCpy=[];
    listProductStatus= [];
    selectedProductIds=[];
    @track dataForSearch=[];
    //css
    @track boxClass = 'slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click slds-has-focus';
    @track inputClass = '';
    

	@wire(getObjectInfo, { objectApiName: PRODUCT_GROUP_OBJECT })
    accountMetadata;

    @wire(getPicklistValuesByRecordType, { objectApiName: PRODUCT_GROUP_OBJECT, recordTypeId: '$accountMetadata.data.defaultRecordTypeId' })
    fetchPicklist({error,data}){       
       
    }

    tabselect(evt) {
        this.blnSelectAll = false;
        let isTabPresent = false;
        this.data = undefined;
        console.log('evt.target.name-->'+evt.target.name);
        console.log('evt.target.name !== undefined->'+(evt.target.name !== undefined));
        this.favList(evt);
       
    }
    prepareTabSetup(uniqueName){
        let isTabPresent = false;
        console.log('in tab prep..'+this.allDataObj);
        this.data = this.allDataObj !== undefined ? this.allDataObj[uniqueName] : undefined;
            this.tabSelected = uniqueName;
            this.blnSelectAll =(this.data !== undefined && this.data[0].hasOwnProperty('selectAll')) ? this.data[0].selectAll : false;
            this.displayData = this.data !== undefined && this.data.length > 0 ? true : false;
            isTabPresent = true;
            this.showTable = false;
        return isTabPresent;
    }

    connectedCallback(){
		this.columns = [
            { label: 'Favourite Name', fieldName: 'favouriteName' },
            { label: 'Description', fieldName: 'favDescription'}
        ];
        this.autoClose = true;
        this.autoCloseErrorWarning = true;
        //- get Finder records
        this.handleFinderRecords();
    }

    favList(evt){
        console.log('in fav method'+evt.target.name);
        //if(evt.target.name == 'Personal Favorite'){
            this.currentTabRun = evt.target.name;
        //}else{
           // this.currentTabRun = '';
        //}
        console.log(' this.currentTabRun..'+ this.currentTabRun);
        console.log('this.sourceQuoteId..'+this.sourceQuoteId);
        console.log('this.sourceQuteGroupId..'+this.sourceQuteGroupId);
        
        getFavourites({
            tabSelectedVal : this.currentTabRun,
            quoteRecId: this.sourceQuoteId
        }).then(result =>{
            this.data = undefined;
            this.displayData = false;
            console.log('resultlength..'+result.length);
            if(result.length > 0){
                this.data = result;
                console.log('result..'+JSON.stringify(result));
                this.allTabObj[this.currentTabRun] = result;
                if(this.allDataObj === undefined){
                    this.allDataObj = new Object();
                }
                // this.topToNextObj[this.currentTabRun.split('_')[0]] = this.currentTabRun.split('_')[1];
                this.allDataObj[this.currentTabRun] = result;
                console.log('before results..'+this.currentTabRun);
                console.log('printing data..'+ JSON.stringify(this.allDataObj[this.currentTabRun]));
                this.displayData = true;
            }
        })
        .catch(error=>{
            this.errorAccount = error;
        });
    }

    selectedFav(event) {
        for(let i=0; i< this.data.length; i++){
            if(this.data[i].quoteId === event.target.name){
                this.data[i].isSelected=event.target.checked;
                this.quoteIdSelected = event.target.name;
                this.currentFav = i;
                if(this.quoteIdSelected != null && event.target.checked){
                    getProducts({
                    quoteId : this.quoteIdSelected,
                    targetQuoteId : this.sourceQuoteId
                }).then(result =>{
                    this.data[this.currentFav].wrapProdList = result;
                    })
                    .catch(error=>{
                        this.errorAccount = error;
                    });
                }
            }
        }
        let selectedRows = this.template.querySelectorAll('lightning-input');
    }

    handleRowSelection = event => {
        var selectedRows=event.detail.selectedRows;
        if(selectedRows.length>1)
        {
            var el = this.template.querySelector('lightning-datatable');
            selectedRows=selectedRows.slice(1);
            this.selectedRowItem = selectedRows;
            return;
        }else{
            this.selectedRowItem = selectedRows;
        }
    }
    handleClick= event => {
        this.productGroupCatType = event.detail.value;
        this.assignCategoryOptions(event.detail.value);
        this.assignSubCategoryOptions(event.detail.value);
        this.objEvent[fieldName] = this.productGroupCatType;
        let prodFinalList = this.template.querySelector('c-generic-html-table').item;
        for(let i=0; i<prodFinalList.length; i++){
                for(let j=0;j<prodFinalList[i].wrapProdList.length;j++){
                    if(prodFinalList[i].wrapProdList[j].isSelected==true){
                        this.finalList.push(prodFinalList[i].wrapProdList[j]);
                    }
                }
        }

        addFavourites({
            quoteIdn : this.selectedRowItem[0]['quoteId'],
            originalQuoteId: this.sourceQuoteId,
            quoteGroupId : this.sourceQuteGroupId
        }).then(result =>{

        }).catch(error=>{
            this.errorAccount = error;
            const event2 = new ShowToastEvent({
                title: 'Error!',
                variant:'error',
                message: 'We encountered some error while selecting. Please try again.',
            });
            this.dispatchEvent(event2);
            var url = window.location.href;
                var value = url.substr(0,url.lastIndexOf('/') + 1);
                window.history.back();
                location.reload();
                return false;
        });
    }

    handleCancel(){
		let link = '/apex/sbqq__sb?id=' +this.sourceQuoteId
					+ '#quote/le?qId=' + this.sourceQuoteId;
		this[NavigationMixin.Navigate]({
        type: 'standard__webPage',
        attributes: {
            url: link
        },
		}, true);
        this.dataCart=[];
        this.dataForSearch=[];
        this.searchTerm='';
        this.showTable = false;
        this.showCart = false;
    }

    disableSelectBtn(event){
        this.allDataObj[event.detail.tableName] = event.detail.data;
        Object.keys(this.allDataObj).forEach(element => {
            if(this.isDisabledButton){
                for(let i=0; i < this.allDataObj[element].length; i++){
                    if(this.allDataObj[element][i].isSelected){
                        this.isDisabledButton = false;
                        break;
                    }
                }
            }
        })
    }

    fetchData(event){
        console.log('event in fetchData..'+event.detail);
        let isSelectedBtn=false;
        if(this.allDataObj === undefined){
            this.allDataObj = new Object();
        }
       // this.allDataObj[event.detail.tableName] = event.detail.data;
        let isKeyExisting = false;
        for(let i=0;i < this.objKey.length;i++){
            if(this.objKey[i] === event.detail.tableName){
                isKeyExisting = true;
                break;
            }
        }
        if(!isKeyExisting){
            this.objKey.push(event.detail.tableName);
        }
        Object.keys(this.allDataObj).forEach(element => {
            if(!isSelectedBtn){
                for(let i=0; i< this.allDataObj[element].length; i++){
                    if(this.allDataObj[element][i].isSelected){
                        this.isDisabledButton = false;
                        isSelectedBtn= true;
                        break;
                    }
                }
            }
        })
        if(isSelectedBtn==false){
            let test = this.template.querySelector('lightning-button.selectBtn');
            this.isDisabledButton = true;
        }
        this.prepareTabSetup(event.detail.tableName);
    }
    saveQuoteLines(){
        let wrapLst = [];
        console.log('in save mthod');
        Object.keys(this.allDataObj).forEach(element => {
            console.log('element..'+element);
            for(let i=0;i<this.allDataObj[element].length;i++){
                wrapLst.push(this.allDataObj[element][i]);
            }
        })
        if(wrapLst.length == 0){
            this.showToastMessage('Please Select at lease one Favorite');
        }
        if(wrapLst.length > 0){
            this.isShowSpinner =true;
            console.log('JSON.stringify(wrapLst)...'+JSON.stringify(wrapLst));
        saveQuoteLines({
                favStrobj : JSON.stringify(wrapLst),
                qid : this.sourceQuoteId,
                grpId : this.sourceQuteGroupId,
                prodSearchData : JSON.stringify(this.dataCart)
            }).then(result =>{
                this.isShowSpinner =false;
                console.log('result..'+result);
                if(result == 'success'){
                    let link = '/apex/sbqq__sb?id=' +this.sourceQuoteId
								+ '#quote/le?qId=' + this.sourceQuoteId;
					this[NavigationMixin.Navigate]({
							type: 'standard__webPage',
							attributes: {
								url: link
							},
					}, true);
			}else{
                    this.message= result;
					console.log('message cus1 '+JSON.stringify(this.message));
                    this.showCustomNotice();
                }
            })
            .catch(error=>{
                this.message = error;
				console.log('message cus2 '+JSON.stringify(this.message));
                    this.showCustomNotice();
                });
        }else{
            this.message = 'Please Select at lease one Favorite';
            this.showCustomNotice();
        }
    }

    showToastInfo(){
        const value = this.message;
        const toastEvnt = new CustomEvent('showtoast', {
            detail:{ value }
        });
        this.dispatchEvent (toastEvnt);
    }

    showCustomNotice() {
        const toastModel = this.template.querySelector('[data-id="toastModel"]');
        toastModel.className = 'slds-show';
        if(this.autoClose)
            if( (this.autoCloseErrorWarning && this.variant !== 'success') || this.variant === 'success') {
                this.delayTimeout = setTimeout(() => {
                    const toastModel = this.template.querySelector('[data-id="toastModel"]');
                    toastModel.className = 'slds-hide';
                }, this.autoCloseTime);
        }
    }

    closeModelError() {
        const toastModel = this.template.querySelector('[data-id="toastModel"]');
        toastModel.className = 'slds-hide';
    }

    get mainDivClass() {
        return 'slds-notify slds-notify_toast slds-theme_'+this.variant;
    }

    get messageDivClass() {
        return 'slds-icon_container slds-icon-utility-'+this.variant+' slds-icon-utility-success slds-m-right_small slds-no-flex slds-align-top';
    }

    get iconName() {
        return 'utility:'+this.variant;
    }

    // - Get metaData records for product finder
    handleFinderRecords() {
     
            let dataTableContent = [];
            let prodCat = {};
            prodCat.findCategory = 'Personal Favorite';
            prodCat.catUniqueName = 'Personal Favorite';
            prodCat.tabDesc = 'The favorites displayed below are created by you and are not visible to others.';
            prodCat.subCatLst = [];
            dataTableContent.push(prodCat);       
            let prodCat1 = {};
            prodCat1.findCategory = 'Global Favorite';
            prodCat1.catUniqueName = 'Global Favorite';
            prodCat1.tabDesc = 'The favorites displayed below are visible to everyone in your organization';
            prodCat1.subCatLst = [];
            dataTableContent.push(prodCat1);                
            this.finderCategory = dataTableContent;
    }
    showProductData(){
        this.innerShowSpinner =true;
        getProductForCategory({
            category: this.productCategory,
            subcategory:this.productSubCategory,
            quoteRecId:this.sourceQuoteId })
            .then(result => {
                this.data = undefined;
                this.displayData = false;

                this.tableProductCategory = result;
                if(this.tableProductCategory!=null){
                    this.blnTableNoData= true;
                } 
                if(result.length > 0){
                    let dataLst = [];
                    result.forEach(prResult => {
                        prResult.listPrice = prResult.listPrice.replace(/\d(?=(\d{3})+\.)/g, "$&,");
                        let datIns = prResult;
                        datIns['uniqueKey'] = this.currentTabRun + '_' + prResult.Id;
                        datIns['selectAll'] = ((datIns['selectAll']!==undefined && datIns['selectAll']!==false) ?  true : false);
                        dataLst.push(datIns);
                    })
                    this.innerShowSpinner =false;
                    this.data = dataLst;
                    this.tabSelected = this.currentTabRun;
                    this.allTabObj[this.currentTabRun] = dataLst;
                    if(this.allDataObj === undefined){
                        this.allDataObj = new Object();
                    }
                    this.topToNextObj[this.currentTabRun.split('_')[0]] = this.currentTabRun.split('_')[1];
                    this.allDataObj[this.currentTabRun] = dataLst;
                    this.displayData = true;
                }
            })
            .catch(error => {
                this.error = error;
            });
    }
	productSelect(event){
        let isFalse = false;
        console.log('eventtt..'+event);
        let tabName = event.target.name.split('-')[0] ;//+ '_' + event.target.name.split('_')[1] + '_' + event.target.name.split('_')[2];
        console.log('tabName..'+tabName);
        console.log('this.allDataObj[tabName]..'+this.allDataObj[tabName]);
        //console.log('this.allDataObj[tabName]2..'+this.allDataObj['Personal Favorite'][tabName]);
        //console.log('all data.. '+);
        //tabName = 'Personal Favorite';
        for(let i = 0; i < this.allDataObj[tabName].length; i++){
            console.log('left..'+(this.allDataObj[tabName][i].uniqueKey));
            console.log('right..'+( event.target.name));
            if(this.allDataObj[tabName][i].uniqueKey === event.target.name){
                //this.allDataObj[tabName][i].isSelectedForCategory = event.target.checked;
                this.allDataObj[tabName][i].isSelected = true;
            }
        }

		this.isDisabledButton = false;
	}

    productSelectAll(event){
        let tabName = event.target.name.split('_')[0] + '_' + event.target.name.split('_')[1] + '_' + event.target.name.split('_')[2];
        if(this.allDataObj[tabName]!==null && this.allDataObj[tabName]!==undefined){
            for(let k = 0; k < this.allDataObj[tabName].length; k++){
                this.allDataObj[tabName][k].selectAll = event.target.checked;
                this.allDataObj[tabName][k].isSelectedForCategory = event.target.checked;
            }
            this.data = this.allDataObj[tabName];
            this.isDisabledButton = false;
            this.blnSelectAll = event.target.checked;
        }
    }

    //- Methods for Product Search
    handleClickForSearch() {
        this.inputClass = 'slds-has-focus';
        this.boxClass = 'slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click slds-has-focus slds-is-open';
        this.isDisabledButton = false;
    }
    onBlur() {
        this.blurTimeout = setTimeout(() =>  {this.boxClass = 'slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click slds-has-focus'}, 300);
    }
    onSelect(event) {
        this.isShowSpinner = true;
        let selectedId = event.currentTarget.dataset.id;
        let selectedName = event.currentTarget.dataset.name;
        this.onSelectExecute = true;
        this.searchTerm = selectedName;
        this.listProductStatus= [];
        this.selectedProductIds=[];
        if(this.blurTimeout) {
            clearTimeout(this.blurTimeout);
        }
        this.boxClass = 'slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click slds-has-focus';
        this.showCart = false;
        getProduct({'prodId':selectedId})
        .then(result=>{
            result.Product2Name = result.Product2.Name;
            result.Product2Description = result.Product2.Description;
            result.Product2ProductCode = result.Product2.ProductCode;
            this.showTable = true;
            this.dataForSearch=[result];
            this.selectedRows = [result.Id];            
            this.singleSelect = true;
            if(this.dataCart.length == 0){
                this.dataCart = [result];
            }else{
                let dataCartCopy = [...this.dataCart];
                let dataCartIdSet =[];
                dataCartCopy.forEach(element => {
                    dataCartIdSet.push(element.Product2Id);
                });
                if(!dataCartIdSet.includes(result.Product2Id)){
                    this.selectedProductIds.push(result.Id);
                    let objProductStatus = new Object();
                    objProductStatus.ProductId = result.Id;
                    objProductStatus.Selected = true;
                    objProductStatus.addedInCart = true;
                    this.listProductStatus.push(objProductStatus);
                    dataCartCopy.push(result);
                }
                this.dataCart =[...dataCartCopy];
            }
            this.showCart = true;
            this.isShowSpinner = false;
        })
    }
    handleKeyUp(event) {
        this.records='';
        const isEnterKey = event.keyCode === 13;
        if (isEnterKey) {
            this.records='';
            this.boxClass = 'slds-combobox slds-dropdown-trigger slds-dropdown-trigger_click slds-has-focus';
            this.handleSearch(event);
        }
    }
    onChange(event) {
        this.searchTerm = event.target.value;
        search({'searchTerm':this.searchTerm,
        quoteRecId:this.sourceQuoteId})
        .then(result=>{
            this.records=result;
        })
    }
    handleSearch(event){
        this.isShowSpinner = true;
        this.onSearchExecute = true;
        this.selectedRows=[];
        this.selectedRow=[];
        this.listProductStatus= [];
        this.selectedProductIds=[];
        let dataCartCopy = [...this.dataCart];
        getProductList({'searchTerm':this.searchTerm,
        quoteRecId:this.sourceQuoteId})
        .then(result=>{
            for(let i=0; i<result.length;i++){
                result[i].Product2Name = result[i].Product2.Name;
                result[i].Product2Description = result[i].Product2.Description;
                result[i].Product2ProductCode = result[i].Product2.ProductCode;                
            }
            this.showTable = true;
            this.dataForSearch=result;
            this.dataCart = [...dataCartCopy];
            this.isShowSpinner = false;
        })
    }
    handleSelect(event){
        let selRowsCopy = event.detail.selectedRows;
        selRowsCopy.forEach(element => {
            this.selectedRowCpy.push(element.Id);
        });  
        let dataCartCopy = [...this.dataCart];
        let dataCartIdSet =[];
        dataCartCopy.forEach(element => {
            dataCartIdSet.push(element.Id);
        });
        let currentlySelectedProducutsId = [];
        let currentlySelectedProducuts = [];
        for(let i=0;i<event.detail.selectedRows.length;i++){
            currentlySelectedProducuts.push(event.detail.selectedRows[i]);
            let selRow = event.detail.selectedRows[i].Id;
            currentlySelectedProducutsId.push(selRow);
            if (!this.selectedProductIds.includes(selRow)) { // - Not Contains in Unique Product Id
                let objProductStatus = new Object();
                objProductStatus.ProductId = selRow;
                objProductStatus.Selected = false;
                objProductStatus.addedInCart = false;
                this.listProductStatus.push(objProductStatus);
                this.selectedProductIds.push(selRow);
            }
        }
        this.listProductStatus.forEach(objProductStatus => {
            if (currentlySelectedProducutsId.includes(objProductStatus.ProductId)) {
                objProductStatus.Selected = true;
            }else{
                objProductStatus.Selected = false;
            }
        });
        
        this.listProductStatus.forEach(element => {
            if(element.Selected && !element.addedInCart && !dataCartIdSet.includes(element.ProductId)){
                let index = currentlySelectedProducutsId.indexOf(element.ProductId);
                    dataCartCopy.push(currentlySelectedProducuts[index]);
                    element.addedInCart = true;
            }else if(!element.Selected && element.addedInCart && dataCartIdSet.length >=1){
                if(event.detail.selectedRows.length==0){
                    element.addedInCart = false;
                    let index = dataCartCopy.indexOf(element.ProductId);
                    dataCartCopy.splice(index,1);
                }else{
                    dataCartCopy=[...this.dataCart];
                    element.addedInCart = false;
                    let index = dataCartIdSet.indexOf(element.ProductId);
                    dataCartCopy.splice(index,1);
                }
            }
        });
        if(event.detail.selectedRows.length==0 && this.listProductStatus.length==0 && dataCartCopy.length==1){
            dataCartCopy=[];
        }
        this.dataCart=[...dataCartCopy];
        this.showCart = true;
    }
    onHandleSortTable(event){
        const { fieldName: sortedBy, sortDirection } = event.detail;
        if(this.dataForSearch!==undefined && this.dataForSearch.length>=1){ 
            const cloneData = [...this.dataForSearch];
            cloneData.sort( this.sortBy( sortedBy, sortDirection === 'asc' ? 1 : -1 ) );
            this.dataForSearch = cloneData;
            this.sortDirection = sortDirection;
            this.sortedBy = sortedBy;
        }
    }
    onHandleSort( event ) {
        const { fieldName: sortedBy, sortDirection } = event.detail;
        const cloneData = [...this.dataCart];

        cloneData.sort( this.sortBy( sortedBy, sortDirection === 'asc' ? 1 : -1 ) );
        this.dataCart = cloneData;
        this.sortDirection = sortDirection;
        this.sortedBy = sortedBy;
    }
    sortBy( field, reverse, primer ) {
        const key = primer
            ? function( x ) {
                return primer(x[field]);
            }
            : function( x ) {
                return x[field];
            };

        return function( a, b ) {
            a = key(a);
            b = key(b);
            return reverse * ( ( a > b ) - ( b > a ) );
        };
    }
    handleRowActions(event){
        const row = event.detail.row;
        let dataCartCopy = [];
        let selectRowCopy =[];
        let deletedRows ='';
        for(let i=0;i<this.dataCart.length;i++){
            if(this.dataCart[i].Id!==event.detail.row.Id){
                dataCartCopy.push(this.dataCart[i]);
            }else{
                deletedRows=event.detail.row.Id;
            }
        }
        this.listProductStatus.forEach(element => {
            if(element.ProductId===deletedRows){
                element.addedInCart = false;
            }
        });
        dataCartCopy.forEach(element => {
            selectRowCopy.push(element.Id);
        });
        this.selectedRows = selectRowCopy;
        this.dataCart = [...dataCartCopy];
    }
    // - HTMl table Sort methods
    sortName(event) {
        this.isNameSort = true;
        this.isPriceSort = false;
        this.isCodeSort = false;
        this.sortData(event.currentTarget.dataset.id);
    }
    sortPrice(event) {
        this.isNameSort = false;
        this.isPriceSort = true;
        this.isCodeSort = false;
        this.sortData(event.currentTarget.dataset.id);
    }

    sortCode(event) {
        this.isNameSort = false;
        this.isPriceSort = false;
        this.isCodeSort = true;
        this.sortData(event.currentTarget.dataset.id);
    }
    sortData(sortColumnName) {
        let previousColumn = false;
        // check previous column and direction
        if (this.sortedColumn === sortColumnName) {
            this.sortedDirection = this.sortedDirection === 'asc' ? 'desc' : 'asc';
        } 
        else {
            previousColumn = true;
            this.sortedDirection = 'asc';
        }
        // check arrow direction
        if (this.sortedDirection === 'asc') {
            this.isAsc = true;
            this.isDsc = false;
        } 
        else {
            this.isAsc = false;
            this.isDsc = true;
        }

        // check reverse direction
        let isReverse = this.sortedDirection === 'asc' ? 1 : -1;
        this.sortedColumn = sortColumnName;
        
        // sort the data
        let dataCopy = JSON.parse(JSON.stringify(this.data)).sort((a, b) => {
                let innerA = typeof a[sortColumnName] === 'string' ? a[sortColumnName].toLowerCase() : a[sortColumnName]; // Handle null values
                let innerB = typeof b[sortColumnName] === 'string' ? b[sortColumnName].toLowerCase() : b[sortColumnName];
            
            if (innerA > innerB) {
                if (this.sortedDirection === 'asc') {
                    return 1;
                } else {
                    return -1;   
                }
            } else if (innerA < innerB) {    
                if (this.sortedDirection === 'asc') {
                    return -1;
                } else {
                    return 1;   
                }
            }  
            return 0; 
        });
        this.data = JSON.parse(JSON.stringify(dataCopy));
    }   
}