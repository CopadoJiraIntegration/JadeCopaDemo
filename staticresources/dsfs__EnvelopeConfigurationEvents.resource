window.EnvelopeConfigurationEvents = function(component, event, helper) {
    /** Event Init Router **/
    var initResponse = function(componentName, callback) { //Callback only needed for BaseComponent
        switch (componentName) {
            case 'BaseComponent':
                return baseEventInit(callback);
            case 'ModalComponent':
                return modalEventInit();
            case 'ListElement':
                return listElementEventInit();
            case 'SaveButton':
                return saveEventInit();
            case 'ManageLayout':
                return manageLayoutsInit();
        }
        return null;
    };
    /**  Event Init Handlers **/
    var baseEventInit = function(callback) {
        if (window.onmessage === null) {
            window.onmessage = function(event) {
                if (event.isTrusted && event.data !== null) {
                    var EventResponse = JSON.parse(event.data);
                    if (EventResponse.Action === 'Refesh') {
                        //getBaseAction(component.get("v.recordId"), event);
                        callback(component.get("v.recordId"), event);
                        helper.closeModal(component, event);
                    } else if (EventResponse.Action === 'GlobalSave') {
                        helper.saveRecord(component, event);
                    }
                }
            };
        }
        return true;
    };

    var modalEventInit = function() {
        window.addEventListener("message", function(event) {
            if (!event.isTrusted) {
                return;
            }
            var EventResponse = JSON.parse(event.data);
            if (EventResponse.Action === 'ListElementResponse') {
                component.set("v.vfHost", EventResponse.Source);
            }
        }, false);
        return true;
    };

    var manageLayoutsInit = function() {
        if (window.onmessage === null) {
            window.onmessage = function(event) {
                if (!event.isTrusted) {
                    return;
                }
                var EventResponse = JSON.parse(event.data);
                if (EventResponse.Action === 'ManageLayoutResponse') {
                    var layoutsArray = EventResponse.layouts;
                    component.set("v.Layouts", helper.buildLayoutsObject(component, event, layoutsArray));
                    component.set("v.LayoutAction", helper.getLayoutAction(layoutsArray, 'manage_layouts', component.get("v.recordId"), event, component));
                }
            };
        }
        return true;
    };

    var saveEventInit = function() {
        // setTimeout(function() {
        //     $A.get("e.force:closeQuickAction").fire();
        // }, 100);        
        var eventResponse = getEventResponse('GlobalSave');
        console.log('eventResponse : ', eventResponse);
        return postAction(JSON.stringify(eventResponse));
    };

    var listElementEventInit = function() {
        return postAction(JSON.stringify(getEventResponse('ListElementResponse')));
    };
    /** Event Response **/
    var getEventResponse = function(route) {      
        switch (route) {
            case 'ListElementResponse':
                var EventResponse = {};
                EventResponse.Action = 'ListElementResponse';
                EventResponse.Destination = document.location.ancestorOrigins[0];
                EventResponse.Source = document.location.origin;
                return EventResponse;
            case 'ListElementInitPost':
                var EventResponse = {};
                EventResponse.Action = 'ListElementInitPost';
                EventResponse.Destination = document.location.ancestorOrigins[0];
                EventResponse.Source = document.location.origin;
                return EventResponse;
            case 'Refesh':
                var EventResponse = {};
                EventResponse.Action = 'Refesh';
                EventResponse.Destination = window.location.origin;
                EventResponse.Source = document.location.origin;
                return EventResponse;
            case 'GlobalSave':
                var EventResponse = {};
                EventResponse.Action = 'GlobalSave';
                EventResponse.Destination = "https://docusignnakucbregression2-dev-ed.lightning.force.com";//document.location.origin;
                EventResponse.Source = document.location.origin;
                return EventResponse;
        }
        return null;
    };

    var postAction = function(EventResponse) {
        parent.postMessage(JSON.stringify(EventResponse), EventResponse.Destination);
        return true;
    };

    return {
        init: initResponse,
        getEventResponse: getEventResponse,
        postAction: postAction,
    };

};