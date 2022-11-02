try{
    Account ac = new account();
    insert ac;
}catch(DmlException dx){
    System.debug('dml went wrong buddy');
}catch(exception ex){
    System.debug('Something went wrong buddy');
}
System.debug('Apex is simple');