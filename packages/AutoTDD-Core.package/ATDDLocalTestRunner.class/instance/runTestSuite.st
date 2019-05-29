as yet unclassified
runTestSuite
	|process result|
	self status: #executing.
	process := [
			result := self testSuite run
				dispatchResultsIntoHistory 
				yourself.
			self addTestResult: result.
			self status: #finished
		] forkAt: Processor userBackgroundPriority.