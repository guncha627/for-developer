public class SetDemo {
   public static void citySet() {
    set<string> cities = new Set<String>();
    cities.add('Tokyo');
    cities.add('Tokyo');
    cities.add('Berlin');
    cities.add('Asgabat');
    cities.add('Asgabat');
    system.debug(cities);
   }
   public static void randomIntegerSet(){
      set<integer> integerSet = new Set<Integer>();
      integerSet.add(23);
      integerSet.add(23);
      integerSet.add(23);
      integerSet.add(23);
      integerSet.add(25);
      integerSet.add(27);
      system.debug(integerSet);
   }
   public static set<integer> setFromList(list<integer> intList){
      Set<Integer> setOfInt = new Set<Integer>();
      setOfInt.addAll(intList);
      return setOfInt;
   }
   public static set<string> capitalizeAllSet(set<string> setString){
      set<string> returnSet = new Set<String>();
      for(string eachStr: setString){
         string tempStr= eachStr.toUpperCase();
         returnSet.add(tempStr);
      }
      return returnSet;
   }
}
