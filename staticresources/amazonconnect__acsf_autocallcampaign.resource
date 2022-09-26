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

  if (!sforce.console.isInConsole()) {
    ctx.ACSFIntegration.AutoCallCampaign = {
      onAgentHandler : function() {
        connect.getLog().info("ACSFIntegration:AutoCallCampaign:onAgentHandler not in console");
      }
    };
    return;
  }

  ctx.ACSFIntegration.AutoCallCampaign = {
    /**
     * AutoCallCampaign initializer
     * @param ccSettings
     */
    onAgentHandler : function(ccSettings) {
      connect.getLog().info("ACSFIntegration:AutoCallCampaign:onAgentHandler invoked");

      sforce.console.addEventListener(
        sforce.console.ConsoleEvent.PRESENCE.WORK_ACCEPTED,
        function(result) {
          connect.getLog().info("ACSFIntegration:AutoCallCampaign:onAgentHandler:OmniWorkAccptedHandler invoked");
          var callCampaign = new SObjectModel.Call_Campaign();
          callCampaign.retrieve({where:{Id: {eq:result.workItemId}}}, function(err, records, event) {
            if (err) {
              connect.getLog().error("ACSFIntegration:AutoCallCampgin:onAgentHandler unable to retrieve call campaign record.").withObject(err);
            }
            else {
              records.forEach(function(record) {
                var phone = record.get("Phone_Number");
                var id = record.get("Id").substr(0, 15);
                var contactId = record.get("Contact");
                var leadId = record.get("Lead");
                var accountId = record.get("Account");
                var oppId = record.get("Opportunity");
                var caseId = record.get("Case");

                connect.getLog().info("ACSFIntegration:AutoCallCampaign:onAgentHandler:RecordReceived:%s", phone+" "+id+" "+contactId+" "+accountId+" "+oppId);
                sforce.console.getFocusedPrimaryTabId(function(response){
                  leadId && sforce.console.openSubtab(response.id, '/' + leadId, true, undefined, undefined);
                  contactId && sforce.console.openSubtab(response.id, '/' + contactId, true, undefined, undefined);
                  accountId && sforce.console.openSubtab(response.id, '/' + accountId, false, undefined, undefined);
                  oppId && sforce.console.openSubtab(response.id, '/' + oppId, false, undefined, undefined);
                  caseId && sforce.console.openSubtab(response.id, '/' + caseId, false, undefined, undefined);
                });

                connect.agent(function(agent){
                  var connectPhoneFormat = JSON.parse(ccSettings["/reqConnectSFCCPOptions/reqConnectPhoneFormat"]);
                  var phoneParsed = libphonenumber.parse(phone, { country: { default: connectPhoneFormat.Country }});
                  connect.getLog().info("ConnectSFCCP:cbInConsole:onClickListener:OK:Parsed:%s", phoneParsed.country+"|"+phoneParsed.phone);
                  var e164PhoneNumber = libphonenumber.format(phoneParsed.phone, phoneParsed.country, connectPhoneFormat.NF);
                  connect.getLog().info("ConnectSFCCP:cbInConsole:onClickListener:OK:h164Number:%s", e164PhoneNumber);
                  agent.connect(connect.Address.byPhoneNumber(e164PhoneNumber),{});
                  connect.getLog().info("ConnectSFCCP:cbInConsole:Classic:onClickListener:OK:AgentConnect");
                  sforce.interaction.setVisible(true);
                });
              });
            }
          });
        }
      );
    }
  };
})(this);