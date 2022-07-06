Trigger PopulateDescription on Contact (before insert, before update) {
    for(Contact con:Trigger.new){
        if(Trigger.isInsert){
        con.Description= 'Description added on insertion of contact with Trigger';
                   }
        if(Trigger.isUpdate){
        con.Description= 'Description added on updation of contact with Trigger by '+userInfo.getfirstName()+' '+userInfo.getlastName();      
        }
    }    
   }