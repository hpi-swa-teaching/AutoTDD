as yet unclassified
runSuite

	| result |
	self testSuite tests ifNotEmpty: [ 
		self notifyStart.
		result := self testSuite run
			dispatchResultsIntoHistory;
			yourself.
		self
			addResult: result;
			notifyEnd.
		self testRunningSemaphore signal ]