/**

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

(function(ctx) {
  if (ctx.ACSFIntegration === undefined) {
    ctx.ACSFIntegration = {};
  }

  var _namespacePrefix;

  ctx.ACSFIntegration.CallInformation = {
    /**
     * CallInformation initializer
     * @param namespacePrefix {string}
     */
    onAgentHandler : function(namespacePrefix) {
      connect.getLog().info("ACSFIntegration:CallInformation:onAgentHandler invoked");

      _namespacePrefix = namespacePrefix;
        
        if (sforce.opencti) {
        sforce.opencti.onNavigationChange({
          listener: function (response) {
            connect.getLog().info("ACSFIntegration:CallInformation:onNavigationChange: %s", JSON.stringify(response));
            if (response && response.objectType) {
              var objectType = response.objectType;

              handleObjectTypeRecordId(objectType, response.recordId);
            }
          }
        });
      }
        
    },

    processExactMatch: function(objectId) {
      var objectType = '';

      if (objectId.startsWith("003")) {
        objectType = 'Contact';
      } else if (objectId.startsWith("00Q")) {
        objectType = 'Lead';
      } else if (objectId.startsWith("001")) {
        objectType = 'Account';
      } else if (objectId.startsWith("500")) {
        objectType = 'Case';
      } else if (objectId.startsWith("006")) {
        objectType = 'Opportunity';
      }

      if (sessionStorage.getItem("CCP-callActive") === 'true') {
        sessionStorage.setItem("CCP-callRecordId", objectId);
        handleObjectTypeRecordId(objectType, objectId);
      }
    },

    dumpContact : function(tag, contact) {
      var debug = sessionStorage.getItem("CCP-debug") === 'true';

      if (debug) {
        var cd = {};

        try {
          cd.contactId = contact.contactId;
          cd.isConnected = contact.isConnected();
          cd.connections = this.dumpConnections(contact.getConnections());
          cd.type = contact.getType();
          cd.isInbound = contact.isInbound();
          cd.status = contact.getStatus();
          cd.attributes = contact.getAttributes();
        } catch (err) {
          cd.err = err;
        }

        connect.getLog().log("ACSFIntegration:CallInformation:dumpContact: %s %s", tag, JSON.stringify(cd, null, 4));
      }
    },

    dumpConnections : function(connections) {
      connections.forEach(function(connection) {
        var c = {};
        c.endpoint = connection.getEndpoint();
        c.status = connection.getStatus();
        c.type = connection.getType();
        c.isActive = connection.isActive();
        c.isConnected = connection.isConnected();
        c.isConnecting = connection.isConnecting();
        c.isOnHold = connection.isOnHold();

        connections.push(c);
      });

      return connections;
    }
  };

  /**
   *
   * @param objectType {string}
   * @param recordId {string}
   */
  function handleObjectTypeRecordId(objectType, recordId) {
    if (objectType === 'Contact' || objectType === 'Lead' || objectType === 'Account' || objectType === 'Case' || objectType === 'Opportunity') {
      Visualforce.remoting.Manager.invokeAction(
        _namespacePrefix + 'ACSFCCP_CallInformationController.getTaskDetails',
        recordId,
        function (result, event) {
          if (event.status && result) {
            if (result.whoId) {
              sessionStorage.setItem("CCP-whoId", result.whoId);
              sessionStorage.setItem("CCP-callExactMatch", "true");
            } else {
              sessionStorage.removeItem("CCP-whoId");
            }

            if (result.whatId) {
              sessionStorage.setItem("CCP-whatId", result.whatId);
              sessionStorage.setItem("CCP-callExactMatch", "true");
            } else {
              sessionStorage.removeItem("CCP-whatId");
            }

            connect.getLog().info("ACSFIntegration:CallInformation:handleObjectTypeRecordId:sessionStorage: %s", JSON.stringify(sessionStorage));
          }
        }
      );
    }
  }
})(this);