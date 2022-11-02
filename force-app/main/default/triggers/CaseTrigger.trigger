trigger CaseTrigger on Case (before insert, before update
                            // , after insert, 
                            // before update, after update, 
                            // before delete, after delete
                            ) {
    // if(Trigger.isBefore){
    //     if(Trigger.isInsert){
    //         system.debug('Before insert Case');
    //     }
    //     if(trigger.isUpdate){
    //         system.debug('Before update Case');
    //     }
    //     if(trigger.isDelete){
    //         system.debug('Before delete Case');
    //     }
    // }
    // if(Trigger.isAfter){
    //     if(Trigger.isInsert){
    //         system.debug('After insert Case');
    //     }
    //     if(trigger.isUpdate){
    //         system.debug('After update Case');
    //     }
    //     if(trigger.isDelete){
    //         system.debug('After delete Case');
    //     }
    // }
    if(trigger.isInsert){
        system.debug('before insert case');
    }
    if(trigger.isUpdate){
        CaseTriggerHandler.countTriggerExecution++;
        system.debug('case trigger execution count ==> ' +CaseTriggerHandler.countTriggerExecution);
        CaseTriggerHandler.countTriggerRecords +=Trigger.size;
        system.debug('case trigger record count ==> ' +CaseTriggerHandler.countTriggerRecords);
    }
}