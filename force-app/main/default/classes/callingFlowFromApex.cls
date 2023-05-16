public class callingFlowFromApex {
    public static void populateBook(){
        Map<String, object> params = new Map<string, object>();
params.put('recordId','a052w00000G6Ny2AAF');
FLow.Interview.call_autolaunch_from_apex fetchBook = new 
    Flow.Interview.call_autolaunch_from_apex(params);

fetchBook.start();
String returnValue = (String) fetchBook.getvariableValue('BookPrice');
system.debug('Flow returned '+returnValue);
    }
}