import { LightningElement,track } from 'lwc';
import PAYMENT_METHOD_OBJECT from '@salesforce/schema/blng__PaymentMethod__c';
import FIRSTNAME_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BillingFirstName__c';
import LASTNAME_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BillingLastName__c';
import EMAIL_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BillingEmail__c';
import STREET_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BillingStreet__c';
import CITY_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BillingCity__c';
import COUNTRY_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BillingCountry__c';
import STATE_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BillingStateProvince__c';
import ZIP_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BillingZipPostal__c';
import BANK_NAME_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BankName__c';
import BANK_ACCOUNT_TYPE_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BankAccountType__c';
import BANK_ACCOUNT_NAME_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BankAccountName__c';
import BANK_ACCOUNT_NUMBER_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BankAccountNumber__c';
import BANK_ROUTING_CODE_FIELD from '@salesforce/schema/blng__PaymentMethod__c.blng__BankRoutingCode__c';


export default class PaymentVirtualTerminalCustom extends LightningElement {

    @track isShowModal = false;
    @track inputAmount;
    @track isShowNext = false;
    @track isShowFirstPage = true;
    @track selectedCardACH = '';
    @track selectedCardCredit = '';
    @track isShowCreditCardModal = false;
    @track isShowACHModal = false;

    @track isCreditCard = false;
    @track isACH = true;
    @track isPaymentMethodAvailable = false;

    paymentMethodObject = PAYMENT_METHOD_OBJECT;
    firstNameField = FIRSTNAME_FIELD;
    lastNameField = LASTNAME_FIELD;
    emailField = EMAIL_FIELD;
    streetField = STREET_FIELD;
    cityField = CITY_FIELD;
    countryField = COUNTRY_FIELD;
    stateField = STATE_FIELD;
    zipField = ZIP_FIELD;
    bankNameField = BANK_NAME_FIELD;
    bankAccNameField = BANK_ACCOUNT_NAME_FIELD;
    bankAccNumberField = BANK_ACCOUNT_NUMBER_FIELD;
    bankRoutingCodeField = BANK_ROUTING_CODE_FIELD;
    bankAccTypeField = BANK_ACCOUNT_TYPE_FIELD;

    selectDivElement(event) { 

       // alert('event ',event.currentTarget.id.split('-')[0]);

        if(event.currentTarget.id.split('-')[0] == 'ACH'){
            this.selectedCardACH = 'selectedCard';
            this.selectedCardCredit = '';
            this.isACH = true;
            this.isCreditCard = false;
        }
        if(event.currentTarget.id.split('-')[0] == 'Credit_Card'){
            this.selectedCardCredit = 'selectedCard';
            this.selectedCardACH = '';
            this.isCreditCard = true;
            this.isACH = false;
        }
        
    }

    showModalBox() {  
        this.isShowModal = true;
    }

    hideModalBox() {  
        this.isShowModal = false;
        this.isShowCreditCardModal = false;
        this.isShowACHModal = false;
    }

    showNextPage(){
        this.isShowNext = true;
        this.isShowFirstPage = false;
        this.isShowModal = false;
    }

    showPreviousPage(){
        this.isShowNext = false;
        this.isShowFirstPage = true;
        this.isShowModal = false;
    }

    showPaymentModal(){
        if(this.isCreditCard == true){
            this.isShowCreditCardModal = true;
        }
        else if(this.isACH == true){
            this.isShowACHModal = true;
        }
        this.isShowFirstPage = false;
       // this.isShowNext = false;

    }

    showACHModal(){
        this.isShowACHModal = true;
        this.isShowFirstPage = false;
        this.isShowCreditCardModal = false;
    }
}