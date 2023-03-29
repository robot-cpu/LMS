import { LightningElement, wire, track} from 'lwc';
import getbookorderforcombox from '@salesforce/apex/comboboxDatatable.getbookorderforcombox';
import getBookorderDetail from '@salesforce/apex/comboboxDatatable.getBookorderDetail';

const columns = [
    {   label: 'Order Name' , fieldName:'Name'},
    {   label: 'Book' , fieldName: 'Books__c'},
    {   label: 'student' , fieldName: 'Student__c'},
  
]
export default class Combobox extends LightningElement {
    @track value ='';
    @track optionsArray = []; //to store option for combobox
    @track cardVisible = false; 
    @track data = [];
    @track columns = columns;


    get options(){
        return this.optionsArray;

    }
    //call apex method to get order stored in salesforce
    connectedCallback(){
        getbookorderforcombox()
        .then(response=>{
            let arr = []; // store order detail
            for(var i=0; i<response.length; i++){
                arr.push({label : response[i].Name , value : response[i].Id })
            }
            this.optionsArray = arr;
        })
    }
    //get selected account recordID
    handleChangedValue(event){

        this.cardVisible = true;

        this.value = event.detail.value;
     //   window.alert( JSON.stringify(this.value));

     getBookorderDetail({selectedBookorderId: this.value})
    .then(result =>{
        this.data=result;
  })
 
 

   /*  .catch(error =>{
        window.alert( "error:" +error);
     })
    } */
}  
}