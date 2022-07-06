public class QuickOpportunityInsert {
    
    @AuraEnabled
    public static string insertOpportunity(Opportunity opp, string recordId){        

        opp.AccountID=recordId;
        insert opp;   
        return opp.Id;
    }
    
    @AuraEnabled
    public static Account getaccount(string recordId){
        List<Account> acclist =  [select id,Name,Type,Phone,Rating from Account where ID =: recordId ];
        return acclist[0];
        //return 'Yogesh';
    }
}