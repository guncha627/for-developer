trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {

        map<id, salesforce_project__c> newSFMap = trigger.newMap;

        if(trigger.isAfter){
            for (id each : newSFMap.keyset()) {
                system.debug('Project name: ' +trigger.newMap.get(each).Project_Name__c);
            }
        }
        if (Trigger.isAfter && Trigger.isInsert) {
            //create default salesforce ticket.
            SPTriggerHandler.createDefaultTicket(Trigger.New);
            SalesforceProjectTriggerHandler.updateProjectDescription(trigger.newmap.keyset());
        }
        // if(trigger.isBefore && trigger.isUpdate){
        //     SPTriggerHandler.validateProjectCompletion(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        // }
        if (Trigger.isAfter && trigger.isUpdate) {
            SalesforceProjectTriggerHandler.spCompletedProject(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
   
    /* list<salesforce_project__c> SFProjects = trigger.new;
    list<salesforce_project__c> SFProjectsOld = trigger.old;
    if(trigger.isBefore && trigger.isInsert){
        system.debug('Projects before insert: ' + SFProjects);
        for(salesforce_project__c i: SFProjects){
            system.debug('id: '+i.id + ' , name: ' + i.Project_Name__c);
        }
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('Projects after insert: ' + SFProjects);
        for(salesforce_project__c i: SFProjects){
            system.debug('id: '+i.id + ' , name: ' + i.Project_Name__c);
        }
    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('Projects before update: ' +SFProjects);
        system.debug('Projects before update old: ' +SFProjectsOld);
        for(salesforce_project__c i: SFProjectsOld){
            system.debug('id: '+i.id + ' , old-name: ' + i.Project_Name__c);
        }
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('Projects after update: ' +SFProjects);
        system.debug('Projects after update old: ' +SFProjectsOld);
        for(salesforce_project__c i: SFProjectsOld){
            system.debug('id: '+i.id + ' , old-name: ' + i.Project_Name__c);
        }
    }*/
}