/**
 * @description       : 
 * @author            : Jade Global
 * @group             : 
 * @last modified on  : 15-02-2021
 * @last modified by  : Jade Global
 * Modifications Log 
 * Ver   Date         Author        Modification
 * 1.0   05-30-2021   Jade Global   Initial Version
**/
public with sharing class ShowCartDetailsController {

    public string url {get;set;}
    public String quoteRecordId {get;set;}

    // Approvals Section on Email Template 
    public String InstanceURL{get; set;}
    public ID ApproverId{get; set;}
    public ID ApprovalRequestId{get; set;}
    public boolean IsAssignment {get; set;}
    public boolean IsApproved {get; set;}
    public boolean IsApproveOrReject {get; set;}
    public Boolean IsShowApprovalSection {get;set;}
    public boolean IsEmailTemplateView {get;set;}
    public boolean IsShowCartView {get;set;}

    public ShowCartDetailsController() {
        url  = System.Url.getSalesforceBaseURL().toExternalForm();
        quoteRecordId = ApexPages.currentPage().getParameters().get('id');
    }

}