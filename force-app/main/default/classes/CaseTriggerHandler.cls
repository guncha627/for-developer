public class CaseTriggerHandler {
    public static void insertCase(){
        case testCase = new case();
        testCase.subject = 'Case Trigger test';
        testCase.Status = 'New';
        testCase.Origin = 'Web';
        insert testCase;
    }
    public static void updateCase(){
        case updateCase = [select id, subject 
                        from case 
                        where subject = 'Case Trigger test'];
        updateCase.subject = 'Case Trigger Test Update';
        update updateCase;
    }
    public static void deleteCase(){
        case deleteCase = [select id, subject 
                        from case 
                        where subject = 'Case Trigger Test Update' ];
        delete deleteCase;
    }
    public static integer countTriggerExecution = 0;
    public static integer countTriggerRecords = 0;

}
