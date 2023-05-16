trigger orderApexSharingN on Students__c (after insert, after update) {
//    if(trigger.isInsert || trigger.isAfter){  
        studentsSharing.manualShare();
    }
 //   }