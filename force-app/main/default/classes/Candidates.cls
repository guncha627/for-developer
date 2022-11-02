public class Candidates {
    public string name;
    public string gender;
    public static string companyName;
    public static integer candidateCount = 0;
    public void printCandidate(){
        System.debug('Candidate name is '+ name + '('+gender+')');
        System.debug('company name '+companyName);

    }
}
