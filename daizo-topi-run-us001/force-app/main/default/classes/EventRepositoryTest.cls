/**
 * @author Daizo Watanabe 
 */
@isTest
public  class EventRepositoryTest {
    
    @isTest
    static void givenEventWhenCreateThenReturnStoredEvent () {
        
        Account account = AccountFixtureFactory.createAccount('daizo premium', 'Premium', 1200000);

        Event event = EventFixtureFactory.newEvent('testsub', 'testdesc', Datetime.now(), Datetime.now(), account, 'telefonico');

        EventRepository repository = new EventRepository();

        Test.startTest();

        Event storedEvent = repository.create(event);

        Test.stopTest();

        System.assertEquals(event.Subject , storedEvent.Subject);
        // System.assertEquals(account.Category__c, storedAccount.Category__c);
        // System.assertEquals(account.AnnualRevenue, storedAccount.AnnualRevenue);
        // System.assert(storedAccount.Id != null);
        // System.assertEquals(account.Id , storedAccount.Id);
    }
}
