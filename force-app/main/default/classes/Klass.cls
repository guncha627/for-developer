public class Klass {
    public void hosgeldin(){
        System.debug('Hosgeldiniz');
        System.debug('Sapak ' + time.newInstance(8, 30, 0, 0) + 'da baslayar');
    }
    public string sozlemTut(){
        return 'Men okuwcy.';
    }
    public string sozlemiMenAydaryn(string sozlem){
        //return 'Senin aydan sozlemini gaytala diymedina';
        //return sozlem;
        // return sozlem + ' Tanysanyma shat';
        string gysgarakBolarYaly = sozlem + ' Tanysanyma shat';
        return gysgarakBolarYaly;
    }
}