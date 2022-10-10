/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class BatchInvoicePreUsageOperation implements Database.Batchable<SObject>, Database.Stateful, blng.BatchInvoice {
    global Map<Id,Set<Id>> mapOfSetOfUsageSummaryIdByOrderProductId;
    global String query;
    global BatchInvoicePreUsageOperation() {

    }
    global void execute(Database.BatchableContext BC, List<blng__Usage__c> listOfUsages) {

    }
    global void finish(Database.BatchableContext BC) {

    }
    global Database.QueryLocator start(Database.BatchableContext BC) {
        return null;
    }
}
