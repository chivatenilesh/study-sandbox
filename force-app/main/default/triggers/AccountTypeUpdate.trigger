trigger AccountTypeUpdate on Account (Before update) {
For(Account acc : Trigger.new){
Acc.type = 'Business Partner';
}
}