tests
testShouldSimplifyLog

	resultsWindow shouldSimplifyLog: false.
	self assert: resultsWindow shouldSimplifyLog = false. 
	resultsWindow shouldSimplifyLog: true