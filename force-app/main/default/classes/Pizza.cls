public class Pizza {
    public string size;
    public string topping;
    public integer num;
    public Pizza(string s, string t, integer n){
        size = s;
        topping = t;
        num = n;
    }
    public void getPizzaOrder(){
        System.debug('Pizza topping:' + topping);
        System.debug('Pizza size:' + size);
        System.debug('Number of pizzas:' + num);
    }
}
