Trigger CountofContactonAccount on Contact (after insert, after update, after delete) {
System.debug('AT');
Set<ID> IDs = new set<ID>();
List<Account> AccListUpdate = new List<Account>();    
    
    if(Trigger.isinsert){
        for(contact con : Trigger.new){
            IDs.add(con.accountID);
        }  
    }
    
    if(Trigger.isupdate || Trigger.isdelete){
        for(contact con : Trigger.old){
            IDs.add(con.accountID);
        }  
    }
   
    List<Account> Accounts = [Select Id, count_of_contact__c,name,phone,rating, (select id from contacts) from account where Id IN : IDs];
    for(Account acc : Accounts){
        Account acclist = new Account();
        acclist.Id = acc.Id;
        acclist.Phone=acc.Phone;
        acclist.count_of_contact__c = acc.contacts.size();
        AccListUpdate.add(acclist); 
    }
     Update AccListUpdate;
}