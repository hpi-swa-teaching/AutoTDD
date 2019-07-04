tests
testRunButton

	self assert: (resultsWindow history size = 0).
	
 	resultsWindow buttonAction.
	(Delay forSeconds: 1) wait.
	
	self assert: (resultsWindow history size = 1)