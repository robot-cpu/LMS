({
	handleComponentEvent : function(component, event, helper) {
		var message = event.getParam("message");
        var label = event.getParam("label");
        
        component.set("v.msgFromNotifier",message);
        component.set("v.label",label);
        
        var count = praseInt(component.get("v.eventCount") + 1);
        component.set("v.componentEvent",count);
	}
})