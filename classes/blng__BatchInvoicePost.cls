/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class BatchInvoicePost implements Database.AllowsCallouts, Database.Batchable<SObject>, Database.Stateful, blng.BatchInvoice {
    global Id invoiceRunId;
    global String query;
    global Set<Id> setOfInvoiceIds;
    global BatchInvoicePost() {

    }
    global void execute(Database.BatchableContext bc, List<blng__Invoice__c> listOfInvoices) {

    }
    global void finish(Database.BatchableContext BC) {

    }
    global void setInvoiceRunId(Id invoiceRunId) {

    }
    global void setOfInvoiceIds(Set<Id> setOfInvoiceIds) {

    }
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return null;
    }
}
