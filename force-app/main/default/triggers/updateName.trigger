Trigger updateName on Account (before update){  
for(account acc:trigger.new){
   if(acc.phone!= trigger.oldMap.get(acc.id).phone){           
      acc.name = acc.name +'  '+(acc.phone);
      }
   }
}