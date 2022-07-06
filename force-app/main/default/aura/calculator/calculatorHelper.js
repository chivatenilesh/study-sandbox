({
	callinghelper : function(component, event, helper) {
		var v1 = component.get("v.firstvalue");
        var v2 = component.get("v.secondvalue");
        var total = parseInt(v1)+parseInt(v2);
        component.set("v.addtotal", total);
        component.set("v.isadd", true);
        component.set("v.issub", false);
        component.set("v.ismul", false);
        console.log(component.get("v.firstvalue"));
        console.log(component.get("v.secondvalue"));
	}
})