@isTest
public class TestClassToAvoidDuplicates {

    @isTest
    static void Test1(){
      Account acc = new account();
        acc.name = 'Test1';
        acc.Phone = '6678556745';
        insert acc;
        Account acc1 = new account();
        acc1.name = 'Test1';
        acc1.phone = '6678556745';
        try{
        	insert acc1;
        }catch(exception ex)
        {
             system.debug('Message:'+ex.getMessage());
             system.assert(ex.getMessage().contains('Duplicate record found: [Name]'));
		}
        system.debug(acc1);
        
        }
}