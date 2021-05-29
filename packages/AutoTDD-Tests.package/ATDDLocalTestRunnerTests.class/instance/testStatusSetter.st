tests
testStatusSetter
	
	testrunner status: #executing.
	self assert: testrunner status equals: #executing.
	testrunner status: #unexecuted.
	self assert: watcher internalStatusMessage equals: watcher class notExecutedText