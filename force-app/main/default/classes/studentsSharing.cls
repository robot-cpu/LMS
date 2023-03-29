public with sharing class studentsSharing {
	
    public static void manualShare()
    {
       List<Students__c> students = new List<Students__c>();
            Students__Share recShr = new Students__Share(); 
        
                recShr.ParentId = students[0].Id;               
          	    recShr.UserOrGroupId ='0052w00000DNPD9AAP';                
                recShr.AccessLevel = 'read';
             //   recShr.RowCause = Schema.Students__Share.RowCause.'0052w00000DNPD9AAP';             
                 insert recShr;      
            }
}
   /*     
    Database.SaveResult[] result = Database.insert(stuShare,false);
            Integer i = 0;
            for(Database.SaveResult sr : result){
                if(!sr.isSuccess()){
                    Database.Error err = sr.getErrors()[0];
                    if(!(err.getStatusCode() ==  StatusCode.FIELD_FILTER_VALIDATION_EXCEPTION 
                         && err.getMessage().contains('Accesslevel'))){
                             trigger.newMap.get(stuShare[i].parentId).
                                 addError('Unable to grant sharing access due to' + err.getMessage());
                         }
                }
                i++;
            } */