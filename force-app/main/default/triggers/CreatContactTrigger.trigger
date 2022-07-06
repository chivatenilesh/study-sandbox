trigger CreatContactTrigger on Account (after insert) {
    
    For(account acc : Trigger.new){
        
        integer count = (integer)acc.count_of_contact__c;
        
        for(integer i=0; i<=count; i++){
            
            Contact con = new contact();
            con.AccountID = acc.id;
            con.lastname = acc.name + i;
            insert con;
            system.debug(con);
        }
    }
}