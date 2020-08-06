@isTest
public class TestVerifyDate {
    @isTest static void test1(){
        Date date1 = System.today();
        Date date2 = System.today()+32;
        Date date3 = System.today()+4;
        VerifyDate.CheckDates(date1, date2);
        VerifyDate.CheckDates(date1, date3);
    }
}