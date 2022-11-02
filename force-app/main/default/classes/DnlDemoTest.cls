@isTest
public class DnlDemoTest {
    @isTest
    private static void dnlTest1() {
        DnlDemo.dnlInsertDeno_StndObj1();
        list<account> listt = [select id, name from account];
        System.assertEquals(1, listt.size());
        System.assertEquals('SoftInnovas', listt[0].name);
    }

    @isTest
    private static void dnlTest2() {
        account acc = new account();
        acc.name = 'SoftInnovas Inc.';
        insert acc;
        DnlDemo.dmlUpdateDemo2();
        list<account> listAcc = [select id, name from account where name = 'Suave'];
        System.assertEquals(1, listAcc.size());
    }

    @isTest
    private static void dnlTest3() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_name__c = 'Teach DML';
        insert sp;
        DnlDemo.dmlInsertDemo_3();
        list<Salesforce_Ticket__c> st = [select id, name, Subject__c, Salesforce_Project__c from Salesforce_Ticket__c where subject__c = 'Learn APEX DML'];
        System.assertEquals(sp.id, st[0].Salesforce_Project__c);
        
    }
}