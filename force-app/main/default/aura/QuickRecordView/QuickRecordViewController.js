({
	handlesubmit : function(component, event, helper) {
        event.preventDefault();
		var fields= event.getParam('fields');
        //var jsonresult = JSON.stringify(fields);
        //alert(jsonresult);
        component.find('myinfo').submit(fields);
        $A.get('e.force:refreshView').fire();
	},
    handlesuccess: function(component, event, helper) {
        var toastEvent = $A.get("e.force:showToast");
        toastEvent.setParams({
            "title": "Success!",
            "type": "Success",
            "message": "The record has been inserted successfully."
        });
        toastEvent.fire();
        $A.get("e.force:closeQuickAction").fire();
}
})