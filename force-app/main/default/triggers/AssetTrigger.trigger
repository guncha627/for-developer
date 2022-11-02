trigger AssetTrigger on Asset (before insert, before update) {
    if(trigger.isBefore){
        AssetTriggerHandler.updateDescription(trigger.new, trigger.old, 
                                            trigger.newMap, trigger.oldMap);
    }

}