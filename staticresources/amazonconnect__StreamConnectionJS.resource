require(['dojo/ready', 'dojox/cometd', 'dojo/dom', 'dojo', 'dojo/query'], function(ready){
  ready(function(){

    var channel = null;
    var connected = false;
    var topicsubscription = false;    
    var cometd = dojox.cometd;

    function metaConnectListener(message) {
        var wasConnected = connected;
        connected = message.successful;
        if (!wasConnected && connected) {                
			display('DEBUG: Connection Successful : '+JSON.stringify(message)+'<br>');
		} else if (wasConnected && !connected) {
                display('DEBUG: Disconnected from the server'+JSON.stringify(message)+'<br>');
        }
    }

    function metaHandshakeListener(message) {
        if (message.successful) {
            display('Handshake successful: '+JSON.stringify(message));
        } else {
            display('DEBUG: Handshake Unsuccessful: '+JSON.stringify(message)+' <br>');
        }
    }

    function metaDisconnectListener(message) {
        display('DEBUG: /meta/disconnect message: '+JSON.stringify(message)+' <br>');
    }

    function metaSubscribeListener(message) {  
        if (message.successful) {
            display('DEBUG: Subscribe Successful '+channel+': '+JSON.stringify(message)+' <br>');
	    } else {
            display('DEBUG: Subscribe Unsuccessful '+channel+': '+JSON.stringify(message)+' <br>');                
        }    
    };

    function metaUnSubscribeListener(message) {  
        if (message.successful) {
            display('DEBUG: Unsubscribe Successful '+JSON.stringify(message)+' <br>');
	    } else {
            display('DEBUG: Unsubscribe Unsuccessful '+JSON.stringify(message)+' <br>');                
        }
    };

    function metaUnSucessfulListener(message) {  
        display('DEBUG:  /meta/unsuccessful Error: '+JSON.stringify(message)+' <br>');
    };

	function displayMessageFormatted(inqueue, aftercallwork, staffed) {
		
		var inqueueElement = dojo.byId('inqueue');
        inqueueElement.innerHTML = '<span class=\'data\'><span class=\'text\'>' + inqueue + '</span></span>';
		
		var callWorkElement = dojo.byId('aftercallwork');
        callWorkElement.innerHTML = '<span class=\'data\'><span class=\'text\'>' + aftercallwork + '</span></span>';
		
		var staffedElement = dojo.byId('staffed');
        staffedElement.innerHTML = '<span class=\'data\'><span class=\'text\'>' + staffed + '</span></span>';
	}

    function unsubscribe() {
        if(topicsubscription) {
            cometd.unsubscribe(topicsubscription);
        }
        topicsubscription = null;
    }

    function leave() {
        unsubscribe();
		channel = null;
    }
	
	function subscribe() {
        console.log('subscribe fn called');
        cometd.subscribe('/event/AC_Queue_Metric_Event__e', function(message) {  
			console.log(message);
            console.log('message'+JSON.stringify(message));
            if(message && message.data && message.data.payload) {
                var queueUpdated = message.data.payload.Queue_Name__c;
                console.log('queue updated'+queueUpdated);
                NotifyQueueUpdated();
            }
        });
    }

    dojo.query('#subscribeButton').onclick(function(e) {
        subscribe();
    }); 
    
    dojo.query('#leaveButton').onclick(function(e) {
        leave();
    });

    function receive(message) {
        var datastream = dojo.byId('datastream');
        data = message.data; 
        datastream.innerHTML += '<span class=\'text\'>' + JSON.stringify(data, null, '\t') + '</span><br/>';
        datastream.innerHTML += '<span class=\'text\'>' + '_____________ ' + '</span><br/><br/>';
        datastream.scrollTop = datastream.scrollHeight - datastream.clientHeight;
    }

    function display(text) {
        console.log(text);
    }
    
    cometd.websocketEnabled = false;
    var auth = 'OAuth ' + token;
    var cometdURL = window.location.protocol+'//'+window.location.hostname+ (null != window.location.port ? (':'+window.location.port) : '') +'/cometd/40.0/';

    cometd.configure({
        url: cometdURL,
        requestHeaders: { Authorization: auth}
    });
	
	

    cometd.addListener('/meta/connect', metaConnectListener);

    cometd.addListener('/meta/handshake', metaHandshakeListener);

    cometd.addListener('/meta/disconnect', metaDisconnectListener);

    cometd.addListener('/meta/subscribe', metaSubscribeListener);

    cometd.addListener('/meta/unsubscribe', metaUnSubscribeListener);

    cometd.addListener('/meta/unsuccessful', metaUnSucessfulListener);

    cometd.handshake( function(handshakeReply){
		if (handshakeReply.successful) {
				subscribe();
        }
	});

  });
});