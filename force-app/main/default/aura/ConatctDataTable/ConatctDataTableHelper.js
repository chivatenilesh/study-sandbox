({
	callserver : function(component, event, helper){
        
        var search =  component.get("v.searchvalue");
        var name =  component.get("v.name");
        
         
        var action = component.get("c.FetchContactData");      
        action.setParams({ searchkey : search , name :name});
          
        action.setCallback(this, function(response) {
            
            var state = response.getState();
            
            if (state === "SUCCESS") {
                
             console.log(response.getReturnValue());
             
                component.set("v.ContactDetails", response.getReturnValue())
		
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
         
        $A.enqueueAction(action);
		  
	}
})