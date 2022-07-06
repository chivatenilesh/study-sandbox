@isTest
public class AccountTriggerTest{
    @testSetup
    static void setup(){
        Account acc = new account();
        acc.Name = 'Test Account';
        insert acc;
    }

    @isTest
    Static void SplitNullTotalOnContacts(){

        Account acc = [SELECT Id, Total__c FROM Account];
        List<Contact> testContacts = new List<Contact>();
        for (Integer i = 0; i < 1; i++){
            contact con = new contact();
            con.lastname = 'Test Contact' + i;
            con.AccountId = acc.Id;
            testContacts.add(con);
            //testContacts.add(new Contact(LastName = 'Test Contact' + i, AccountId = acc.Id));
        }
        insert testContacts;
        acc.Total__c = 0;
        update acc;

        List<Contact> contacts = [SELECT Id, Share__c FROM Contact WHERE AccountId = :acc.Id];
        AggregateResult result = [SELECT SUM(Share__c)assignedShare FROM Contact WHERE AccountId = :acc.Id];
        Decimal assignedShare = (Decimal) result.get('assignedShare');

        system.assertEquals(0, assignedShare);
    }

    @isTest
    Static void SplitTotalOnEvenContacts(){

        Account acc = [SELECT Id, Total__c FROM Account];

        List<Contact> testContacts = new List<Contact>();
        for (Integer i = 0; i < 2; i++){
            testContacts.add(new Contact(LastName = 'Test Contact' + i, AccountId = acc.Id));
        }
        insert testContacts;
        acc.Total__c = 400.00;
        update acc;

        AggregateResult result = [SELECT SUM(Share__c)assignedShare FROM Contact WHERE AccountId = :acc.Id];
        Decimal assignedShare = (Decimal) result.get('assignedShare');
        system.assertEquals(acc.Total__c, assignedShare);

        List<Contact> contacts = [SELECT Share__c FROM Contact WHERE AccountId = :acc.Id];
        Decimal share = acc.Total__c / contacts.size();
        for (Contact con : contacts){
            system.assertEquals(share, con.Share__c);
        }
    }

    @isTest
    Static void SplitTotalOnOddContacts(){

        Account acc = [SELECT Id, Total__c FROM Account];
        List<Contact> testContacts = new List<Contact>();
        for (Integer i = 0; i < 3; i++){
            testContacts.add(new Contact(LastName = 'Test Contact' + i, AccountId = acc.Id));
        }
        insert testContacts;
        acc.Total__c = 500.00;
        update acc;

        AggregateResult result = [SELECT SUM(Share__c)assignedShare FROM Contact WHERE AccountId = :acc.Id];
        Decimal assignedShare = (Decimal) result.get('assignedShare');
        system.assertEquals(acc.Total__c, assignedShare);

        List<Contact> contacts = [SELECT Share__c FROM Contact WHERE AccountId = :acc.Id];
        system.assertEquals(166.67, contacts[0].Share__c);
        system.assertEquals(166.67, contacts[1].Share__c);
        system.assertEquals(166.66, contacts[2].Share__c);
    }

}