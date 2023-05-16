public with sharing class studentController {
    @AuraEnabled(cacheable=true)

    public static List<Students__c> getstudentsList(){
        return [SELECT Id, Name, Address__c,Email__c, Phone_Number__c FROM Students__c ];
    }
}