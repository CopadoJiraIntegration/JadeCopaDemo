/**
 * An apex page controller that exposes the site login functionality
 */
global with sharing class SiteLoginController {
    global String username {get; set;}
    global String password {get; set;}

    global PageReference login() {
        String startUrl = System.currentPageReference().getParameters().get('startURL');
        System.debug('--test---');
        System.debug('--test again---');
        System.debug('--end to end testing---');
        System.debug('--Demo for Commit Changes---');
        System.debug('--Demo for Commit Changes part 2---');
        return Site.login(username, password, startUrl);
    }
    
   	global SiteLoginController () {}
}