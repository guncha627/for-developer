public class DnlDemo {
    public static void dnlInsertDeno_StndObj1(){
        account acc = new account();
        acc.phone = '98798887987';
        acc.name = 'SoftInnovas';
        insert acc;
        System.debug(acc);
    }
    public static void dmlInsertDemo_cstmObj1(){
        Salesforce_project__c sp = new  Salesforce_project__c();
        sp.Project_Name__c = 'Teach DML';
        sp.Description__c = 'All 5055';
        insert sp;
    }
    public static void dmlUpdateDemo1(){
        account acc = new account();
        acc.name='Soft';
        System.debug(acc);
        insert acc;
        System.debug(acc);

        acc.name = 'Salesforce Inc';
        update acc;
        System.debug(acc);
    }
    public static void dmlUpdateDemo2(){
        account acc = [select name, id from account where name = 'SoftInnovas Inc.' limit 1];
        acc.name = 'Suave';
        update acc;

    }
    public static void dmlInsertDemo2(){
        account acc = [select id, name from account order by createdDate desc limit 1];
        contact cont = new contact();
        cont.Lastname = 'Biden';
        cont.accountId = acc.id;
        insert cont;
    }
    public static void dmlInsertDemo_3() {
        Salesforce_Project__c sp = [select id from Salesforce_Project__c ORDER BY CreatedDate desc limit 1];

        //new ticket
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Learn APEX DML';
        st.Description__c = 'kinda simple';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.newInstance(2022, 8, 1);
        //set relationship field
        st.Salesforce_Project__c = sp.id;
        insert st;
    }
    public static void dmlMultipleRecordInsert_right1() {
        List<account> listAccount = new list<account>();

        account acc1 = new Account();
        acc1.Name = 'bulk acc 1';
        //insert acc1;
        listAccount.add(acc1);

        account acc2 = new Account();
        acc2.Name = 'bulk acc 2';
        //insert acc2;
        listAccount.add(acc2);

        account acc3 = new Account();
        acc3.Name = 'bulk acc 3';
        listAccount.add(acc3);

        insert listAccount;//insert LIST.
    }
    public static void dmlMultipleRecordInsert_right2(){
        list<account> listAcc = new list<account>();

        for(integer i=0; i<155; i++){
            account a = new account();
            a.name = 'SoftInnovas 3Oct-v' +i;
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;
    } 
    public static void dmlMultipleRecordUpdate_right1() {
        list<account> fetchAccounts = [select id, name from account ORDER BY CreatedDate DESC limit 155];
        
        List<Account> updateAcc = new list<account>();

        for (account eachAcc : fetchAccounts) {
            eachAcc.Name += ' via B.0';
            eachAcc.AccountNumber = '987454ABCZ';
            updateAcc.add(eachAcc);
        }
        if (!updateAcc.isEmpty()) {
            update updateAcc;
        }
        
    }
}
   

