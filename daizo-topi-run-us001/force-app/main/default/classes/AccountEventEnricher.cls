public with sharing class AccountEventEnricher {
    
    EventRepository repository;

    public AccountEventEnricher() {
        this.repository = new EventRepository();
    }

    public List<Event> createContactEvent (List<Account> accounts) {
        
        List<Event> events = new List<Event>();

        for (Account account : accounts) {
            events.add(buildEvent(account));
        }

        return repository.create(events);
    }

    private Event buildEvent (Account account) {
        return new Event(	Subject = 'Apresentação institucional dos produtos Premium'
                            , Description = 'Apresentar o portifólio de Produtos para o novo cliente com enfoque em nossa carteira Premium'
                            , StartDateTime = Datetime.now().addDays(1)
                            , EndDateTime = Datetime.now().addDays(1).addHours(1)
                            , WhatId = account.Id
                            , ContactType__c = 'Telefonico' );
    }
}
