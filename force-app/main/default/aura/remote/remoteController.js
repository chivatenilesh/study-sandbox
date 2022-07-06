({
	Add : function(component, event, helper) {
		var v1=component.get("v.FirstValue");
        var v2=component.get("v.SecondValue");
        var Total= parseInt(v1) + parseInt(v2);
        alert(Total);
        component.set("v.AddTotal",Total);
        //alert(component.get("v.FirstValue"));
        //alert(component.get("v.SecondValue"));
	},
    
    Subtract : function(component, event, helper) {
		var v1=component.get("v.FirstValue");
        var v2=component.get("v.SecondValue");
        var Total= parseInt(v1) - parseInt(v2);
        alert(Total);
        component.set("v.SubtractTotal",Total);
        //alert(component.get("v.FirstValue"));
        //alert(component.get("v.SecondValue"));
	},
    
    Multiply : function(component, event, helper) {
		var v1=component.get("v.FirstValue");
        var v2=component.get("v.SecondValue");
        var Total= parseInt(v1) * parseInt(v2);
        alert(Total);
        component.set("v.MultiplicationTotal",Total);
        //alert(component.get("v.FirstValue"));
        //alert(component.get("v.SecondValue"));
    }
})