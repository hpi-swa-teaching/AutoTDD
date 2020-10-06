tests
testHistoryFilling
	
	self assert: resultsWindow history isEmpty.
	watcher run.
	(Delay forSeconds: 1) wait.
	self assert: resultsWindow history size = 1.
	watcher run.
	(Delay forSeconds: 1) wait.
	self assert: resultsWindow history size = 2