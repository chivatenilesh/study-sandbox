public class ContactTriggerHandler {
    public void countOfContactOnAccount(List<contact> conlist) {
        
        system.debug(conlist);
        
        set<ID> accountIdSet = new set<ID>();
        for (contact con : conlist){
             accountIdSet.add(con.AccountId);
        }
        
		List <Account> lstAccountsToUpdate = new List<Account>();
		Account acc = [SELECT Id,Name,count_of_contact__c,(Select Id from Contacts) from Account where id =: accountIdSet];
		system.debug(acc);
        
		for (contact con : conlist){
            acc.count_of_contact__c = acc.contacts.size();
            system.debug(acc.count_of_contact__c);
            lstAccountsToUpdate.add(acc);
        }
        update lstAccountsToUpdate;
	}
}