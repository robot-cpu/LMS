import { LightningElement } from 'lwc';

export default class BookCardList extends LightningElement {
    
  searchWords = '';
  
    handleSearch(event){
        this.searchWords = event.target.value;
        this.template.querySelector('c-bookcard-child').loadBooks(this.searchWords);
    }
  }