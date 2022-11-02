public class DMLPractice {
   public static void insertNewAccount(){
    account testacc = new account();
    testacc.name = 'DML Practice';
    testacc.Rating = 'Hot';
    testacc.Type = 'Prospect';
    insert testacc;
   }
   public static void createOppsForNewAcc(){
    account acc = [select id, name from account where name = 'DML Practice'];
    list<opportunity> oppList= new list<opportunity>();
    date today = date.today();
    for(integer i = 1; i <= 5; i++){
        opportunity opp= new opportunity();
        opp.name = 'DML Opp ' + i;
        opp.accountID =  acc.id;
        opp.amount = 500000;
        opp.closedate = today.addMonths(1);
        opp.stagename = 'Prospecting';
        oppList.add(opp);}
    insert oppList;
   }
   public static void updateOpps(){
    List<Opportunity> lastfive = [select id, name 
                                from opportunity 
                                order by createddate desc limit 5];
    integer index = 1;
    for(opportunity each: lastfive){
        each.name = 'DML Opp update ' +index;
        index++;
    }
    update lastfive;
   }
   public static void deleteOpps(){
    List<Opportunity> fordel = [select id, name 
                                from opportunity 
                                where name like 'DML Opp update %'];
    delete fordel;
   }
}
