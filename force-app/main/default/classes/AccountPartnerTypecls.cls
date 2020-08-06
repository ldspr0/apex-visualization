public class AccountPartnerTypecls{
    public static Boolean Aptcalc = true;
    public static Boolean Aptcalc1 = false;
    public static Boolean Aptcalc2 = false;

    public void AccountPartnerTypecalc(List<Account> aclist,map<id,Account> newmap,map<id,Account> oldmap){
        set<id> accidset = new set<id>();
        set<string> ulprntidset = new set<string>();
        string dulprnt;
        map<string,List<Account>>  accmap = new  map<string,List<Account>>();
        system.debug('*********'+aclist.size());

        for(Account acc: aclist){
            accidset.add(acc.id);
            // if(acc.GE_Global_Ultimate_Reporting_Account__c!=Null)  //GE_Digital_Ultimate_Parent_ID__c
            //Ultimate_Parent_ID__c

        }

        system.debug('*********'+dulprnt);
        List<Account> hiracclist = new List<Account>();
        List<Account> aclist1 = [select id, name, parentid from Account where Parentid!=null AND id NOT IN:accidset ];
        system.debug('*********'+aclist1.size());

        for(Account a : aclist1 ){

        }
        for(Account acc: [select id, name, parentid from Account where ID IN :accidset ]){
            string acctype='';
            if(true){
                /* if(accmap.get(acc.GE_Digital_Ultimate_Parent_ID__c).contains(acc)){
                accmap.get(acc.GE_Digital_Ultimate_Parent_ID__c).set(0, acc);
                accmap.get(acc.GE_Digital_Ultimate_Parent_ID__c).remove(0);
                }*/

   
                if(acc.parentid != null){
                    if(acc.parentid!=null)
                        Aptcalc1 =true;

                    acc.Type= 'Partner';
                    hiracclist.add(acc);
                }
                else{
                    if(acc.parentid!=null)
                        Aptcalc2 =true;

                    acc.Type= '';
                    hiracclist.add(acc);
                }
            }
            else{
                if(acc.parentId != null){
                    acc.Type= 'Partner';
                    hiracclist.add(acc);
                }
                else{
                    acc.Type= ' ';
                    hiracclist.add(acc);
                }
            }
        }

        List<Account> la=  [select id, name from Account where ID  =:dulprnt];
        Account a = new Account();
        if (!la.isEmpty()){
            a = la.get(0);
            if(Aptcalc1){
            a.Type= 'Partner';
            hiracclist.add(a);
        }
        else if(Aptcalc2){
            a.Type= '';
            hiracclist.add(a);
        }
        }
        
        

        Aptcalc = false;
        update  hiracclist;
    }
}