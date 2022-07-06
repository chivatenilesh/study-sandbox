Trigger casetrigger On Case (before insert) {
For(Case cs : Trigger.new){
    if (cs.Origin == 'Email'){
        cs.status = 'Working';
        cs.Priority = 'Low';
        }
   }

}