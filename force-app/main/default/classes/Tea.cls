public class Tea {
    public void start(){
        System.debug('Step 1:We need to collect all raw material.');
    }
    public void execute(){
        start();
        System.debug('Step 2:We need to mix all material and boil in water.');
    }
    public void finish(){
        execute();
        System.debug('Step 3:Tea is ready to serve');
    }
}
