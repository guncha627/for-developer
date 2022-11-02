@isTest
public class LeadBatchTest {
   @isTest
   public static void testLeadBatch() {
        list<lead> leadlist = new list<lead>();
        for (Integer i = 0; i < 230; i++) {
            lead ld = new lead();
            ld.LastName = 'Lastname' +i;
            ld.company = 'Company';
            ld.Status = 'Open - Not Contacted';
            leadlist.add(ld);
        }
        insert leadlist;

        test.startTest();
        database.executeBatch(new LeadBatch(), 250);
        test.stopTest();

        list<lead> results = [select description from lead];
        system.assert(results[0].Description.contains('Apex'));
    }
}
