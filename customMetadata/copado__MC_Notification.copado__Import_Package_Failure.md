<?xml version="1.0" encoding="UTF-8"?>
<CustomMetadata xmlns="http://soap.sforce.com/2006/04/metadata" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <label>Import_Package_Failure</label>
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
        <value xsi:type="xsd:string">Package {PackageName} was not imported</value>
    </values>
    <values>
        <field>copado__Template__c</field>
        <value xsi:type="xsd:string">Hi {UserName},

&lt;br/&gt;&lt;br/&gt;

Package &lt;b&gt;&lt;a href=&quot;{PackageLink}&quot;&gt;{PackageName}&lt;/a&gt;&lt;/b&gt; was not imported into the pipeline. Please visit the &lt;b&gt;&lt;a href=&quot;{JobExecutionLink}&quot;&gt;job execution&lt;/a&gt;&lt;/b&gt; in the package record for more information.</value>
    </values>
</CustomMetadata>
