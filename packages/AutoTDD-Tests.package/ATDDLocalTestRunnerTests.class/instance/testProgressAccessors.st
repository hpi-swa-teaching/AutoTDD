tests
testProgressAccessors
	testrunner progress: (ValueHolder new contents: 0.1).
	self assert: testrunner progress contents equals: 0.1