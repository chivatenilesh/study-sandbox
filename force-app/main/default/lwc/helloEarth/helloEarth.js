import { LightningElement, api, wire, track } from 'lwc';
import FetchAccountData from '@salesforce/apex/AccountDataTable.FetchAccountData';

export default class HelloEarth extends LightningElement {

    @track columns = [{
        label: 'Name',
        fieldName: 'Name',
        type: 'text',
        sortable: true
    },
    {
        label: 'Phone',
        fieldName: 'Phone',
        type: 'text',
        sortable: true
    }
    ];

    @track error;
    @track accList;
    @wire(FetchAccountData)
    wiredAccounts({
        error,
        data
    }) {
        if (data) {
            this.accList = data;
        } else if (error) {
            this.error = error;
        }
    }
}