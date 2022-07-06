public class BookTriggerHandler {
    
    public void discountUpdate(List<Books__c> booklist){
    
        for(Books__c B : booklist){
        if(B.Price__c != 0 && B.Price__c != null){
           B.Price__c = (B.Price__c-(B.Price__c*0.1)) ;
           system.debug('Trigger field' +B.Price__c);  
        }
    	}
    }
            
	public void PreventFromDelete(List<Books__c> booklist){
        for(Books__c B : booklist){   
       	B.adderror('You cannot delete records'); 
        }
    }
}