public virtual class EventRepository {
    
    virtual
    public List<Event> create (List<Event> events) {
        insert events;
        return events;
    }

    virtual
    public Event create (Event event) {
        insert event;
        return event;
    }
}
