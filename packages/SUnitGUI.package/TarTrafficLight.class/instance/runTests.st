utility
runTests
	| result |
	self testRunningSemaphore initSignals.
	self process: [ self testSuite tests
			ifNotEmpty: [ 
		self progressBar value: self testSuite valueHolder.
		result := self testSuite run.
		self createTrafficLightResultFor: result.
		result dispatchResultsIntoHistory.
		self testRunningSemaphore signal ] ] fork