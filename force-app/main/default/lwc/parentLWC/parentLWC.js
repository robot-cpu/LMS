import { LightningElement } from 'lwc';

export default class ParentLWC extends LightningElement {
    countvalue = 0;

    handledecrement(){
        this.countvalue--;
    }
    handleincrement(){
        this.countvalue++;
    }

}