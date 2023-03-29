import { LightningElement, wire} from 'lwc';
import getstudentsList from '@salesforce/apex/studentController.getstudentsList';


export default class student extends LightningElement {
  student=[
    { 
        label: 'Name', 
        fieldName: 'Name',
    },
    {
         label: 'Address', 
         fieldName: 'Address__c', 
         type: 'Text' 
        },
    { 
        label: 'Phone Number', 
        fieldName: 'Phone_Number__c', 
        type: 'Text' 
    },
]
    /* error;
    student = student;

    @wire(getstudentsList)
    Students__c; */
    }