public class PrimitiveDataTypeDemo {
    public void printBasicDataType() {
        system.debug('printing primitive datatypes');
        string batchName = 'Batch 9';
        integer totalCandidates = 70;
        boolean isAdminCompleted = true;

        System.debug(batchName);
        System.debug(totalCandidates);
        System.debug(isAdminCompleted);

        string batchDescription = batchName + ' is fantastic.';

        System.debug(batchDescription);

        Decimal decValue = 70.55;
        System.debug(decValue);

        Long longValue = 234234234L;
        system.debug(longValue);

        Object obj1 = 'fissafdadsf';
        Object obj2 = 40.5;
        Object obj3 = true;

        system.debug(obj1);
        system.debug(obj2);
        system.debug(obj3);

        Id id1 = '0034x00001FUduvAAD';
        system.debug(id1);
    }
}
