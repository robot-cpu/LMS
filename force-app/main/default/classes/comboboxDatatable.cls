public with sharing class comboboxDatatable {

    @AuraEnabled(cacheable=true)
    
    public static List<Books_Order__c> getbookorderforcombox() {
        List<Books_Order__c> bookorderList = [Select Id,Name,Student__c,Books__c FROM Books_Order__c];
        return bookorderList;

    }
    @AuraEnabled(cacheable=true)
    public static List<Books_Order__c> getBookorderDetail(String selectedBookorderId) {
        List<Books_Order__c> bookorderDetailList = [Select Id,Name,Student__c,Books__c FROM Books_Order__c];
        return bookorderDetailList;
    }
}