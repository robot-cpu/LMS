public with sharing class bookClass {

    @AuraEnabled(cacheable=true)
    public static List<Books__c> getbooks(String searchKey) {
        if(searchKey != '' && searchKey!= null){
            String key ='%' +searchKey+'%';
            List<Books__c> bookSearchList = [Select Id,Name, Book_Type__c, Picture__c,Author__c,Book_Price__c FROM Books__c Where Name Like :key ];
            return bookSearchList;
        }
        else{
            List<Books__c> bookList = [Select Id,Name, Book_Type__c, Picture__c, Book_Price__c, Author__c FROM Books__c];
            return bookList;
        }
    }
}