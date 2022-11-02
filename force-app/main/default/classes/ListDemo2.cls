public class ListDemo2 {
    public static void iterateListInteger(){
        list<integer> listInteger = new list<integer>();
        listInteger.add(15);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(24);
        listInteger.add(2);

        for (integer eachInteger : listInteger) {
            System.debug(eachInteger);
        }
    }
    public static void iterateListString() {
        list<string> listString = new list<string>();
        listString.add('one');
        listString.add('two');
        listString.add('three');

        for (string eachString : listString) {
            system.debug(eachString);
        }
        
    }
}
