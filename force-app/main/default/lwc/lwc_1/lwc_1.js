import { LightningElement, wire, track } from 'lwc';
import FetchAccountData from '@salesforce/apex/AccountDataTable.FetchAccountData';

export default class LWC_1 extends LightningElement {

    @track columns = [
        { label: 'Name', fieldName: 'Name', type: 'text', sortable: true },
        { label: 'Phone', fieldName: 'Phone', type: 'text', sortable: true },
    ];

    @track error;
    @track accList;
    @track FirstName;
    @track phone;


    GetData() {
        FetchAccountData().then((data) => {
            this.accList = data;
        })
    }

    handleRowAction(event) {
        var selectedRows = event.detail.selectedRows;
        if (selectedRows.length > 0) {
            //     var el = this.template.querySelector('lightning-datatable');
            //     selectedRows=el.selectedRows=el.selectedRows.slice(1);
            //     event.preventDefault();
            this.FirstName = selectedRows[0].Name;
            this.phone = selectedRows[0].Phone;
        } else {
            this.FirstName = "";
            this.phone = "";
        }
    }
}