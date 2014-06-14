as yet unclassified
runTests
	
	| result |
	self testRunningSemaphore initSignals.
	self process: [ self testSuite tests
			ifNotEmpty: [ 
		self notifyStart.
		result := self testSuite run.
		self notifyEnd.
		self addResult: result.
		result dispatchResultsIntoHistory.
		self testRunningSemaphore signal.
		self notify ] ] fork