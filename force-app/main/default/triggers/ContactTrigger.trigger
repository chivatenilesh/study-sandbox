trigger ContactTrigger on Contact (after insert, after update, after delete){
    
    ContactTriggerhandler handler = new ContactTriggerhandler();
    if(Trigger.isInsert){
        handler.countOfContactOnAccount(Trigger.new);
        }
    if(Trigger.isUpdate || Trigger.isDelete){         
        handler.countOfContactOnAccount(Trigger.old);
        }
    }