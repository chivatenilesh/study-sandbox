trigger SampleTriggerOnAccount on Account (before insert) {
    
    SampleTriggeronAccountHandler handler = new SampleTriggeronAccountHandler();
    handler.printHello(Trigger.new) ;
//  system.debug('Hello User!');
}