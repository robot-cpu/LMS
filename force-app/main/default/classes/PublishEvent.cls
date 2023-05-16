public class PublishEvent {
    public static void createEvents(){
        // Create an instance of the event and store it in the newsEvent variable
        Order_Event__e newsEvent = new Order_Event__e(
            Order_Number__c = '001',
            Has_Shipped__c = true
        );
        // method to publish events
        Database.SaveResult sr = EventBus.publish(newsEvent);
        // Inspect publishing result
        if (sr.isSuccess()) {
            System.debug('Successfully published event.');
        } else {
            for(Database.Error err : sr.getErrors()) {
                System.debug('Error returned: ' +
                             err.getStatusCode() +
                             ' - ' +
                             err.getMessage());
            }
        }
   }
}
/*opportunityc__e newEvent = new opportunityc__e(
	eventType__c = 'opportunity created',
	opportunityAmount__c = '2000',
    OpportunityName__c = 'new opp from apex',
    OpportunityStage__c = 'analysis'
    
);
    EventBus.publish(newEvent); */