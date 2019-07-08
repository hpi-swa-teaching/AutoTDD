tests
testUpdateWatcherStatus
	testrunner updateWatcherStatus.
	self assert: testrunner status equals: #unexecuted.
	self assert: watcher localStatusBlock equals: watcher class notExecutedText