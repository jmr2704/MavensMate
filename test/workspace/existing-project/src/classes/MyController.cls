global with sharing class MyController {
	
	public MyController() {
		String foo = 'bar';
		system.debug('this is a debug!');
	}
	
	public InfiniteScrollResponse getInfiniteScrollResponse() {        
		return InfiniteScroll.getInfiniteScrollResponse(1, false);
	}
	
	@RemoteAction
    global static InfiniteScrollResponse getMore(Integer currentPageNumber) {    	    	
    	return InfiniteScroll.getInfiniteScrollResponse(currentPageNumber, true);    	
    }
    
}