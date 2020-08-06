public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer inputNumber, String inputLastName) {
        List<Contact> lc = new List<Contact>();
        for (Integer i=0; i < inputNumber; i++){
            Contact c = new Contact(FirstName = 'Test ' + i, LastName = inputLastName);
            lc.add(c);
        }
        return lc;
    }
}