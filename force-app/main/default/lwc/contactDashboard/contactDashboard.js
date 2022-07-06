import FirstName from '@salesforce/schema/Contact.FirstName';
import { LightningElement, api, track, wire } from 'lwc';

export default class ContactDashboard extends LightningElement {

    @track data;

    GetData() {
        this.template.querySelector('c-contact-table').GetData();
    }

    hanldeProgressValueChange(event) {
        this.data = event.detail;
    }

}