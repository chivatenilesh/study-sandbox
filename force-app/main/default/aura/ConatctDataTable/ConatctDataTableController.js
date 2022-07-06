({
    init: function(component, event, helper){
       component.set("v.columns", [
            {label: 'Contact Name', fieldName: 'Name', type: 'text'},
            {label: 'Email', fieldName: 'Email', type: 'text'},
            {label: 'Phone', fieldName: 'Phone', type: 'Phone'},
        ]);            
       
       helper.callserver(component, event, helper);
	},
             
     handlefind: function(component, event, helper){    
          
          helper.callserver(component, event, helper);      
     }
})