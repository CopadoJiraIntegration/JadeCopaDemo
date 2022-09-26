/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global virtual class MicroCampaignCtrl extends pi.BaseController {
    global MicroCampaignCtrl() {

    }
    @RemoteAction
    global static Map<String,Object> determineIfOwnersExistsInPardotV2(List<String> ownerIds, String sendingUserId) {
        return null;
    }
    @RemoteAction
    global static Map<String,Boolean> determineIfOwnersExistsInPardot(List<String> ownerIds) {
        return null;
    }
    @RemoteAction
    global static Map<String,String> getEmailTemplate(String templateId) {
        return null;
    }
    @RemoteAction
    global static Map<String,Object> getPardotVariableTags() {
        return null;
    }
    @RemoteAction
    global static String populatePardotMergeTags(String id, String email, String message) {
        return null;
    }
    @RemoteAction
    global static String populatePardotMergeTagsV2(String id, String email, String isSoboEnabled, String soboOwnersInPardot, String userId, String userFullName, String userEmail, String message) {
        return null;
    }
    @RemoteAction
    global static Map<String,String> populatePardotMergeTagsV3(String id, String email, String isSoboEnabled, String soboOwnersInPardot, String userId, String userFullName, String userEmail, String message, String subject) {
        return null;
    }
    @RemoteAction
    global static String sendEmail(Map<String,Object> email) {
        return null;
    }
    @RemoteAction
    global static String sendMicrocampaign(Map<String,Object> email, String permissionPolicyAck) {
        return null;
    }
}
