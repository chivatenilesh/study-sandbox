Trigger Accounttrigger on Account(after update){
    
    AccounttriggerHandler handler = new AccounttriggerHandler();
    handler.SplitTotalOnContacts(Trigger.new);
    
}