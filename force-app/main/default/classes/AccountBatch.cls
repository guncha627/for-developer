public class AccountBatch implements Database.Batchable<SObject>, database.stateful{
    integer numberOfRecords = 0;
    integer count = 0;
    //write methods
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator ql = database.getQueryLocator([select id, description from account]);
        return ql;
    }
    public void execute(Database.BatchableContext bc, List<Account> scope){
        for (account acc : scope) {
            acc.Description += '...Update via Batch';
        }
        numberOfRecords+=scope.size();
        count ++;
        System.debug(' number of records updated:'+ numberOfRecords);
        System.debug('count is:' +count);
        update scope;
    }
    public void finish(database.BatchableContext bc){
        System.debug('Finish method executed.Batch done. Simple');
    }
   //Adding comment make code more clear
}
