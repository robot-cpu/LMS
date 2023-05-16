public class opportunityc {
    public static list<Opportunity> getOpportunites(){
        return [Select Id, Name From Opportunity order by Owner.Name];
        
    }
}