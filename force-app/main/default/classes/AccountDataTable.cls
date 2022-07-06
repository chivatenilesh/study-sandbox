public class AccountDataTable {
    @AuraEnabled(cacheable=true)
    public static List<Account> FetchAccountData(){
        List<Account> acclist = [select id, name, phone, industry, website from account];
        return acclist;
    }
    
    @AuraEnabled
    public static List<Account> SearchAccountData(string searchkey){
        List<Account> acclist = [select id, name, phone, industry, website from account where Name Like :'%'+searchkey+'%'];
        return acclist;
    }
}