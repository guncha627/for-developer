public class Calculator2 {
    public integer add(integer a, integer b){
        integer sum = a +b;
        return sum;
    }
    public integer add(integer a, integer b, integer c){
        integer sum = a +b +c;
        return sum;
    }
    public boolean leapYearCheck(date dt){
        integer year = dt.year();
        boolean isLeapYear = date.isLeapYear(year);
        return isLeapYear;
    }
    public static integer add2(integer a, integer b){
        integer sum=a+b;
        return sum;
    }
    public static integer add(list<integer> intList) {
        integer returnSum = 0;

        for (integer eachInt : intList) {
            returnSum += eachInt;
        }
        return returnSum;
    }
}
