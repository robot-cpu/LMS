@isTest
public class OrderEventTriggerTest {
    @isTest static void test1() {
        // Create test event instance
        Order_Event__e newsEvent = new Order_Event__e(
            Order_Number__c = '002',
       		Has_Shipped__c = true );
        
        Test.startTest();
        Database.SaveResult sr = EventBus.publish(newsEvent);
        
        Test.stopTest();      
        System.assertEquals(true, sr.isSuccess());
        
        // Check that the task that the trigger created is present.
        List<Task> tasks = [SELECT Id FROM Task];        
        System.assertEquals(1, tasks.size());
    }
}