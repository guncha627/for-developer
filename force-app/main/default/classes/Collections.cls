public class Collections {
    public static string listAssignment(integer i){
        list<string> monthList = new list<string>();
        string output_month = '';
        monthList.add('January');
        monthList.add('February');
        monthList.add('March');
        monthList.add('April');
        monthList.add('May');
        monthList.add('June');
        monthList.add('July');
        monthList.add('August');
        monthList.add('September');
        monthList.add('October');
        monthList.add('November');
        monthList.add('December');

        if(i <= 0 || i > monthList.size()){
           output_month ='Not a valid month';
        } else {
            output_month = monthList[i-1];
        }

        return output_month;
    }
}
