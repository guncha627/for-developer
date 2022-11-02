@istest
public class contactAssgTest {
    @TestSetup
    static void makeData(){
        List<Contact> contList = new List<Contact>();
        for (Integer i = 1; i < 6; i++) {
            contact con = new contact();
            con.LastName = 'Doe ' +i;
            con.Department = 'Soft Innovas';
            contList.add(con);
        }
        insert contList;
    }
    @istest
    public static void testInsert() {
        contactAssg.contactInsert();
    }
    @istest
    public static void testUpdate() {
         List<Contact> list1= [select id from contact 
                                WHERE Department = 'Soft Innovas'];
         contactAssg.contactUpdate();
         list<contact> forCheck = [select id from contact 
                                where Department = 'SI Salesforce'];
         System.assertEquals(5, forCheck.size());
    }
    @istest
    public static void testDelete() {
        List<Contact> list2 = [select id from contact
                                where Department = 'SI Salesforce'];
        contactAssg.deleteCont();
        list<contact> forCheck = [select id from contact
                                where Department = 'SI Salesforce'];
        System.assertEquals(0, forCheck.size());
    }
}
