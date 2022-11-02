public class ListDemo {
    public static string candidatesList(integer i){
        list<string> listCandidates = new list<string>();
        listCandidates.add('Marc');
        listCandidates.add('Bill');
        listCandidates.add('Elon');
        listCandidates.add('Marc');
        // System.debug('Candidates list is ' +listCandidates);

        string returnStr= '';
        if(i >= 0 && i < listCandidates.size()){
        returnStr = listCandidates[i];
        } else {
        returnStr = 'No value found';
        }
        system.debug(returnStr);
        return returnStr;
    }
    public static void randomIntegerList(){
        list<integer> listInteger = new list<integer>();
        listInteger.add(15);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(24);
        listInteger.add(2);
        system.debug('random integer list is '+listInteger);

        integer index3value = listInteger[3];
        integer index2value = listInteger.get(2);
        system.debug(index3value);
        system.debug(index2value);
    }
    public static void allCats(){
        cat vitapsCat = new cat('Tom', 'white');
        cat falconsCat = new cat('John', 'white');
        cat aysesCat = new cat('Boncu', 'grey');
        list<cat> catList = new list<cat>();
        catList.add(vitapsCat);
        catList.add(falconsCat);
        catList.add(vitapsCat);
        catList.add(aysesCat);
        system.debug(catList);

        if(!catList.isEmpty()){
            cat catAt3 = catList[3];
            system.debug('cat at 3 index is ' + catAt3);
        }

    }
}
