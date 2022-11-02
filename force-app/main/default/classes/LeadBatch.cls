public class LeadBatch implements Database.Batchable<SObject>, database.stateful{
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator ql = database.getQueryLocator([select id, description from lead]);
        return ql;
    }
    public void execute(Database.BatchableContext bc, List<lead> scope){
        for (lead ld : scope) {
            ld.Description = 'Updated from Batch Apex';
        }
        update scope;
    }
    public void finish(database.BatchableContext bc){
        System.debug('Batch over');
    }
}
