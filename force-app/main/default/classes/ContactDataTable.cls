public class ContactDataTable {
    
    @AuraEnabled
 	 public static List<Contact> FetchContactData(string searchkey, string name){
       
         if(searchkey == '' || searchkey == null){
         	List<Contact> conlist = [select id, name, phone, Email from contact ];
        	return conlist;
         }else{
			List<Contact> conlist = [select id, name, phone, Email from contact where name like: '%'+searchkey+'%'];
        	return conlist;
             
         }
    }
        
}