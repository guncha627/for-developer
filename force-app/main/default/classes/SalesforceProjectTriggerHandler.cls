public class SalesforceProjectTriggerHandler {
    public static void insertSFProject(){
        List<salesforce_project__c> listOfProjects= new List<salesforce_project__c>();
        for(integer i = 1; i<=3; i++){
            salesforce_project__c SFP = new salesforce_project__c();
            SFP.Project_Name__c = 'Project Trigger '+i;
            SFP.status__c = 'Completed';
            listOfProjects.add(SFP);
        }
        insert listOfProjects;
    }
    public static void updateSFProject(){
        List<salesforce_project__c> updateSFP = new List<salesforce_project__c>();
        List<salesforce_project__c> fetch = [select id, name, Project_Name__c from salesforce_project__c ORDER BY createdDate desc limit 3];
        for(salesforce_project__c i: fetch){
            i.Project_Name__c = 'Project Update';
            updateSFP.add(i);
        }
        update updateSFP;
    }
    @future
    public static void updateProjectDescription(set<id> setIds) {
        system.debug('Called from future');
        system.debug('set of ids ==> '+setIds);

         //fetch project records of given setIds.
         List<Salesforce_Project__c> listSP = [select id, description__c from Salesforce_Project__c where id in :setIds];

         //for each loop and update description of fetched projects
         for (salesforce_project__c sp : listSP) {
             sp.Description__c += '. updated from future it is.';
         }
         //update dml
         update listSP;
    }
    public static void spCompletedProject(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld,
                     Map<id, salesforce_project__c> spTriggerNewMap, Map<id, salesforce_project__c> spTriggerOldMap) {
        set<id> spIds = new set<id>();

        for (salesforce_project__c spNew : spTriggerNew) {
            salesforce_project__c spOld = spTriggerOldMap.get(spNew.Id);
            if (spNew.Status__c == 'Completed' && spOld.Status__c != 'Completed') {
                spIds.add(spNew.Id);
            }
        }

        system.debug('sp Ids where status is completed -> ' + spIds);
        //call future method and pass this spIds.
        if(!spIds.isEmpty()){
            updateTicketStatusCompleted(spIds);
        }
    }
    @future
    private static void updateTicketStatusCompleted(set<id> spIds) {
        List<Salesforce_Ticket__c> listST = [select id, status__c from 
                                Salesforce_Ticket__c where Status__c != 'Completed' and Salesforce_Project__c in :spIds];
        for (salesforce_ticket__c st : listST) {
            st.Status__c = 'Completed';
        }
        update listST;
    }
}
