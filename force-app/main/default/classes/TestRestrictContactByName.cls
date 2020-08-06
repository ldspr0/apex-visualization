@isTest
public class TestRestrictContactByName {
    @isTest static void test() {
        Contact c = new Contact(LastName = 'INVALIDNAME');
        
        Test.startTest();
        Database.SaveResult result = Database.Insert(c, false);
        Test.stopTest();
        //insert c;
    }
}