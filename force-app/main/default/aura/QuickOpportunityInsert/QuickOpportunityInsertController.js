({
    
	handlesave : function(component, event, helper) {
        
        debugger;
        console.log(component.get("v.recordId") );
 
        var action = component.get("c.insertOpportunity");
        action.setParams({ opp : component.get("v.Oppodetails") , recordId : component.get("v.recordId") });
 		 
        // Create a callback that is executed after 
        // the server-side action returns
        action.setCallback(this, function(response) {
            //alert(2);
            var state = response.getState();
            alert(state);
            if (state === "SUCCESS") {
                // Alert the user with the value returned 
                // from the server
                //alert("From server: " + response.getReturnValue());
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Success!",
                    "type" : "Success",
                    "message": "The record has been inserted successfully."
                });
    			toastEvent.fire();
                $A.get("e.force:closeQuickAction").fire();
                $A.get('e.force:refreshView').fire();
 
                // You would typically fire a event here to trigger 
                // client-side notification that the server-side 
                // action is complete
            }
            else if (state === "INCOMPLETE") {
                // do something
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
 
        // optionally set storable, abortable, background flag here
 
        // A client-side action could cause multiple events, 
        // which could trigger other events and 
        // other server-side action calls.
        // $A.enqueueAction adds the server-side action to the queue.
        $A.enqueueAction(action);
        //alert(3);
    },
    
    handleget : function(component, event, helper) {
        
        var action = component.get("c.getaccount");
        action.setParams({ recordId : component.get("v.recordId") });
 		 
        action.setCallback(this, function(response) { 
            var state = response.getState();           
            if (state === "SUCCESS") {
                
                
                 var acc=response.getReturnValue();
                console.log(acc)
              
                 component.set("v.SampleId",acc.Name);
            }
            else if (state === "INCOMPLETE") {
               
            }
            else if (state === "ERROR") {
                var errors = response.getError();
                if (errors) {
                    if (errors[0] && errors[0].message) {
                        console.log("Error message: " + 
                                 errors[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
 
        // optionally set storable, abortable, background flag here
 
        // A client-side action could cause multiple events, 
        // which could trigger other events and 
        // other server-side action calls.
        // $A.enqueueAction adds the server-side action to the queue.
        $A.enqueueAction(action);
       // alert(3);
    }
    
    
})