import { LightningElement, track } from 'lwc';

export default class Training extends LightningElement {

    //@track Value;
    @track trainings = [{
        name: 'Angular',
        id: 1
    }, {
        name: 'SF',
        id: 2
    }, {
        name: 'LWC',
        id: 3
    }]

    ResetData(event) {
        var childs = this.template.querySelectorAll('c-training-details');
        childs.forEach(element => {
            element.ResetData();
            //element.Value = 0;
        });
    }
}