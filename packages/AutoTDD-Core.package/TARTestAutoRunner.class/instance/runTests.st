test-running
runTests
	
	self testRunningSemaphore initSignals.
	self process: [ self runSuite ] fork