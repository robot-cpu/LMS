import { LightningElement, wire } from 'lwc';
import getBookorderList from '@salesforce/apex/bookorder.getBookorderList';

const columns= [
    { label: 'Book', fieldName: 'Books__c' },
    { label: 'price', fieldName: 'Price__c' },
    
];
export default class Studenttable extends LightningElement {
    error;
    columns = columns;

    @wire(getBookorderList)
    Books_Order__c;
}