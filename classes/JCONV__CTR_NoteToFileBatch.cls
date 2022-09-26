/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CTR_NoteToFileBatch implements Database.Batchable<SObject>, Database.Stateful {
    global Map<Id,String> errorMap;
    global String soqlStr;
    global void execute(Database.BatchableContext BC, List<Note> scope) {

    }
    global void finish(Database.BatchableContext bc) {

    }
    global Database.QueryLocator start(Database.BatchableContext bc) {
        return null;
    }
}
