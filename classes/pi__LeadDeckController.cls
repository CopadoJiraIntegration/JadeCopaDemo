/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class LeadDeckController extends pi.BaseController {
    @RemoteAction
    global static pi.LDFilter createFilter(pi.LDFilter filter) {
        return null;
    }
    @RemoteAction
    global static pi.LDFilter createFilter1(pi.LDFilter filter, Integer tryCount) {
        return null;
    }
    @RemoteAction
    global static void deleteFilter(String filterId) {

    }
    @RemoteAction
    global static Object findTextInObject(String objectName, String searchField, String searchText, Integer countLimit) {
        return null;
    }
    @ReadOnly
    @RemoteAction
    global static Object getActionsByCriteria(String filterCriteria, String fromTimeStamp, Boolean assignedToAllUsers) {
        return null;
    }
    @RemoteAction
    global static Object getActionsByFilterId(String filterCriteriaHash, Boolean assignedToAllUsers) {
        return null;
    }
    @RemoteAction
    global static Object getActionsByPersonId(String id, String type, Integer theLimit, Boolean includePageViews) {
        return null;
    }
    @RemoteAction
    global static pi.ActiveUser getActiveUser() {
        return null;
    }
    @RemoteAction
    global static List<pi.LDFilter> getFiltersV2(Boolean isV2Alerts) {
        return null;
    }
    @RemoteAction
    global static List<pi.LDFilter> getFilters() {
        return null;
    }
    @RemoteAction
    global static Object getViewAccessDetailsOnAllFields() {
        return null;
    }
    @RemoteAction
    global static String recordToggleStateChange(Boolean toggleState) {
        return null;
    }
    @RemoteAction
    global static void recordUsage(Boolean isV2Alerts) {

    }
    @RemoteAction
    global static String sendAlertsStats(String stats) {
        return null;
    }
    @RemoteAction
    global static pi.LDFilter updateFilter(pi.LDFilter filter) {
        return null;
    }
}
