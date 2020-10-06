tests
testStatusConsistency
	
	self assert: testrunner status isNil.
	testrunner status: #unexecuted.
	self assert: testrunner status = #unexecuted