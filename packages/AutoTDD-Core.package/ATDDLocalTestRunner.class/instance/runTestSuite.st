as yet unclassified
runTestSuite
	|process result|
	self updateWatcherStatus: self testSuite valueHolder.
	process := [
			result := self testSuite run
			dispatchResultsIntoHistory 
			yourself.
 			self testResult: result.
		] forkAt: Processor userBackgroundPriority.