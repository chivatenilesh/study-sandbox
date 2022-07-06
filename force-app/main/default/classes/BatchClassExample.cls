global class BatchClassExample implements Database.Batchable<sobject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        String Query = 'Select Id, Name, StageName from Opportunity';
        return Database.getQueryLocator(Query);
    }
    global void execute (Database.BatchableContext bc, List<opportunity> opplist){
        List<opportunity> oppfinal = new List<Opportunity>();
        for(opportunity opp : opplist){
            opp.name = opp.name+ '(' +opp.stagename+ ')';
            oppfinal.add(opp);
        }
        update oppfinal;
    }
    global void finish (Database.BatchableContext bc){
       
    }
}