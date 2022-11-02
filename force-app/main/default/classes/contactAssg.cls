public class contactAssg {
    public static void contactInsert() {
        List<Contact> contList = new List<Contact>();
        for (Integer i = 1; i < 6; i++) {
            contact con = new contact();
            con.LastName = 'Doe ' +i;
            con.Department = 'Soft Innovas';
            contList.add(con);
        }
        insert contList;
    }
    public static void contactUpdate() {
        List<Contact> updateCont = [Select id, Department FROM contact
                                    WHERE Department = 'Soft Innovas'];
        for (contact each : updateCont) {
            each.Department = 'SI Salesforce';
        }
        update updateCont;
    }
    public static void deleteCont() {
        List<Contact> deleteCont = [select id from contact
                                    WHERE Department = 'SI Salesforce'];
        delete deleteCont;
    }
}
