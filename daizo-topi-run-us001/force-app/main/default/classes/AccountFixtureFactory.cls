/**
 * @author Daizo Watanabe 
 */
@isTest
public class AccountFixtureFactory {

    public static Account createAccount(String name, String category, Decimal annualRevenue) {
        return createAccount(newAccount(name, category, annualRevenue));
    }

    public static Account newAccount(String name, String category, Decimal annualRevenue) {
        return new Account (Name = name, Category__c = category, AnnualRevenue = annualRevenue);
    }
    
    public static Account createAccount(Account account) {
        insert account;
        return account;
    }
}
