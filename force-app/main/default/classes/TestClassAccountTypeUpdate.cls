@isTest
public class TestClassAccountTypeUpdate {
    
    @isTest 
    static void test1(){
        Account  acc = new Account();
        acc.Name = 'BannerBoy1';
        insert acc;
        //List<Account> acclist = [Select Id, type From Account ];
        //system.debug(acclist.size());
        // update acclist.get(0); 
        acc.type = 'Business Partner'; 
        update acc;
        system.assertEquals('Business Partner', acc.type);
        system.debug(acc);
    }
}