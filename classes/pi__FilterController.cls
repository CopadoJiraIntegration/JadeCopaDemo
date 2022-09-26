/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class FilterController extends pi.BaseController {
    global pi.LDFilter currentFilter {
        get;
    }
    global Boolean CurrentUserCanViewNotAssignedProspects {
        get;
    }
    @RemoteAction
    global static pi.LDFilter createFilter(String title, String filterCriteriaJson, Boolean allProspects) {
        return null;
    }
    @RemoteAction
    global static pi.LDFilter createFilter1(String title, String filterCriteriaJson, Boolean allProspects, Integer tryCount) {
        return null;
    }
    @RemoteAction
    global static void deleteFilter(String filterId) {

    }
    @RemoteAction
    global static List<pi.LDFilter> getFilters() {
        return null;
    }
    @RemoteAction
    global static pi.LDFilter updateFilter(String title, String filterId, String filterCriteriaJson, Boolean allProspects) {
        return null;
    }
}
