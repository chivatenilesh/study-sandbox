trigger BookTrigger on Books__c (before insert, before update, before delete) {
    
    BookTriggerHandler handler = new BookTriggerHandler();
    if(Trigger.isInsert && Trigger.isUpdate){
    	handler.discountUpdate(Trigger.new);
    }
    if(Trigger.isDelete){
    	handler.PreventFromDelete(Trigger.old);
    }
}