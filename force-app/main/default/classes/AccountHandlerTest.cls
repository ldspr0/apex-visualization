@isTest
public class AccountHandlerTest {
    public static testMethod void Testing(){
        Id result = AccountHandler.insertNewAccount('NewName');
        system.debug(result);
        
    }
    public static testMethod void Testing2(){
         Id result2 = AccountHandler.insertNewAccount('');
         system.debug(result2);
    }
}