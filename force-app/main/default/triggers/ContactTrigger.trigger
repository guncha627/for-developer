trigger ContactTrigger on Contact (before insert, before update, after insert, after update, after delete, after undelete) {
    triggerSwitch__c contactSwitch = triggerSwitch__c.getInstance('contact');
    if(contactSwitch.switch__c == false){
        return;
    }
    if(trigger.isBefore && trigger.isUpdate){
            ContactTriggerHandler.contactUpdateValidator1(Trigger.New, Trigger.Old,  Trigger.NewMap, Trigger.OldMap);
            ContactTriggerHandler.contactUpdateValidator2(Trigger.New, Trigger.Old,  Trigger.NewMap, Trigger.OldMap);
        }
    if(trigger.isAfter){
        ContactTriggerHandler.updateAccNumOfCont(trigger.new, trigger.old);
    }
}
