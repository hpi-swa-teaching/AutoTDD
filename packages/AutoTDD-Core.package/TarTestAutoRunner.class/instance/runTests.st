test-running
runTests
	
	| result |
	self testRunningSemaphore initSignals.
	self process: [ self testSuite tests ifNotEmpty: [ 
		self notifyStart.
		result := self testSuite run.
		self
			notifyEnd;
			addResult: result.
		result dispatchResultsIntoHistory.
		self testRunningSemaphore signal ] ] fork