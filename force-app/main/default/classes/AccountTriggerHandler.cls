public class AccountTriggerHandler{
    
    public void SplitTotalOnContacts(List<account> acclist){
        
        List<contact> updatedContacts = new List<contact> ();
        Set<Id> AccountIdSet = new set<Id> ();
        
        for(account acc: acclist){
            AccountIdSet.add(acc.id);
        }
        
        List<contact> contacts = [SELECT id, accountId FROM contact WHERE accountId IN: AccountIdSet];
        Decimal Total = 0;
        
        For(Account acc : acclist){
            Total = acc.Total__c;
            
            List<contact> AccountContact = new list<contact> ();
            for(contact con : contacts){
                con.accountId = acc.id;
                AccountContact.add(con);
            }
            system.debug(AccountContact.size());
            
            if(AccountContact.size() != 0 && AccountContact.size() != null){
            Integer ContactCounts = AccountContact.size();
            Decimal Share = 0;
            Decimal TotalShare = 0;
            Decimal RemainingTotal = 0;
            
                if(Total != null && Total != 0){
                    Share = Total/ContactCounts;
                    Share = Share.setScale(2, roundingMode.FLOOR);
                }
                system.debug(Share);
                
                for(contact con : AccountContact){
                    con.share__c = Share;
                    TotalShare = TotalShare + Share;
                    RemainingTotal = Total - TotalShare;
                    updatedContacts.add(con);
                }
                system.debug(TotalShare);
                system.debug(RemainingTotal);
            }
        }
        if(updatedContacts.size() > 0)
        update updatedContacts;
    }
}