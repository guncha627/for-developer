@istest
public class caseAssgTest {
    @istest
    private static void test() {
        caseAssg.caseInsert();
        list<case> c = [select id, subject from case 
                        WHERE subject ='Testcase'];
        system.assert(c.size() == 1);
    }
    @istest
    private static void test2() {
        case c = new case();
        c.subject = 'Testcase';
        c.origin = 'Phone';
        insert c;
        caseAssg.caseUpdate();
        list<case> c1 = [select id, subject from case
                            WHERE subject = 'Testing case 1'];
        system.assert(c1.size() == 1);
    }
    @istest
    private static void test3() {
        case c = new case();
        c.subject = 'Testing case 1';
        c.origin = 'Phone';
        insert c;
        caseAssg.caseDelete();
        list<case> c2 = [select id, subject from case
                        WHERE subject like '%case 1%'];
        system.assertEquals(0, c2.size());
    }
}
