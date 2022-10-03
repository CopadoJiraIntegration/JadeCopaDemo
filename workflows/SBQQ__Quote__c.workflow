<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Approval_Status</fullName>
        <field>ApprovalStatus__c</field>
        <literalValue>Pending</literalValue>
        <name>Approval Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Approval_Time_Capture</fullName>
        <field>CompletedDate__c</field>
        <formula>NOW()</formula>
        <name>Approval Time Capture</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Capture_Approval_Submitted_time</fullName>
        <field>SubmittedDate__c</field>
        <formula>NOW()</formula>
        <name>Capture Approval Submitted time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Capture_Recall_Status</fullName>
        <field>ApprovalStatus__c</field>
        <literalValue>Recalled</literalValue>
        <name>Capture Recall Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Quote_approval_time_capture</fullName>
        <field>CompletedDate__c</field>
        <formula>NOW()</formula>
        <name>Quote approval time capture</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Set_Quote_Process_Id</fullName>
        <description>Set Quote Process id on Quote</description>
        <field>SBQQ__QuoteProcessId__c</field>
        <formula>&quot;a0w5w000009WvN5AAK&quot;</formula>
        <name>Set Quote Process Id</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Approval_Status</fullName>
        <field>ApprovalStatus__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Approval Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Quote_Status_Approved</fullName>
        <field>SBQQ__Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update Quote Status Approved</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Quote_Status_In_Review</fullName>
        <field>SBQQ__Status__c</field>
        <literalValue>In Review</literalValue>
        <name>Update Quote Status In Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Quote_Status_Rejected</fullName>
        <field>SBQQ__Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Update Quote Status Rejected</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Rejection_Status</fullName>
        <field>ApprovalStatus__c</field>
        <literalValue>Rejected</literalValue>
        <name>Update Rejection Status</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Add Quote process id</fullName>
        <actions>
            <name>Set_Quote_Process_Id</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.SBQQ__QuoteProcessId__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <description>Add Quote process id on quote</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Quote Status Approved</fullName>
        <actions>
            <name>Update_Quote_Status_Approved</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.ApprovalStatus__c</field>
            <operation>equals</operation>
            <value>Approved</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Quote Status In Review</fullName>
        <actions>
            <name>Update_Quote_Status_In_Review</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.ApprovalStatus__c</field>
            <operation>equals</operation>
            <value>Pending</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Quote Status Rejected</fullName>
        <actions>
            <name>Update_Quote_Status_Rejected</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>SBQQ__Quote__c.ApprovalStatus__c</field>
            <operation>equals</operation>
            <value>Rejected</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
