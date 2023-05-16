public with sharing class BookController {

    @AuraEnabled(cacheable=true)
    public static List<Books__c> getBooksList(){
        return [SELECT Id, Name, Book_Type__c, Book_Price__c, How_many_books__c, Quantity__c FROM Books__c ];
    }
}