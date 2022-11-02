public class StringDemoClass {
    public void stringMethod1(){
        String sessionDescription = 'Learning string methods in apex language.';
        system.debug('The length of string is ' +sessionDescription.length());
        System.debug('To uppercase version is ' + sessionDescription.toUpperCase());
        System.debug('Does contain "apex" inside is: ' + sessionDescription.contains('apex'));
        System.debug('Does contain "salesforce" inside is: ' + sessionDescription.contains('salesforce'));
    }
}
