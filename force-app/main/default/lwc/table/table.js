import { LightningElement, wire } from 'lwc';
import getBooksList from '@salesforce/apex/BookController.getBooksList';
import {NavigationMixin} from 'lightning/navigation';

const columns = [
    { label: 'Book Name ', fieldName: 'Name'},
    { label: 'Book Type', fieldName: 'Book_Type__c', type: 'Text'},
    { label: 'Quantity', fieldName: 'Quantity__c', type: 'Number'},
    { label: 'Book Price', fieldName: 'Book_Price__c', type: 'Currency'},
    { label: 'Action', type:'button', typeAttributes:{ label:'view', title:'view', variant:'brand', value:'view' } }
];

export default class Table extends NavigationMixin(LightningElement) {
    //data = [];
    error;
    columns = columns;

    @wire(getBooksList)
    Books__c;

    handleRowAction(event) {
        console.log('Row values', event.detail.row);
        let id = event.target.name;
            this[NavigationMixin.Navigate]({
                type: 'standard__recordPage',
                attributes: {
                recordId: id,
                objectApiName: 'Books__c',
                actionName: 'view'
                
              }
            });
        }
      }

  /*  connectedCallback() {
        const data = generateData({ amountOfRecords: 100 });
        this.data = data;
    } */