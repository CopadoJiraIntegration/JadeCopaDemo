/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DocuSignRecipient {
    global String AccessCode {
        get;
        set;
    }
    global Boolean AddAccessCodeToEmail {
        get;
        set;
    }
    global dsfs.DocuSignRecipient.IDCheckDisplayLevelEnum AddressDisplayLevel {
        get;
        set;
    }
    global Boolean AutoNavigation {
        get;
        set;
    }
    global String CaptiveUserId {
        get;
        set;
    }
    global String City {
        get;
        set;
    }
    global List<String> CustomFieldList;
    global String DOB {
        get;
        set;
    }
    global dsfs.DocuSignRecipient.IDCheckDisplayLevelEnum DOBDisplayLevel {
        get;
        set;
    }
    global String Email {
        get;
        set;
    }
    global Integer ID {
        get;
        set;
    }
    global String IDCheckConfigurationName {
        get;
        set;
    }
    global String Language {
        get;
        set;
    }
    global String NoteTo {
        get;
        set;
    }
    global dsfs.DocuSignRecipient.RecipientTypeEnum RecipientType {
        get;
        set;
    }
    global String RelatedSalesforceID {
        get;
        set;
    }
    global Boolean RequireIDLookup {
        get;
        set;
    }
    global String RoleName {
        get;
        set;
    }
    global Integer RoutingOrder {
        get;
        set;
    }
    global String SignatureInitials {
        get;
        set;
    }
    global String SignatureName {
        get;
        set;
    }
    global String SSN4 {
        get;
        set;
    }
    global dsfs.DocuSignRecipient.IDCheckDisplayLevelEnum SSN4DisplayLevel {
        get;
        set;
    }
    global String SSN9 {
        get;
        set;
    }
    global dsfs.DocuSignRecipient.IDCheckDisplayLevelEnum SSN9DisplayLevel {
        get;
        set;
    }
    global String State {
        get;
        set;
    }
    global String Street1 {
        get;
        set;
    }
    global String Street2 {
        get;
        set;
    }
    global Boolean UseIDCheckAddressInput {
        get;
        set;
    }
    global Boolean UseIDCheckDOBInput {
        get;
        set;
    }
    global Boolean UseIDCheckSSN4Input {
        get;
        set;
    }
    global Boolean UseIDCheckSSN9Input {
        get;
        set;
    }
    global String UserName {
        get;
        set;
    }
    global String Zip {
        get;
        set;
    }
    global String ZipPlus4 {
        get;
        set;
    }
    global DocuSignRecipient() {

    }
    global void serializeToWriter(System.XmlStreamWriter w) {

    }
global enum IDCheckDisplayLevelEnum {DoNotDisplay, Editable, ReadOnly}
global enum RecipientTypeEnum {CarbonCopy, CertifiedDelivery, Signer}
}
