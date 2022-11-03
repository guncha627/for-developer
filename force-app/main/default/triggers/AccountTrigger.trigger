trigger AccountTrigger on Account (before insert, before update, 
                                    after insert, after update) {
    // system.debug('====trigger start======');
    //check if switch is on or off for account object.

    triggerSwitch__c accountSwitch = triggerSwitch__c.getInstance('account');
    if(accountSwitch.switch__c == false){
        return;
    }
    
    if(trigger.isAfter && trigger.isInsert){
        AccountTriggerHandler.autoContactCreation(trigger.new);
    }
    if (Trigger.isAfter && Trigger.isInsert) {

        AccountQueueableExample aq = new AccountQueueableExample(Trigger.new);
        system.enqueueJob(aq);
    }
    if(trigger.isBefore && trigger.isInsert){
    AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
   
  


    // if (trigger.isBefore) {
    //     AccountTriggerHandler.updatesth(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     AccountTriggerHandler.vips(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
  
    // system.debug('====trigger end====');



/*
  if(trigger.isBefore){
        for(account each: trigger.new){
            Boolean updateDesc = false;
            if(trigger.isInsert && each.Active__c == 'Yes'){
                updateDesc = true;
            }
            if(trigger.isUpdate){
                if(each.Active__c == 'Yes' &&
                trigger.newMap.get(each.Id).Active__c != trigger.oldMap.get(each.id).Active__c){
                    updateDesc = true;
                }
            }
            if(updateDesc){
                each.Description = 'Ready to use. Enjoy';
            }
        }
    }


 integer countNW = 0;
    map<id, account> newAccMap = trigger.newMap;
    map<id, account> oldAccMap = trigger.oldMap;
    set<id> idSet = trigger.newMap.keySet();
    for(id eachId: idSet){
        account accnew = newAccMap.get(eachId);
        string newWeb = accnew.Website;
        account accold = oldAccMap.get(eachId);
        string oldWeb = accold.Website;
        if(newWeb != oldWeb){
            countNW++;
            system.debug('For account ' + accnew.name + ' , website is changed to ' + newWeb);
        }
        
        //------------This is short but confusing version of code above-----
        // for(id eachId: trigger.newMap.keySet())
        // if(trigger.newMap.get(eachId).website != trigger.oldMap.get(eachId).website){
        //     countNW++;
        //     system.debug('For account ' + trigger.newMap.get(eachId).name + ' , website is changed to ' + trigger.newMap.get(eachId).Website);
        // }
    system.debug('Total accounts where website is changed: ' + countNW);
     */

/* Map<id, account> newMapAcc = trigger.newMap;
    map<id, account> oldMapAcc = trigger.oldMap;
  
    if (trigger.isUpdate && trigger.isAfter) {
        Set<id> accIds = newMapAcc.keySet();
        for(id eachId: accIds){
            system.debug('each id:' + eachId);
            account updatedAcc = newMapAcc.get(eachId);
            system.debug('name: '+ updatedAcc.name);
            account oldAcc = oldMapAcc.get(eachId);
            system.debug('old name:'+ oldAcc.name);
        }
    }*/

    /*  if (trigger.isInsert && trigger.isBefore) {
        system.debug('before insert Trigger.OldMap ==> ' + oldMapAcc);//null
        system.debug('before insert Trigger.NewMap ==> ' + newMapAcc);//null
    }
    if (trigger.isInsert && trigger.isAfter) {
        system.debug('after insert Trigger.OldMap ==> ' + oldMapAcc);//null
        system.debug('after insert Trigger.NewMap ==> ' + newMapAcc);//with ID
    }
    if (trigger.isUpdate && trigger.isBefore) {
        system.debug('before update Trigger.OldMap ==> ' + oldMapAcc);//with ID
        system.debug('before update Trigger.NewMap ==> ' + newMapAcc);//with ID
    }*/
   

/*
  list<account> newAccounts = trigger.new;


    if(trigger.isBefore && trigger.isInsert){
        system.debug('before trigger trigger.new ' + newAccounts);
        system.debug('num of records ' + newAccounts.size());
        for(account acc: newAccounts){
            system.debug('accound id:' + acc.id + '  , acc name: ' +acc.name);
        }
    }


    if(trigger.isAfter && trigger.isInsert){
        system.debug('after trigger trigger.new ' + newAccounts);
        system.debug('num of records ' + newAccounts.size());
        for(account acc: newAccounts){
            system.debug('accound id:' + acc.id + '  , acc name: ' +acc.name);
        }
    }

    if(trigger.isBefore && trigger.isUpdate){
        system.debug('before trigger trigger.new ' + newAccounts);
        system.debug('num of records ' + newAccounts.size());
        for(account acc: newAccounts){
            system.debug('accound id:' + acc.id + '  , acc name: ' +acc.name);
        }
    }


    if(trigger.isAfter && trigger.isUpdate){
        system.debug('after trigger trigger.new ' + newAccounts);
        system.debug('num of records ' + newAccounts.size());
        for(account acc: newAccounts){
            system.debug('accound id:' + acc.id + '  , acc name: ' +acc.name);
        }
    }
    */


/* list<account> newAccounts = trigger.new;
    if(trigger.isafter){
        system.debug('after trigger trigger.new ==>' + trigger.new);
        system.debug('number of records ' +newAccounts.size());
}*/

/*if (trigger.isBefore) {
        system.debug('BEFORE(insert or update) trigger called.');
        if (trigger.isInsert) {
            system.debug('before insert trigger called');
        }
        if(trigger.isUpdate){
            system.debug('before update trigger called');
        }
    }
    if (trigger.isAfter) {
        system.debug('AFTER(insert or update) trigger called.');
        if (trigger.isInsert) {
            system.debug('after insert trigger called');
        }
        if(trigger.isUpdate){
            system.debug('after update trigger called');
        }
    }*/
    /*if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('Before insert account trigger called.');
    } 
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('After insert account trigger called.');
    }
    
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('Before update account trigger called.');
    } 
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('After update account trigger called.');
    }
*/


    /*if (Trigger.isInsert) {
        system.debug('before insert account trigger called.');    
    }
    if(Trigger.isUpdate){
        system.debug('before update account trigger called');
    }*/
    
    
    /*0
    //print before insert debug only in BEFORE TRIGGER
    if (Trigger.isBefore) {
        system.debug('before insert account trigger called.');
    }
    ////print after insert debug only in AFTER TRIGGER
    if (Trigger.isAfter) {
        system.debug('AFTER insert account trigger called.');
    }*/
   
}