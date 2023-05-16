public class AccController {
 @AuraEnabled
    public static List<Account> getAccounts(){
        List<Account> accList = new List<Account>();
        
        accList = [SELECT Id, Name From Account LIMIT 5];
        
        return accList;
    }
}