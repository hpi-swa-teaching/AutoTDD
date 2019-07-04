tests
testStatusMustBeASymbol
	self should: [testrunner status: 'IBM'] raise: Error.