<?xml version="1.0" encoding="UTF-8"?>
<CustomMetadata xmlns="http://soap.sforce.com/2006/04/metadata" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <label>Generate_Package_Version_Failure</label>
    <protected>false</protected>
    <values>
        <field>copado__Active__c</field>
        <value xsi:type="xsd:boolean">true</value>
    </values>
    <values>
        <field>copado__Description__c</field>
        <value xsi:nil="true"/>
    </values>
    <values>
        <field>copado__Subject__c</field>
        <value xsi:type="xsd:string">Package Version {PackageName} - {PackageVersionName} was not generated</value>
    </values>
    <values>
        <field>copado__Template__c</field>
        <value xsi:type="xsd:string">Hi {UserName},

&lt;br/&gt;&lt;br/&gt;

Package Version &lt;b&gt;&lt;a href=&quot;{PackageVersionLink}&quot;&gt;{PackageVersionName}&lt;/a&gt;&lt;/b&gt; could not be generated. Please visit the &lt;b&gt;&lt;a href=&quot;{JobExecutionLink}&quot;&gt;job execution&lt;/a&gt;&lt;/b&gt; in the package version record for more information.</value>
    </values>
</CustomMetadata>
