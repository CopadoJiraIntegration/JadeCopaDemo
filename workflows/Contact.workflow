<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>UpdateReadytoBeSyncedtoTrueonCnt</fullName>
        <description>Update Ready to Be Synced to True on Contact update</description>
        <field>ReadytobeSynced__c</field>
        <literalValue>1</literalValue>
        <name>Update Ready to Be Synced to True on Cnt</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Mark Contact ready to be Synced on Update</fullName>
        <actions>
            <name>UpdateReadytoBeSyncedtoTrueonCnt</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Set the flag to sync the Contact to ERP System</description>
        <formula>ISNEW() = false &amp;&amp;  ( ISCHANGED(  MailingAddress  ) || ISCHANGED( FirstName ) || ISCHANGED(  LastName  )  || ISCHANGED( Description )|| ISCHANGED(  Phone  ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
