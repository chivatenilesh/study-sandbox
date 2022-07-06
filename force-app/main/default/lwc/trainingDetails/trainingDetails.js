import { LightningElement, api, track } from 'lwc';

export default class TrainingDetails extends LightningElement {

    @api data;
    @track Value = 0;

    handleClickPlus(event) {
        this.Value = this.Value + 1;
    }

    handleClickMinus(event) {
        this.Value = this.Value - 1;
    }

    changeHandler(event) {
        debugger;
        this.Value = parseInt(event.target.value);
    }

    @api
    ResetData(event) {
        this.Value = 0;
    }

}