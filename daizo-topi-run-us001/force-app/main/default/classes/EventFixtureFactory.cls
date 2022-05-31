/**
 * @author Daizo Watanabe 
 */
@isTest
public class EventFixtureFactory {

    public static Event createEvent (String subject
                                    , String description
                                    , Datetime startDateTime
                                    , Datetime endDateTime
                                    , Account account
                                    , String contactType) {
        return createEvent(newEvent(subject, description, startDateTime, endDateTime, account, contactType));
    }

    public static Event newEvent(String subject
                                , String description
                                , Datetime startDateTime
                                , Datetime endDateTime
                                , Account account
                                , String contactType) {
        
        return new Event (Subject = subject
                        , Description = description
                        , StartDateTime = startDateTime
                        , EndDateTime = endDateTime
                        , WhatId = account.Id
                        , ContactType__c = contactType );
    }
                                    
    
    public static Event createEvent (Event event) {

        insert event;
        return event;
    }
}
