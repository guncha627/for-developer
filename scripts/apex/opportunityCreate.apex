List<Opportunity> oppList = new List<Opportunity>();
for(integer i=1; i<150; i++){
    opportunity opp = new opportunity();
    opp.name = 'Homework ' + i;
    opp.type = 'New Customer';
    opp.StageName = 'Qualification';
    opp.CloseDate = date.newInstance(2024, 2, 2);
    opp.Description = 'i';
    oppList.add(opp);
}
insert oppList;
List<Opportunity> forDel = [SELECT name FROM opportunity
                            where name like 'Homework%'];
delete forDel;