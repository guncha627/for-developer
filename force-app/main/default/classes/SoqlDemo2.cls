public class SoqlDemo2 {
   public static void childToParent_SOQL1(){
    list<contact> listContact =[select name, phone, account.name, account.industry from contact where account.industry = 'Energy'];
    for(contact eachContact: listContact){
        string accName = eachContact.account.name;
        string accIndustry = eachContact.account.Industry;
        System.debug(eachContact.name+ accName);
    }
   }
   public static void parentToChild_SOQL1() {
        list<account> accountWithOpps = [select id, name, annualrevenue, type, 
                                        (select name, amount, stageName from opportunities where stageName = 'Closed Won') 
                                        from account where type = 'Customer - Direct'];
        for (account eachAcc : accountWithOpps) {
            system.debug('account name is ' + eachAcc.Name + ' and annual revenue is ' + eachAcc.AnnualRevenue);
            system.debug('----');
            List<Opportunity> accOpportunities = eachAcc.Opportunities;
            for (opportunity eachOpp : accOpportunities) {
                system.debug('opp name is ' + eachOpp.Name + ' AND amount is ' + eachOpp.Amount);
            }
            system.debug('============');
        }
    }
    //  public static void soqlDemo5(){
    //     list<Salesforce_Project__c> listProject = [select id, name,project_name__c, status__c, (select name, subject__c, priority__c from salesforce_tickets__r) from salesforce_project__c];
        
    //     integer totalHighPrioritySt = 0;

    //     for(Salesforce_Project__c eachProject: listProject){
    //         list<Salesforce_Ticket__c> countTicket = eachProject.Salesforce_Tickets__r;
    //         string projectName = eachProject.name;
    //         integer totalTicket= countTicket.size();
    //         integer highPriorityTicket = 0;
    //         // system.debug('all ticket numbers is:' + eachProject.size());

    //         // integer highs = 0;
    //         for(Salesforce_Ticket__c eachTicket: countTicket){
    //             if(eachTicket.Priority__c == 'High'){
    //                 highPriorityTicket++;
    //                 totalHighPrioritySt++;
    //             }
    //         }
    //         system.debug('Project ID: ' +projectName + ', high priority tickets: ' + highPriorityTicket);
    //     }
    //     system.debug('totalHighPriority' +totalHighPrioritySt);
    //  }
    public static void soqlDemo5(){
        list<salesforce_project__c> listSP = [select name, project_name__c, status__c, 
                                            (select name, subject__c, priority__c from salesforce_tickets__r) 
                                            from salesforce_project__c];
        for(salesforce_project__c eachSP: listSP){
            system.debug('Project name is '+ eachSP.project_name__c+ ', autonumber:' + eachSP.name + ', status:'+ eachSP.status__c);

            list<salesforce_ticket__c> numOfST = eachSP.salesforce_tickets__r;
            System.debug('There are ' + numOfST.size() + ' tickets in this project');
            integer totalHigh = 0;
           
             for(salesforce_ticket__c eachST: numOfST){
                if(eachST.priority__c == 'High'){
                    System.debug('Ticket subject: ' +eachST.subject__c + ' and priority is: ' +eachST.priority__c);
                    totalHigh++;
                }
            }
            System.debug('Total high priority tickets are: ' +totalHigh);
           System.debug('==============================');
        }

    }
}

