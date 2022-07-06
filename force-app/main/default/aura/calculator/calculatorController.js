({
	add : function(component, event, helper) {
        helper.callinghelper(component, event, helper)
        
         //alert(total);
         //alert(component.get("v.firstvalue"));
         //alert(component.get("v.secondvalue"))
	},
    
    substract : function(component, event, helper) {
        var v1 = component.get("v.firstvalue");
        var v2 = component.get("v.secondvalue");
        var total = parseInt(v1)-parseInt(v2);
        component.set("v.subtotal", total);
        component.set("v.issub", true);
        component.set("v.isadd", false);
        component.set("v.ismul", false);
        //alert(total);
    },
    
     multiply : function(component, event, helper) {
        var v1 = component.get("v.firstvalue");
        var v2 = component.get("v.secondvalue");
        var total = parseInt(v1)*parseInt(v2);
        component.set("v.multiplytotal", total);
        component.set("v.ismul", true);
        component.set("v.isadd", false);
        component.set("v.issub", false);
        //alert(total);
     }
})