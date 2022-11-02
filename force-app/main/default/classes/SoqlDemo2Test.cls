@isTest
public class SoqlDemo2Test {
    @TestSetup
    static void makeData(){
        account acc1 = new account();
        acc1.name = 'SI Test';
        acc1.Industry = 'Energy';

        account acc2 = new account();
        acc2.name = 'UI Test';
        acc2.Industry = 'Energy';

        account acc3 = new account();
        acc3.name = 'PI Test';
        acc3.Industry = 'Energy';

        list <account> acclist = new list <account>{acc1, acc2, acc3};
        insert acclist;

        list<contact> cont= new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact cn = new contact();
            cn.lastname = 'Soql test ' +i;
            if(i<100){
                cn.accountId =acc1.id;
            }else if(i<200){
                cn.AccountId = acc2.id;
            }else{
                cn.AccountId = acc3.id;
            }
            cont.add(cn);
        }
        insert cont;
        
    }
    @isTest
    private static void testSOQLParentToChild() {
        test.startTest();
        SoqlDemo2.childToParent_SOQL1();
        test.stopTest();
    }
    @isTest
    public static void testSOQLParentToChild2() {
        list<account> listAcc  = [select id, name from account];
        for (account each : listAcc) {
            each.Type = 'Customer - Direct';
        }
        update listAcc;

        List<Opportunity> listOpp = new List<Opportunity>();
        for (Integer i = 0; i < 300; i++) {
            opportunity o = new opportunity();
            o.name = 'test opp ' +i;
            o.stageName = 'Closed Won';
            o.CloseDate = date.today();
            if(i<100){
                o.AccountId = listAcc[0].id;
            }else if(i<200){
                o.AccountId = listAcc[1].id;
            } else if(i<300){
                o.AccountId = listAcc[2].id;
            }
            listOpp.add(o);
        }
        insert listOpp;
    
        test.startTest();
        SoqlDemo2.parentToChild_SOQL1();
        test.stopTest();
        
    }
}
