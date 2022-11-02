public class MyCity {
    public string favoritecafe;
    public string favoritePark;
    public string favoriteMall;
    public string favoriteStore;
    public string myFavoriteLocations(string myCity){
        System.debug('Most beautiful cafe in my city is ' + favoritecafe+ ' most beautiful park is '+favoritePark);
        return myCity;
    }
    public static void printString(integer a, string b){
        for(integer i=1; i<=a; i++){
            System.debug(b+' ' +i);
        }
    }
}
