tests
testUpdateWatcherStatus
	
	testrunner updateWatcherStatus.
	self assert: testrunner status equals: #unexecuted.
	self
		assert: watcher localStatusMessage
		equals: watcher class notExecutedText