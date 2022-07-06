@isTest
public class TestClassUpdateName {
    
    @isTest
    static void Test1(){
      
        Account acc = new account();
        acc.name = 'JKL';
        acc.phone = '9908776543';
        insert acc;
        acc.phone = '9980998767';
        update acc;
        account acc1 = [select id, name, phone from account where id =: acc.id ];
        system.assertEquals('JKL  9980998767', acc1.name);
        }
}