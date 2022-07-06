trigger ToAvoidDuplicancy on Account (before insert, before update) {
for (Account acc : Trigger.new){
    list <Account> AccDup = [Select Id from Account where Phone =: acc.Phone and Name =: acc.Name];
        if(AccDup.size()>0){
        acc.name.adderror('Duplicate record found');
        }
   }
}