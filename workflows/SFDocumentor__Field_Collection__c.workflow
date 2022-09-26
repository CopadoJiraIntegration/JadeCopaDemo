<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>SFDocumentor__Alert_on_field_metadata_Changed</fullName>
        <ccEmails>shindeparimal2@gmail.com</ccEmails>
        <description>Alert on field metadata Changed</description>
        <protected>false</protected>
        <recipients>
            <field>SFDocumentor__Status_Updated_By__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SFDocumentor__SFDocumentor/SFDocumentor__Send_Email_to_User_on_Field_Metadata_Change</template>
    </alerts>
    <alerts>
        <fullName>SFDocumentor__This_Email_Alert_will_send_email_to</fullName>
        <ccEmails>shindeparimal2@gmail.com</ccEmails>
        <description>This Email Alert will send email to</description>
        <protected>false</protected>
        <recipients>
            <field>SFDocumentor__Status_Updated_By__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>SFDocumentor__SFDocumentor/SFDocumentor__Who_Updated_Status_Field_Last_Time</template>
    </alerts>
</Workflow>
