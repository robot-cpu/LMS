import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';


export default class Button extends NavigationMixin(LightningElement) {
    navigatetobook(){
        this[NavigationMixin.Navigate]({
            type: 'standard__navItemPage',
            attributes:{
                
            }
        })
    }
}