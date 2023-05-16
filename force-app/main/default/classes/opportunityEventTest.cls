@isTest
public class opportunityEventTest {
    @isTest static void testClass(){
        opportunityc__e newEvent = new opportunityc__e(
	eventType__c = 'opportunity created',
	opportunityAmount__c = '7000',
    OpportunityName__c = 'test opp from apex',
    OpportunityStage__c = 'analysis'
    
);
               
        Test.startTest();
        Database.SaveResult sr = EventBus.publish(newEvent);
        
        Test.stopTest();      
        System.assertEquals(true, sr.isSuccess());
         
   		List<Event_Log__c> events = [SELECT Id from Event_Log__c];
        System.assertEquals(1, events.size());
        
    }	
}