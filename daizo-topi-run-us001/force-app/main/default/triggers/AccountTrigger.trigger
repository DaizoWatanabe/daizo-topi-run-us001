trigger AccountTrigger on Account (after insert) {

    new AccountTH().run();
}