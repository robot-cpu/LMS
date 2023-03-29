({
	updateParent : function(component, event, helper) {
		component.set("v.parentVar", "udpated parent value");
	},
    onParentVarChange : function(component, event, helper) {
		console.log("parent value is changed");
        console.log("old value : " +event.getParam("oldValue"));
        console.log("new value : " +event.getParam("value"));
	}
})