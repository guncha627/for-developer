public class SoqlDemo {
    public static void accountSOQL_1(){
        list<account> listAcc = [select id, name from Account where name like '%a%'];
        System.debug('account list: ' + listAcc);
        System.debug('account list records #: ' + listAcc.size());

        account acc = [select id, name from account order by createdDate desc limit 1];
        System.debug(acc);
    }
    public static void accountSOQL_2(){
        account acc = [select id, name, phone, accountNumber from account order by createdDate desc limit 1];
        System.debug(acc);

        string accName = acc.name;
        string accPhone = acc.phone;
        system.debug('acc name:'+accName + ' acc phone ' +accPhone + ' acc number ' +acc.accountNumber);
    }

    public static void accountSOQL_3(){
        list<account> listAcc = [select id, name, phone, accountNumber from account order by createdDate desc];
        for(account eachAccount: listAcc){
            string accName = eachAccount.name;
            string accPhone = eachAccount.phone;
            string accNum = eachAccount.AccountNumber;
            system.debug('accname is ' + accname +' accPhone is ' +accPhone +' accnumber is '+accNum);
        }
    }
    public static void accountSOQL_Filter(){
        string filterName = 'Salesforce Inc.';
        list<account> accList = [select id, name, phone, accountNumber from account where name = :filterName];
        system.debug(accList);
    }
    public static void accountSOQL_Filter(string filterName){
        list<account> accList = [select id, name, phone, accountNumber from account where name = :filterName];
        system.debug(accList);
    }
}
