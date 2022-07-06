@isTest
public class ContactTriggerTest {
    
    @testSetup
    static void setup(){
        Account acc = new account();
        acc.Name = 'Test Account';
        insert acc;
        
        Contact con = new contact();
        con.AccountId = acc.Id ;
        con.lastname = 'LastName';
        con.Firstname = 'FirstName';
        insert con;
    }
    
    @isTest
    static void UpdateFieldOnAccountOnInsert(){

        Contact con = [SELECT Id, Accountid FROM Contact];
        
        Account acclist = [SELECT id,count_of_contact__c, (SELECT id FROM contacts) FROM Account WHERE Id =: con.Accountid];
        
        system.assertEquals(1, acclist.count_of_contact__c);
	} 

    @isTest
    static void UpdateFieldOnAccountOnUpdateandDelete(){

        Contact con = [SELECT Id, Accountid FROM Contact];

        update con;
      
        Account acclist = [SELECT id,count_of_contact__c, (SELECT id FROM contacts) FROM Account WHERE Id =: con.Accountid];
        
        system.assertEquals(1, acclist.count_of_contact__c);
	} 
}