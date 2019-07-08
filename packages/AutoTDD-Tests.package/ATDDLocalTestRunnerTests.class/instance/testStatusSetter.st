tests
testStatusSetter
	testrunner status: #executing.
	self assert: testrunner status equals: #executing.
	testrunner status: #unexecuted.
	self assert: watcher localStatusBlock equals: watcher class notExecutedText