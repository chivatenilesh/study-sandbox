({
	handlesubmit : function(component, event, helper) {
        var accId=component.get("v.recordId");
        var fields = event.getParam('fields');
         console.log(fields);

        fields.AccountId=accId;
        fields.SuppliedPhone='9970779603';
        component.find('myinfo').submit(fields);
        $A.get('e.force:refreshView').fire();
	},    
    
    handlesuccess : function(component, event, helper) {
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