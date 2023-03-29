//after insert is used to subscribe incoming events
trigger OrderEventTrigger on Order_Event__e (after insert) {
	List<task> tasks = new List<task>();
    
    for(Order_Event__e event: trigger.new){
    
        if(event.Has_Shipped__c == true){
            Task taskobj = new Task();
            
            taskobj.Priority = 'Medium';            
            taskobj.Subject = 'Follow up on shipped order 105';
            taskobj.OwnerId = event.CreatedById;
            
            tasks.add(taskobj);
        }
    }
    insert tasks;
}