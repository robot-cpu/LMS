({
	fireComponentEvent : function(component, event, helper) {
		var componentEvent = component.getEvent("cmpEvent");
        var msgString = component.get("v.messageString");
        
        msgString  = $A.util.isEmpty(msgString) ? "No message Passed" : msgString;
        
        componentEvent.setParams({
            "message" : msgString,
            "label" : "custom Label"
        });
        componentEvent.fire();
        
	}
})