/**
 * @author Daizo Watanabe 
 */
public with sharing class AccountFilter {

	public List<Account> bySetCategoryAndRevenueTo(List<Account> newAccounts
													, String targetCategory
													, Decimal annualRevenue) {
		return byCategory(byAnnualRevenue(newAccounts, annualRevenue), targetCategory);
	}
    

    public List<Account> byCategory(List<Account> accounts, String targetCategory) {

        List<Account> filteredAccounts = new List<Account>();

		for (Account account : accounts) {

			if (account.Category__c == targetCategory) {
				filteredAccounts.add(account);
			}

		}
		return filteredAccounts;	
	}

	public List<Account> byAnnualRevenue(List<Account> accounts, Decimal annualRevenue) {

		List<Account> filteredAccounts = new List<Account>();

		for (Account account : accounts) {

			if (account.AnnualRevenue >= annualRevenue) {
				filteredAccounts.add(account);
			}
		}
		return filteredAccounts;
	}
}

