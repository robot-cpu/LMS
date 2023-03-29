({
	methodCalledFromChild : function(component, event, helper) {
		var childCmp = component.find("msg");
        
        component.set("v.ValueFromChild", childCmp.get("v.valueForParent"));
	}
})