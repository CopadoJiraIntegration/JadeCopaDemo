<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>UpdateReadytoBeSyncedtoTrueonUpd</fullName>
        <description>This will update flag for dell boomi to true</description>
        <field>ReadytobeSynced__c</field>
        <literalValue>1</literalValue>
        <name>Update Ready to Be Synced to True on Upd</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Mark Customer ready to be Synced on Update</fullName>
        <actions>
            <name>UpdateReadytoBeSyncedtoTrueonUpd</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISNEW() = false &amp;&amp;  ( ISCHANGED(ShippingAddress) || ISCHANGED( BillingAddress ) || ISCHANGED(Name) || ISCHANGED( Description )|| ISCHANGED(  Phone  ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
