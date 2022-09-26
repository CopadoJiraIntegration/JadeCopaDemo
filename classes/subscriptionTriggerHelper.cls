Public Class subscriptionTriggerHelper{

 private static Map<String, id> eprocessMap;
    public static Map <String, Id> geteprocessMap(){
        if(eprocessMap.isEmpty()){
            for (SlaProcess sla: [SELECT Id, Name FROM SlaProcess WHERE Name = 'Basic Support' LIMIT 10]){
                eprocessMap.put(sla.name, sla.id);
            }
        }
        return eprocessMap;
    }
}