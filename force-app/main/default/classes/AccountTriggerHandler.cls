public class  AccountTriggerHandler{
    public static void autoContactCreation(list<account> accTriggerNew) {
        list<contact> forInsert = new list<contact>();
        for(account eachA: accTriggerNew){
            contact cont = new contact();
            cont.accountId = eachA.id;
            cont.LastName = 'AutoContact';
            forInsert.add(cont);
        }
        if(!forInsert.isEmpty()){
            insert forInsert;
        }
    }

    public static void updateDescription(List<account> accTriggerNew, 
                                        List<account> accTriggerOld,
                                        Map<id, account> accTriggerNewMap,
                                        Map<id, account> accTriggerOldMap) {

        for (account eachAcc : accTriggerNew) {
            boolean updateDesc = false;
            if (accTriggerOldMap == null && eachAcc.Active__c == 'Yes') {
                updateDesc = true;
            }
            if (accTriggerOldMap != null) {
                if (eachAcc.Active__c == 'Yes' 
                && accTriggerOldMap.get(eachAcc.Id).Active__c != accTriggerNewMap.get(eachAcc.Id).Active__c) {
                    updateDesc = true;
                }
            }
            if (updateDesc) {
                eachAcc.Description = 'Account is now Active. ENJOY!';
            }
        }
    }
    // public static void updatesth(list<account> accTriggerNew,
    //                             list<account> accTriggerOld,
    //                             map<id, account> accTriggerNewMap, 
    //                             map <id, account> accTriggerOldMap){
    //     for(account e: accTriggerNew){
    //         boolean upd = false;
    //         if(accTriggerOldMap == null && e.Active__c == 'Yes'){
    //             upd = true;
    //         }
    //         if(accTriggerOldMap != null){ 
    //             if(e.Active__c == 'Yes' && accTriggerNewMap.get(e.id).Active__c != accTriggerOldMap.get(e.id).Active__c){
    //                 upd = true;
    //             }
    //         }
    //         if(upd){
    //             e.Description = 'Ready to use mate. Enjoy it';
    //         }
    //     }
    // }
    public static void updateVIPforAllContacts(List<account> accTriggerNew, 
                                            List<account> accTriggerOld,
                                            Map<id, account> accTriggerNewMap,
                                            Map<id, account> accTriggerOldMap) {

        //prepare set of account ids whose VIP field is changed
        set<id> accountIds = new set<id>();
        for (account eachAcc : accTriggerNew) {
               if (eachAcc.vip__c != accTriggerOldMap.get(eachAcc.id).VIP__c) {
                    accountIds.add(eachAcc.Id);
               } 
        }
        list<contact> cont = [select id, accountId, vip__c from contact
                            where accountId in :accountIds];
            for(contact eachC: cont){
                eachC.vip__c = accTriggerNewMap.get(eachC.AccountId).vip__c;
            }
            update cont;
    }
    public static void vips(List<Account> accTriggerNew,
                            List<Account> accTriggerOld,
                            Map<Id,Account> accTriggerNewMap,
                            Map<id,account> accTriggerOldMap){
        Set<Id> accId = new set<id>();
        for(account eachA: accTriggerNew){
            if(eachA.vip__c != accTriggerOldMap.get(eachA.id).vip__c){
                accId.add(eachA.id);
            }
        }
        list<contact> cont = [select id, accountId, vip__c from contact
                        where accountId in :accId];
        for(contact eachC: cont){
            eachC.vip__c = accTriggerNewMap.get(eachC.AccountId).vip__c;
        }
        update cont;
    }
}