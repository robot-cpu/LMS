@isTest
public class testDataFactory {   
	public static List<Books__c> createBookData(integer numBooks)
    {
        List<Books__c> bookList = new List<Books__c>();
        for(integer i= 0; i<numBooks; i++)
        {
            Books__c book = new Books__c(
                		Name = 'Book' + i,
                		Quantity__c = i,
                		Book_Price__c = 10*i
            );
            bookList.add(book);
        }
        insert bookList;
        return bookList;
    }
    public static List<Students__c> createStudentData(integer numstudents)
    {
        List<Students__c>  studentList = new List<students__c>();
        for(integer i=0; i<numstudents; i++)
        {
            Students__c student = new Students__c(
            					Name= 'student' + i,
                				Phone_Number__c = '9815648915'
            	);
            studentList.add(student);
        }
        insert studentList;
        return studentList;       
    }
    public static List<Books_Order__c> createBookOrderData(integer numbookorder)
    {
        
        List<Books_Order__c>  bookOrderList = new List<Books_Order__c>();
        List<Books__c> bookList = [SELECT Id from Books__c WHERE Name = 'Book0' LIMIT 1];
        for(integer i=0; i<numbookorder; i++)
        {
            Books_Order__c bookOrder = new Books_Order__c(
            					Quantity__c = i,
                				RecordTypeId = '0122w000000WeozAAC',
                				Books__c =  bookList[0].Id
            					);
             bookOrderList.add(bookOrder);
        }
        insert bookOrderList;
        return bookOrderList;
    }
    
    
}