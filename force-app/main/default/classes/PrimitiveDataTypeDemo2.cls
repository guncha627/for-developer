public class PrimitiveDataTypeDemo2 {
  public void printNewDate(){
    System.debug('create new date instance');

    date newDate = date.newInstance(2022, 8, 18);
    date newDate2 = date.newInstance(1998, 6, 16);
    date todaysDate = date.today();
    system.debug(newDate);
    system.debug(newDate2);
    system.debug(todaysDate);
  } 
  public void printNewTime(){
    Time myTime = time.newInstance(12, 12, 34, 200);
    system.debug(myTime);
  }
  public void printNewDateTime(){
    date newDate = date.today();
    time newTime = time.newInstance(9, 8, 0, 0);
    time tryTime = time.newInstance(23, 23, 23, 23);
    system.debug(tryTime);

    Datetime dt1= datetime.newInstance(2000, 3,13);
    system.debug(dt1);

    // datetime dt2 = datetime.newInstance(2000, 4, 30, 0 , 0, 0);
    // system.debug(dt2);

    long longTime = 342342344234L;
    dateTime dt4 = dateTime.newInstance(longTime);
    long longTimeZero = 0;
    datetime dt41 = datetime.newInstance(longTimeZero);
    system.debug(dt4);
    system.debug(dt41);

    datetime dt6 = datetime.now();
    system.debug(dt6);

    datetime dt2 = datetime.newInstance(2000, 4, 30, 0 , 0, 0);
    system.debug(dt2);

    datetime dt7 = datetime.newInstanceGmt(2000, 4, 30, 0 , 0, 0);//prints in GMT
    system.debug(dt7);
  }
  public void calculateAgeInMonth(){
    date todayDate = date.today();
    date birthDate = date.newInstance(1989, 11, 12);
    integer ageInMonths=birthDate.monthsBetween(todayDate);
    System.debug(ageInMonths);
    integer ageInDays=birthDate.daysBetween(todayDate);
    System.debug(ageInDays);
  }
  public void printSubscriptionEndDate(){
    //today date=subs start date
    date subscriptionStartDate = date.today();
    date subscriptionEndDate = subscriptionStartDate.addDays(1000);//parameter is integer
    system.debug('Subscription End Date is ' +subscriptionEndDate);
    system.debug('Subscription End Date\'s month is ' +subscriptionEndDate.month());
    system.debug('Subscription End Date\'s year is ' +subscriptionEndDate.year());
  }
  public void printOfferEndDateTime(){
    datetime offerStartDt = datetime.now();
    datetime offerEndDt = offerStartDt.addHours(51);
    system.debug('offer ends datetime ' + offerEndDt);

    date offerEndDate = offerEndDt.date();
    System.debug('offerEndDate is ' +offerEndDate);

    datetime birthdate = datetime.newInstance(1989,11,12,2,0,0);
    long longbirthdate = birthdate.getTime();
    System.debug(longbirthdate);
  }
}
