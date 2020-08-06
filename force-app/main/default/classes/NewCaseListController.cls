public class NewCaseListController{
    public List<Case> getNewCases(){
        return [SELECT id, caseNumber FROM Case WHERE status = 'New'];
    }

    //String a = 1;
}