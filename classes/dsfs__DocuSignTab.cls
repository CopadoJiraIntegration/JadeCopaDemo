/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class DocuSignTab {
    global Boolean AnchorIgnoreIfNotPresent {
        get;
        set;
    }
    global String AnchorString {
        get;
        set;
    }
    global Integer AnchorXOffset {
        get;
        set;
    }
    global Integer AnchorYOffset {
        get;
        set;
    }
    global Boolean CustomTabDisableAutoSize {
        get;
        set;
    }
    global Integer CustomTabHeight {
        get;
        set;
    }
    global String CustomTabListItems {
        get;
        set;
    }
    global String CustomTabListSelectedValue {
        get;
        set;
    }
    global String CustomTabListValues {
        get;
        set;
    }
    global Boolean CustomTabLocked {
        get;
        set;
    }
    global String CustomTabRadioGroupName {
        get;
        set;
    }
    global Boolean CustomTabRequired {
        get;
        set;
    }
    global String CustomTabValidationMessage {
        get;
        set;
    }
    global String CustomTabValidationPattern {
        get;
        set;
    }
    global Integer CustomTabWidth {
        get;
        set;
    }
    global dsfs.DocuSignTab.CustomTypeEnum CustomType {
        get;
        set;
    }
    global Integer DocumentID {
        get;
        set;
    }
    global Integer PageNumber {
        get;
        set;
    }
    global Integer RecipientID {
        get;
        set;
    }
    global String TabLabel {
        get;
        set;
    }
    global String TabName {
        get;
        set;
    }
    global dsfs.DocuSignTab.TabTypeEnum TabType {
        get;
        set;
    }
    global String TabValue {
        get;
        set;
    }
    global Integer XPosition {
        get;
        set;
    }
    global Integer YPosition {
        get;
        set;
    }
    global DocuSignTab() {

    }
    global void serializeToWriter(System.XmlStreamWriter w) {

    }
global enum CustomTypeEnum {Checkbox, DateField, Email, Listbox, NumberField, Radio, SSN, Text, ZIP5, ZIP5DASH4}
global enum TabTypeEnum {Company, Custom, DateSigned, EnvelopeID, FullName, InitialHere, InitialHereOptional, SignHere, Title}
}
