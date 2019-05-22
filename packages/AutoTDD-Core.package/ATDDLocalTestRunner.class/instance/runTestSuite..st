as yet unclassified
runTestSuite: aTestSuite
	|process result|
	process := [
			result := aTestSuite run
			dispatchResultsIntoHistory 
			yourself.
 			self testResult: result.
		] forkAt: Processor userBackgroundPriority.