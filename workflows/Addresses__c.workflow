<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>UpdateRTSonAddresses</fullName>
        <description>This will allow addresses to be synced from salesforce to NESUITE AND ORACLE ERP</description>
        <field>ReadytobeSynced__c</field>
        <literalValue>1</literalValue>
        <name>Update RTS on Addresses</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Mark Address ready to be Synced on Update</fullName>
        <actions>
            <name>UpdateRTSonAddresses</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>This will fire when a address is added and address is complete and needs to be synced with NetSuite or Oracle</description>
        <formula>OR(ISNEW(),OR(ISCHANGED(Billing__c),ISCHANGED(City__c),ISCHANGED( Country__c ) ,ISCHANGED( Shipping__c ) ,ISCHANGED( State__c ) ,ISCHANGED( Street__c ) , ISCHANGED(  ZipCode__c  )))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
