public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String InputLastName){
 
        List<List<SObject>> SOSLsearch = [FIND :InputLastName IN NAME FIELDS
                   RETURNING Lead(FirstName,LastName),Contact(FirstName,LastName)];
        
        return SOSLsearch;
    }
}