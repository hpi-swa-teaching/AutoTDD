tests
testUpdateWatcherStatus
	testrunner updateWatcherStatus.
	self assert: testrunner status equals: #unexecuted.
	self assert: watcher localStatus equals: watcher class notExecutedText