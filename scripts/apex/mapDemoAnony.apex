string month6 = MapDemo.retrieveMonth(6);
// system.debug(month6);
string month43 = MapDemo.retrieveMonth(43);
// system.debug(month43);


map<integer, string> zipCodeToCityMap = new map<integer, string>();
zipCodeToCityMap.put(621202, 'Mary');
zipCodeToCityMap.put(621201, 'Turkmenabat');
zipCodeToCityMap.put(621200, 'Ashgabat');
zipCodeToCityMap.put(621203, 'Balkanabat');
zipCodeToCityMap.put(621205, 'Dasoguz');
system.debug(zipCodeToCityMap);

Boolean ifThere = zipCodeToCityMap.containsKey(204101);
system.debug(ifThere);

system.debug(zipCodeToCityMap.keySet());
system.debug(zipCodeToCityMap.values());

system.debug(zipCodeToCityMap.size());

set<integer> uniqueZipCodeSet = zipCodeToCityMap.keySet();
system.debug(uniqueZipCodeSet);

list<string> cityNameList = zipCodeToCityMap.values();
system.debug(cityNameList);

system.debug(zipCodeToCityMap.isEmpty());

/* List: values have index according to order of entry. Accept repeated values 
    Set: values don't have index, repeated values counted just once
    Map: it is combination of key and value. Keys can't be repeated,but values can be. 
    That's why if we need all keys in one table we create it in a Set, if we need values in one table we create it in a List */

