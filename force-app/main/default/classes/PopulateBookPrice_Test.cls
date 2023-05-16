@isTest
public class PopulateBookPrice_Test {
    static testMethod void populateBookPrice(){
        
        User Manager = [SELECT Id from User Where Id = '0052w00000DNP8mAAH'];
        User Assistant = [SELECT Id from User Where Id = '0052w00000DNPD9AAP'];
        
        System.runAs(Manager){       
        List<Students__c> students = testDataFactory.createStudentData(1);
        List<Books__c> books = testDataFactory.createBookData(1);
        List<Books_Order__c>  bookOrder = testDataFactory.createBookOrderData(1);
        
        
        Books_Order__c newBookOrder = [Select Quantity__c, Books__r.Book_Price__c, Price__c FROM Books_Order__c WHERE Id = : bookOrder[0].Id];
        
        System.assertEquals(newBookOrder.Quantity__c*newBookOrder.Books__r.Book_Price__c, newBookOrder.Price__c , 'Error in Price');
        }
    }
}