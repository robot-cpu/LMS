public with sharing class bookorder {
    @AuraEnabled(cacheable=true)
    public static List<Books_Order__c> getBookorderList(){ 
        //id student = (String) ApexPages.currentPage().get('id');
        id student = (String) ApexPages.currentPage().getParameters().get('id');

        return [SELECT Id, Books__c	, Price__c FROM Books_Order__c Where Student__c=: student];

    }
}