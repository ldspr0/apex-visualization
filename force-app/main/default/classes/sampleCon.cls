public class sampleCon {

        String countries;
            
        public PageReference test() {
            return null;
        }

     public sampleCon(ApexPages.StandardController stdController) {
    }
    
        public List<SelectOption> getItems() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('1','US'));
            options.add(new SelectOption('2','Canada'));
            options.add(new SelectOption('3','Mexico'));
            return options;
        }
            
        public String getCountries() {
            return countries;
        }
            
        public void setCountries(String countries) {
            this.countries = countries;
        }
}