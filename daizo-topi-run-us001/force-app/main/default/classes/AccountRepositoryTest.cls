/**
 * @author Daizo Watanabe 
 */
@isTest
public  class AccountRepositoryTest {

    @isTest
    static void givenAccountWithCategoryAndAnnualRevenueWhenCreateThenReturnStoredAccount () {

        Account account = AccountFixtureFactory.newAccount('Teste Daizo', 'Premium', 1200000);

        AccountRepository repository = new AccountRepository();

        Test.startTest();

        Account storedAccount = repository.create(account);

        test.stopTest();

        System.assertEquals(account.Name , storedAccount.Name);
        System.assertEquals(account.Category__c, storedAccount.Category__c);
        System.assertEquals(account.AnnualRevenue, storedAccount.AnnualRevenue);
        System.assert(storedAccount.Id != null);
        System.assertEquals(account.Id , storedAccount.Id);
        

    }

    @isTest
    static void givenAccountsWithCategoryAndAnnualRevenueWhenCreateThenReturnStoredAccounts() {

        List<Account> accounts = new List<Account>();

        accounts.add(AccountFixtureFactory.newAccount('Teste Daizo', 'Premium', 1200000));

        AccountRepository repository = new AccountRepository();

        Test.startTest();

        List<Account> storedAccounts = repository.create(accounts);

        test.stopTest();

        System.assertEquals(accounts.get(0).Name , storedAccounts.get(0).Name);
        System.assertEquals(accounts.get(0).Category__c, storedAccounts.get(0).Category__c);
        System.assertEquals(accounts.get(0).AnnualRevenue, storedAccounts.get(0).AnnualRevenue);
        System.assert(storedAccounts.get(0).Id != null);
        System.assertEquals(accounts.get(0).Id , storedAccounts.get(0).Id);
    }

}
