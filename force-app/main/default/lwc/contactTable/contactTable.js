import { LightningElement, api, track, wire } from 'lwc';
import FetchAccountData from '@salesforce/apex/AccountDataTable.FetchAccountData';

export default class ContactTable extends LightningElement {

    @track accList;
    @track columns;
    @track FirstName;
    @track phone;

    constructor() {
        super();
        this.columns = [
            { label: 'Name', fieldName: 'Name', type: 'text', sortable: true },
            { label: 'Phone', fieldName: 'Phone', type: 'text', sortable: true },
        ];
    }

    @api
    GetData() {
        FetchAccountData().then((data) => {
            this.accList = data;
        })
    }

    handleRowAction(event) {
        var selectedRows = event.detail.selectedRows;

        if (selectedRows.length > 0) {
            this.FirstName = selectedRows[0].Name;
            this.phone = selectedRows[0].Phone;
        } else {
            this.FirstName = "";
            this.phone = "";
        }

        const selectedEvent = new CustomEvent("progressvaluechange", {
            detail: {
                FirstName: this.FirstName,
                Phone: this.phone
            }
        });

        // Dispatches the event.
        this.dispatchEvent(selectedEvent);
    }
}