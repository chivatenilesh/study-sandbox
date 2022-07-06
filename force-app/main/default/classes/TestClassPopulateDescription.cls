@isTest
public class TestClassPopulateDescription {
    
    @isTest
    static void Test1(){
        
        contact con = new contact();
	    con.firstname = 'BBBB';
        con.lastname = 'BcBc';
        con.Description = 'AAAA';
        insert con;
        contact con_i = [select id, firstname, lastname,  phone, description from contact where firstname = 'BBBB' limit 1];
        system.assertEquals('Description added on insertion of contact with Trigger', con_i.description);
        
        con.Description = 'CCCC';
        update con;
        contact con_u = [select id, firstname, lastname,  phone, description from contact where firstname = 'BBBB' limit 1];
        system.assertEquals('Description added on updation of contact with Trigger by '+userInfo.getfirstName()+' '+userInfo.getlastName(), con_u.description);
  
    }

}