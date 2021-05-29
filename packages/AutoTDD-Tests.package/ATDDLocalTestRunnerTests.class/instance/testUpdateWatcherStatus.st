tests
testUpdateWatcherStatus
	
	testrunner updateWatcherStatus.
	self assert: testrunner status equals: #unexecuted.
	self assert: watcher internalStatusMessage equals: watcher class notExecutedText