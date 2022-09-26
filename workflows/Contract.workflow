<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_Original_Order</fullName>
        <field>Original_Order__c</field>
        <formula>SBQQ__Order__r.OrderNumber</formula>
        <name>Update Original Order</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Populate the Original Order on Contract</fullName>
        <actions>
            <name>Update_Original_Order</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Populate the Original Order on Contract when the contract is new</description>
        <formula>ISNEW() = True</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
