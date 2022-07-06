Trigger SalesRepUpadte on Account (Before insert, Before update) {
    
    For(Account acc : Trigger.new){
        if(acc.Name != null){
        acc.SalesRep__c = acc.Name;
        }
    }
}