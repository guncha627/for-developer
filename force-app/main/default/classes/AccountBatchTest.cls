@isTest
public class AccountBatchTest {
   @isTest
   public static void testBatch1() {
        list<account> listacc = new List<Account>();
        for (Integer i = 0; i < 900; i++) {
            account acc =new account();
            acc.name = 'test batch acc'+i;
            listacc.add(acc);
        }
        insert listacc;
        
        Test.startTest();
        AccountBatch ab = new AccountBatch();
        Database.executeBatch(ab, 950);
        Test.stopTest();

        list<account> results = [select id, description from account];
        system.assert(results[0].description.contains('Batch'));
    }
}
