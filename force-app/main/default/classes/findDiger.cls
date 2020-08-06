global class findDiger {
    
    @Future(callout=true)
    public static void find(Integer i, String Name){
        
        
        Integer j = i+100;
        
        
        while (i<j){
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://eu.api.battle.net/sc2/profile/'+i+'/2/'+Name+'/?locale=en_GB&apikey=hn4afufv8cup6awy8x4kn4c4fjycyyk3');
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            //System.debug(response.getStatusCode());
            if (response.getStatusCode() == 200 || response.getStatusCode() == 403){
                System.debug(i);
                for (Integer a= 0; a<300; a++){
                    Account ac = [Select Id From Account];
                }
            }

            i++;
        }
    }
    /*
     Integer i = 55000;
String Name = 'DigEr';

for (Integer a = 0; a<50; a++){
    findDiger.find(i+a*100, Name);
}
     */
}