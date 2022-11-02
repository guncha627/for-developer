@isTest
public class CalculatorTest {
    @isTest
    private static void testCalculator() {
        calculator cal = new calculator();
        cal.printNewMessage('This is coming from test method');
    }
    @isTest
    private static void testCalPrint2() {
        calculator cal = new calculator();
        string returnstr = cal.printAndReturnMessage('This is coming from test method');
        string expected = 'This is coming from test method...OK Cool';
        system.assertEquals(expected, returnstr);
    }
}
