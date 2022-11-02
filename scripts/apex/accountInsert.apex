account acc1 =new account();
acc1.name = 'Assignment1';
acc1.phone = '123';
acc1.site = 'www.www';
acc1.website = 'w.www';

account acc2 = new account();
acc2.name='Assignment2';
acc2.phone = '000';
acc2.site= 'aaa.www';
acc2.website = 'a.www';

System.debug(acc1);
System.debug(acc2);

List<Account> accList = new List<Account>();
accList.add(acc1);
accList.add(acc2);
insert accList;
List<Account> forUpdate = [select name, phone from account order by createddate desc limit 2];
for(account e: forUpdate){
    e.name = 'ASSIGN';
    e.phone = '666';
}
update forUpdate;
List<Account> forDel = [SELECT name FROM Account where name = 'ASSIGN'];
delete forDel;