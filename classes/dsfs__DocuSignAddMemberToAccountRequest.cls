/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DocuSignAddMemberToAccountRequest {
    global String accountId {
        get;
        set;
    }
    global String adminPassword {
        get;
        set;
    }
    global String adminUserId {
        get;
        set;
    }
    global List<dsfs.DocuSignMember> DocuSignMemberList {
        get;
        set;
    }
    global DocuSignAddMemberToAccountRequest() {

    }
    @Deprecated
    global void AddMember(dsfs.DocuSignMember member) {

    }
    global String serializeXML() {
        return null;
    }
}
