@isTest
public class ToAvoidDuplicancy_TestClass {
    
    @isTest
    static void TestClass3(){
		Account acc = new Account();
        acc.Name = 'BannerBoy1';
        List<Account> acclist = [select Id from Account where Name =: acc.Name ];
        if(acclist.size()>0){
            system.assertEquals(0, acclist.size());
        }
        
        }
}