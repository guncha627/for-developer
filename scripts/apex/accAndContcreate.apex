// account acc = new account();
// acc.name = 'Summer Fest LLC';
// acc.ParentId = '0014x00001MIQCEAA5';
// acc.Type = 'Technology Partner';
// acc.Rating = 'Hot';
// acc.AnnualRevenue = 200000000;
// insert acc;

// List<Contact> accContacts = new List<Contact>();
// for(integer i = 1; i<4; i++){
//     contact cont = new contact();
//     cont.LastName = 'Event Planner ' +i;
//     cont.Phone = '123456789';
//     cont.AccountId='0014x00001R4ZaiAAF';
//     cont.LeadSource = 'Web';
//     accContacts.add(cont);
// }
// insert accContacts;
list<Salesforce_Project__c> list = [select name, Project_Name__c from Salesforce_Project__c where Project_Name__c like 'Learn%'];
for(Salesforce_Project__c e: list){
    e.Project_Name__c = 'wer';
}