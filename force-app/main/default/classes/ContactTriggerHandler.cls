public class ContactTriggerHandler {
    public static void contactUpdateValidator1(list<contact> contTriggerNew, 
                                                list<contact> contTriggerOld,
                                                map<id, contact> contTriggerNewMap, 
                                                map<id, contact> contTriggerOldMap){

            for (contact eachCnt : contTriggerNew) {
                Contact oldContact = contTriggerOldMap.get(eachCnt.id);
                if (oldContact.LeadSource == 'Partner Referral') {
                    eachCnt.addError('Cannot update \'Partner Referral\' contact.');
                }
            }
    }
    public static void contactUpdateValidator2(list<contact> contTriggerNew, 
                                                list<contact> contTriggerOld,
                                                map<id, contact> contTriggerNewMap, 
                                                map<id, contact> contTriggerOldMap){
            for(contact eachC: contTriggerNew){
                if(eachC.LeadSource != contTriggerOldMap.get(eachC.id).LeadSource){
                    String customValidation =system.label.ContactValidation2;
                    eachC.LeadSource.addError(customValidation);
                }
            }
        }

    public static void updateAccNumOfCont(list<contact> contTriggerNew, list<contact> contTriggerOld){
        set<id> accId = new set<id>();
        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for(contact eachC: contTriggerNew){
                accId.add(eachC.accountId);
            }
        }
        if(trigger.isUpdate || trigger.isDelete){
            for(contact eachC: contTriggerOld){
                accId.add(eachC.AccountId);
            }
        }
        if(!accId.isEmpty()){
            contactNumber(accId);
        }
    }
    @future
    public static void contactNumber(set<id> accIds) {
        list<account> accList = [select id, Number_of_Contacts__c, (select id from contacts) from account where id IN :accIds];
        list<account> updatedAcc= new list<account>();
        for (account each : acclist) {
            each.Number_of_Contacts__c = each.contacts.size();
            updatedAcc.add(each);
        }
        update updatedAcc;
    }
}
