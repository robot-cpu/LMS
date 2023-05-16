trigger updateBooksQuantity on Books_Order__c (before insert) {
    List<Books__c> updates = new List<Books__c>();
    for (Books_Order__c record : Trigger.new) {
        
        // Query related object to get data
        Books__c relatedRecord = [SELECT Quantity__c FROM Books__c WHERE Id = :record.Books__c];

        // Update target object with retrieved data
        Books__c updateRecord = new Books__c(Id = relatedRecord.Id);
        updateRecord.Quantity__c = relatedRecord.Quantity__c - record.Quantity__c;
        
        updates.add(updateRecord);
    }
    update updates;
    
    /*Books.updateBookQuantity(Trigger.new);
    
    public class Book{
        public static void updateBookQuantity (List<Book__c> bookList){
            
        }
    }*/
    
}