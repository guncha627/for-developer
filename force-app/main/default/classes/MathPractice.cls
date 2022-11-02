public class MathPractice {
    public static decimal practiceOne(decimal a, decimal b) {
        decimal param = 2*a +2*b;
        return param;
    }
    public static decimal practiceTwo(decimal a, decimal b){
        decimal VKI = a/(b*b);
        return VKI;
    }
    public static decimal practiceThree(integer a, integer b){
        decimal average = (a + b) / 2;
        return average;
    }
    public static decimal practiceFour(decimal cost){
        integer bonus = 0;
        if(cost <= 0){
            System.debug('Wrong number');
        }else if(cost<50){
            System.debug('You don\'t have any bonus');
        }else if(cost<200){
            bonus = 10;
            System.debug('You have earn '+ bonus +'$ bonus for your ' +cost + '$ shopping');
        }else if(cost<500){
            bonus = 30;
            System.debug('You have earn '+ bonus +'$ bonus for your ' +cost + '$ shopping');
        }else{
            bonus= 50;
            System.debug('You have earn '+ bonus +'$ bonus for your ' +cost + '$ shopping');
        }
        return bonus;
    }
    public static decimal practiceFive(string a, integer b){
        decimal price = 0;
        if(a == 'ekmek'){
            price = 1;
        }else if(a=='simit'){
            price = 2;
        }else{
            price = 3;
        }
        decimal cost = price*b;
        System.debug('Almis oldugunuz ' + b + ' adet ' + a + ' tutari ' + cost +'$ dir');
        return cost;
    }
    public static void practiceSix(decimal a, decimal b, string c){
        decimal perimeter = 0;
        decimal area = 0;
        switch on c {
            when 'perimeter' {
                perimeter = a*2+b*2;
                System.debug('Perimeter of rectangle: '+Math.round(perimeter));
            }when 'area' {
                area = a*b;
                System.debug('Area of rectangle: '+Math.round(area));
            }
            when else {
                System.debug('Please enter valid calculation type');
            }
        }
    }
    public static string practiceSeven(decimal l, decimal kg){
        decimal VKI = kg/(l*l);
        System.debug('VKI:'+VKI);
        string result = '';
             if(VKI>0 && VKI<18.5){
                result = 'Underweight';
                System.debug(result);
            }else if(VKI>18.4 && VKI<25){
                result = 'Normal';
                System.debug(result);
            }else if(VKI>24.9 && VKI<30){
                result = 'Overweight';
                System.debug(result);
            }else{
                result = 'Error';
                System.debug(result);
            }
        return result;
    }
    public static integer practiceEight(integer a, integer b){
        integer sum = 0;
        if(a == b){
            sum = a +b;
        }else{
            for(integer i=a; i<=b; i++){
                sum +=i;
            }
        }
        return sum;
    }
}
   
