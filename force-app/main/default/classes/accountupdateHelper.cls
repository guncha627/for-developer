public class accountupdateHelper {
    @invocableMethod
   public static void updateAccountWebsite(list<id> accids) {
    list<account> listAcc = new List<Account>();
    for (account each : [select id, website from account where id in :accids]) {
        each.website = 'www.softinnovas.com';
        listAcc.add(each);
    }
    update listAcc;
   }
}
