public class ContactSearch {
    public static Contact[] searchForContacts(String InputLastName, String InputPostalCode){
        List<Contact> lc = [SELECT Id, Name FROM Contact WHERE LastName LIKE :InputLastName AND MailingPostalCode LIKE :InputPostalCode];
        
        return lc;
    }
}