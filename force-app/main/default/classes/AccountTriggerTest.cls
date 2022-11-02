@isTest
public class AccountTriggerTest {
    @isTest
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
    }
}
