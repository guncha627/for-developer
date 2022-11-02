public class SPTriggerHandler {
    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        try {
            List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
            DefaultTicketInfo__c df = DefaultTicketInfo__c.getOrgDefaults();
            for (salesforce_project__c eachSP : spTriggerNew) {
                Salesforce_Ticket__c st = new Salesforce_Ticket__c();
                st.Subject__c = df.subject__c;
                st.description__c = df.description__c;
                st.priority__c = 'Medium';
                st.Salesforce_Project__c = eachSP.id;
                listST.add(st);
            }
            if (!listST.isEmpty()) {
                insert listST;
            }
        } catch (Exception ex) {
            System.debug('exception ex: '+ex);
            System.debug('contact admin');
            for (salesforce_project__c each : spTriggerNew) {
                each.addError('Error in creating default ticket. Try to guese why');
            }
        }
       
}public static void validateProjectCompletion(List<salesforce_project__c> spTriggerNew,
                                                list<salesforce_project__c> spTriggerOld,
                                                Map<Id, salesforce_project__c> spTriggerNewMap,
                                                Map<Id, salesforce_project__c> spTriggerOldMap){
    set<id> setProjectCompleted = new set<id>();
    for(salesforce_project__c each: spTriggerNew){
        if(each.status__c != spTriggerOldMap.get(each.id).status__c && each.status__c == 'Completed'){
            setProjectCompleted.add(each.id);
        }
    }
    list<Salesforce_Ticket__c> listST = [select id, name, status__c, salesforce_project__c from Salesforce_Ticket__c
    where salesforce_project__c in :setProjectCompleted and status__c != 'Completed'];

    for (salesforce_ticket__c each : listST) {
        salesforce_project__c sp = spTriggerNewMap.get(each.salesforce_project__c);
        sp.addError('Cannot complete sp because of not all tickets are completed');
        
    }
}
}