public class booksController {
	@AuraEnabled
    public static List<Books__c> getBooks(){
        List<Books__c> accList = new List<Books__c>();
        
        accList = [SELECT Id, Name FROM Books__c LIMIT 5];
        
        return accList;
    }
}