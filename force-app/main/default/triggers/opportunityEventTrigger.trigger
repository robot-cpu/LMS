trigger opportunityEventTrigger on opportunityc__e (after insert) {
    
	List<Event_Log__c> events = new List<Event_Log__c>();
    
    for(opportunityc__e event: trigger.new){
          
        Event_Log__c eventObj = new Event_Log__c();
            
            eventObj.logEventType__c = event.eventType__c;
            eventObj.Log_Amount__c = event.opportunityAmount__c;
            eventObj.logName__c = event.OpportunityName__c;
            eventObj.logStage__c = event.OpportunityStage__c;
            
            events.add(eventObj);
        }
    
    insert events;
}