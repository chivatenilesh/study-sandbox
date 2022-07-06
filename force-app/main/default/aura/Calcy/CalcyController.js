({
	add : function(component, event, helper) {
		var v1= component.get("v.firstval");
        var v2= component.get("v.secondval");
        var total= parseInt(v1)+parseInt(v2);
        component.set("v.addtotal", total)
        component.set("v.isadd", true)
        component.set("v.issub", false)
        component.set("v.ismul", false)
        //alert(component.get("v.firstval"));
        //alert(component.get("v.secondval"));
        //alert(total)
	},
    sub : function(component, event, helper) {
		var v1= component.get("v.firstval");
        var v2= component.get("v.secondval");
        var total= parseInt(v1)-parseInt(v2);
        component.set("v.subtotal", total)
        component.set("v.issub", true)
        component.set("v.isadd", false)
        component.set("v.ismul", false)
        //alert(total)
    }, 
 	mul : function(component, event, helper) {
		var v1= component.get("v.firstval");
        var v2= component.get("v.secondval");
        var total= parseInt(v1)*parseInt(v2);
        component.set("v.multotal", total)
        component.set("v.ismul", true)
        component.set("v.isadd", false)
        component.set("v.issub", false)
        //alert(total)
     } 
})