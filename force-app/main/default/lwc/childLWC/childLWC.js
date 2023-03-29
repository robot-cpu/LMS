import { LightningElement } from 'lwc';

export default class ChildLWC extends LightningElement {
    handleSubtract(){
        this.dispatchEvent(new CustomEvent('substract'));
    }
    handleadd(){
        this.dispatchEvent(new CustomEvent('add'));
    }
}