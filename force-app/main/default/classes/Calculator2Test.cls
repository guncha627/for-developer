@isTest
public class Calculator2Test {
    @isTest
   private static void addTest1() {
    calculator2 calc = new calculator2();
    integer sum = calc.add(10, 15);
    system.assertEquals(25, sum);
   }
   @isTest
   private static void addTest2() {
    calculator2 calc = new calculator2();
    integer sum = calc.add(10, 15, 5);
    system.assertEquals(30, sum);
   }
   @isTest
   private static void leapYearTest() {
    calculator2 c = new calculator2();
    date dt = date.newInstance(2001, 1, 1);
    boolean isleap = c.leapYearCheck(dt);
    system.assertEquals(false, isleap);
    
   }
}
