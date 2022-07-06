@isTest
public class TestClassAucountDataTable {

    	@isTest
    	Static list<account> test1(){
        	Account acc = new account();
            acc.name = 'test account';
            insert acc;
            List<Account> acclist = [select id, name, phone, industry, website from account];
			return acclist;
  		}
}