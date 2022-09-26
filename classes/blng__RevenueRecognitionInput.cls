/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class RevenueRecognitionInput {
    @InvocableVariable(label='Currency ISO Code' description='Currency ISO code for recognized revenue' required=false)
    global String currencyIsoCode;
    @InvocableVariable(label='End Date' description='Refers to the revenue term end date' required=false)
    global Date endDate;
    @InvocableVariable(label='Legal Entity Id' description='Refers to the legal entity where this revenue is recorded' required=false)
    global Id legalEntityId;
    @InvocableVariable(label='Revenue Amount' description='Total revenue to recognize with this revenue schedule' required=true)
    global Decimal revenueAmount;
    @InvocableVariable(label='Revenue Recognition Rule Id' description='Lookup to the revenue recognition rule used for this revenue schedule' required=true)
    global Id revenueRecognitionRuleId;
    @InvocableVariable(label='Source' description='Id of the source object from which this revenue is recognized' required=true)
    global Id source;
    @InvocableVariable(label='Source Field Name' description='Name of the field on revenue schedule to insert the source id' required=true)
    global String sourceFieldName;
    @InvocableVariable(label='Start Date' description='Refers to the revenue term start date' required=true)
    global Date startDate;
    global RevenueRecognitionInput() {

    }
}
