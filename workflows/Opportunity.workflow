<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Mark_Account_ready_to_be_Synced</fullName>
        <field>ReadytobeSynced__c</field>
        <literalValue>1</literalValue>
        <name>Mark Account ready to be Synced</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_ordered_checkbox_to_true</fullName>
        <description>Set Ordered to true when opportunity stage is closed won</description>
        <field>SBQQ__Ordered__c</field>
        <literalValue>1</literalValue>
        <name>Set ordered checkbox to true</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UpdateAccountRecordtypetoCustomer</fullName>
        <description>FIELD UPdate to convert prospect to customer</description>
        <field>RecordTypeId</field>
        <lookupValue>Customer</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Account Record type to Customer</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Convert the Prospect to Customer</fullName>
        <actions>
            <name>Mark_Account_ready_to_be_Synced</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>UpdateAccountRecordtypetoCustomer</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will change the account record type to customer once the first opportunity is closed</description>
        <formula>Account.RecordType.Name = &apos;Prospect&apos; &amp;&amp;   ISPICKVAL(StageName, &apos;Closed Won&apos;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Select Ordered Checkbox</fullName>
        <actions>
            <name>Set_ordered_checkbox_to_true</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Won</value>
        </criteriaItems>
        <description>Set Ordered to true when opportunity stage is closed won</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
