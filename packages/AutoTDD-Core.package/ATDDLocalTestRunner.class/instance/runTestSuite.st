as yet unclassified
runTestSuite
	|process result|
	self progress: self testSuite valueHolder.
	self status: #executing.
	process := [
			result := self testSuite run
				dispatchResultsIntoHistory 
				yourself.
			self addTestResult: result.
			self status: #finished
		] forkAt: Processor userBackgroundPriority.