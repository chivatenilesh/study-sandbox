trigger SalutationLead on Lead (Before insert, Before update) {
if(trigger.isInsert){
For(Lead L: Trigger.new){
    L.Salutation = 'Prof.' ;
    } 
   }
   }