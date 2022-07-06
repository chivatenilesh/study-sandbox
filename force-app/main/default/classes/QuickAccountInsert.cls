public class QuickAccountInsert {
    
    @AuraEnabled
    public static string insertAccount(Account acc){
        insert acc;
        return acc.Id;
    }
}