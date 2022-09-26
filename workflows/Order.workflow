<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Check_Contracted_Checkbox</fullName>
        <description>Set checkbox value to true</description>
        <field>SBQQ__Contracted__c</field>
        <literalValue>1</literalValue>
        <name>Check Contracted Checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Mark_Order_Ready_to_be_Sync_on_Activate</fullName>
        <field>ReadytobeSynced__c</field>
        <literalValue>1</literalValue>
        <name>Mark Order Ready to be Sync on Activate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Mark Order Ready to be Synced on Activate</fullName>
        <actions>
            <name>Mark_Order_Ready_to_be_Sync_on_Activate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Order.Status</field>
            <operation>equals</operation>
            <value>Activated</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Select Contracted Checkbox</fullName>
        <actions>
            <name>Check_Contracted_Checkbox</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Order.Status</field>
            <operation>equals</operation>
            <value>Activated</value>
        </criteriaItems>
        <description>Select Contracted Checkbox when Order Status is equal to Activated.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
