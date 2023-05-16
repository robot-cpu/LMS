import { LightningElement, api} from 'lwc';
import getbooks from '@salesforce/apex/bookClass.getbooks';
import { NavigationMixin } from 'lightning/navigation';

export default class BookCardLChild extends  NavigationMixin(LightningElement) {
        
    books;
    error;
    isSearchNotAvailable=false;
    searchWords = '';
    
    connectedCallback(){
    this.loadBooks(this.searchWords);
    }
    /*onchange (searchwords){
        this.loadBooks();
    }*/
    @api loadBooks(searchWords){
        getbooks({searchKey: searchWords })
        .then(result =>{
            this.books = result;
            console.log("this.books:"+JSON.stringify(this.books))
            if(this.books.length > 0){
                this.isSearchNotAvailable=false;
            }else{
                this.isSearchNotAvailable=true;
            }
        })
        .catch(error =>{
            this.isSearchNotAvailable=false;
            this.error = error;
        })
    } 
    handleCardClick(event) {
        var recordId = event.target.value;
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: recordId,
                actionName: 'view'
            }
        });
    } 

}