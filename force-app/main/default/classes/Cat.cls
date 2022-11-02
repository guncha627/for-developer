public class Cat {
    public string color;
    public string name;
    //name is same as class name
    //doen not return anything
    //this is non-parameterized constructor
    
    // public Cat() {
    //     System.debug('cat constructor is called');
    // }
    public Cat(string n, string clr){
        name= n;
        color=clr;
        // sleeping();
    }
    public void sleeping(){
        system.debug(name + ' is sleeping');
    }
}
