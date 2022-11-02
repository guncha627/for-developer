@isTest
public class SalesforceProjectTriggerTest {
   @isTest
   public static void nameAfterCreation() {
    List<salesforce_project__c> listSF = new List<salesforce_project__c>();
    salesforce_project__c sf1 = new salesforce_project__c();
    sf1.Project_Name__c = 'Project 1';
    listSF.add(sf1);
    insert listSF;

    system.assertEquals(1, listSF.size());
   }
}
