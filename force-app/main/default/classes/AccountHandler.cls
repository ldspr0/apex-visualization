public class AccountHandler {
    public static Account insertNewAccount(String inputName){
        try{
        	Account a = new Account(Name = inputName);
            insert a;
        	return a;
        }
        catch (DMLException ex){
            return null;
        }
    }
}