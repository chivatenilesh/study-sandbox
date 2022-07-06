public class demo {

    public list < string > GetNames(Integer NameNumbers) {
        list < string > names = new list < string > ();
        for (integer i = 1; i <= NameNumbers; i++) {
            names.add('Majesco' + i);
        }
        return names;
    }

    public string namestring(string Fname, string Lname) {
        string FullName = Fname + ' ' + Lname;
        return FullName;
        //system.debug(FullName);
    }

    public List <string> elements(integer Values) {
        List <string> V = new List < string > ();
        for (Integer i = 0; i <= Values; i++) {
            V.add('sample' + i);
        }
        return V;
    }

    public string swithcase(integer Input1) {      
        switch on Input1 {
            when 1 {
                return 'one';
            }
            when 2 {
                return 'two';
            }
            when 3 {
                return 'three';
            }
            when else {
				 return '';
            }
       }      
    }
    
    public string CheckOddEven(integer Value){
        //string a;
        integer i = math.mod(Value, 2);
        if(i==0){
            return 'even';
        }
        else{
            return 'odd';
        }
    }
    
    public List<string> RetunNames(integer NameNUMBER){
        List<string> namevalus = new List<string>();
        for(integer i=0; i<=NameNUMBER; i++){
            namevalus.add('namevalus' + i); 
    	 }
         return namevalus;
    }
    
    public void BdayCakeCandle(List<integer> candles){
        
        //List<integer> Candlevalues = new List<integer> ();
        candles.sort();
        integer MaxValue = candles[candles.size()-1];
        system.debug(MaxValue);
        integer TotalMaxCount = 0;
        for(integer i=0; i<candles.size(); i++){
            if(candles[i]==MaxValue){
                TotalMaxCount = TotalMaxCount + 1;
            }
        }
        system.debug(TotalMaxCount);
    }
  
    public void ArrayMinMax(List<integer> ArrayNumber){
        //system.debug(ArrayNumber); 
        List<integer> TotalValues = new List<integer> (); 
        for(integer i=0; i<ArrayNumber.size(); i++){
           integer sum = 0;
            for(integer j=0; j<ArrayNumber.size(); j++){
                if(i != j){
                    sum = sum + ArrayNumber[j];
                }
            }
            //system.debug(sum);
            TotalValues.add(sum);
        }
        TotalValues.sort();
       	integer min1 = TotalValues[0];
       	integer max1 = TotalValues[TotalValues.size() - 1];
        system.debug(min1+' '+max1); 
        }
    
    public void ChangeTimeFrom12To24(String s){
		string hour = s.substring(0,2);
        string min = s.substring(3,5);
        string sec = s.substring(6,8);
        string ampm = s.substring(8,10);
        system.debug(hour);
        system.debug(min);
        system.debug(sec);
        system.debug(ampm);
        Integer intVal = Integer.ValueOf(hour);
        if(ampm == 'PM'){
           intVal = intVal + 12;
        }
        system.debug(intVal+':'+min+':'+sec);   
    }
    
    public void camelCaps(string camCap){
        string CapLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        integer CapCount = 0;
        for(integer i=0; i<camCap.length(); i++){           
            integer c=camCap.charAt(i);
            if(CapLetters.indexOfChar(c)>=0){
                CapCount = CapCount +1;
            }
        }
        system.debug(CapCount + 1);
    }
}