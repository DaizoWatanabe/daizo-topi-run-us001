/**
 * @author Daizo Watanabe 
 */
public with sharing class AccountTH extends TriggerHandler {

    List<Account> newAccounts;
    AccountFilter filter;
    AccountEventEnricher eventEnricher;

    public AccountTH() {
        this ( (List<Account>) Trigger.new );
    }

    public AccountTH(List<Account> newAccounts) {
        this.newAccounts = newAccounts;
        this.filter = new AccountFilter();
        this.eventEnricher = new AccountEventEnricher();
    }

    override
    public void afterInsert() {
        createEventForPremiumAccountWithAnnualRevenueOverOneMillion();
    }

    private void createEventForPremiumAccountWithAnnualRevenueOverOneMillion() {
        List<Account> accounts = this.filter.bySetCategoryAndRevenueTo(newAccounts, 'Premium', 1000000);

        this.eventEnricher.createContactEvent(accounts);
    }
}
