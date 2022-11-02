map<string, string> mapCountryCurrency = new map<string, string>();
mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('Canada', 'Dollar');
mapCountryCurrency.put('Turkmenistan', 'Manat');
mapCountryCurrency.put('Turkiye', 'Liras');
mapCountryCurrency.put('Turkiye', 'Lira');
system.debug(mapCountryCurrency);

string TurkiyeCurrency = mapCountryCurrency.get('Turkiye');
string USACurrency = mapCountryCurrency.get('USA');

system.debug(TurkiyeCurrency);
system.debug(USACurrency);

set<string> allCountries = mapCountryCurrency.keySet();
system.debug(allCountries);

list<string> allCurrencies = mapCountryCurrency.values();
system.debug(allCurrencies);