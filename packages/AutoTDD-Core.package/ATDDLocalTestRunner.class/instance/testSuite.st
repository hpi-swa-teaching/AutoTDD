accessing
testSuite
	^ testSuite ifNil: [testSuite := self buildEmptyTestSuite]