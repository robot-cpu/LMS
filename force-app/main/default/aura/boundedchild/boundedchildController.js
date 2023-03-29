({
	updateChild : function(component, event, helper) {
		component.set("v.childVar", "updated child value");
	},
    
    onChildVarChange : function(component, event, helper) {
        console.log("child value is changed");
        console.log("old value : " +event.getParam("oldValue"));
        console.log("new value : " +event.getParam("value"));
    }
})