<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>This_is_to_send_email_on_population_of_last_name_of_candidate_record</fullName>
        <description>This is to send email on population of last name of candidate record</description>
        <protected>false</protected>
        <recipients>
            <recipient>abhijeet.baneka@cpqdemo.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Wedding_Pro_Welcome</template>
    </alerts>
    <rules>
        <fullName>Update Last Name</fullName>
        <actions>
            <name>This_is_to_send_email_on_population_of_last_name_of_candidate_record</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>NOT(ISBLANK( Name ) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
