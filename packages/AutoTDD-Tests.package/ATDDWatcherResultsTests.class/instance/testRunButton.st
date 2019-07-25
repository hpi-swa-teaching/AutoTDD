tests
testRunButton
	
	self assert: resultsWindow history isEmpty.
	resultsWindow buttonAction.
	(Delay forSeconds: 1) wait.
	self assert: resultsWindow history size = 1