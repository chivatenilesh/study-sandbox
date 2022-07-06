trigger SampleTrigger on Account (before insert) {
    system.debug('Hello User!');
}