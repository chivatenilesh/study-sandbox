@isTest
public class TestClassContactTrigger{

        @isTest 
        static void test1(){ 
           
        Account  acc = new Account();
        acc.Name = 'BannerBoy1';
        insert acc;
        List<contact> conlist = [Select Id From Contact where FirstName =: acc.Name];
        system.assertEquals(2, conlist.size());
        system.debug(conlist);
    }
}