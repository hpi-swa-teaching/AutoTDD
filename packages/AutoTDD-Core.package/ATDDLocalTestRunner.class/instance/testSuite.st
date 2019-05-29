accessing
testSuite
	self flag: #todo.
	^ testSuite ifNil: [testSuite := self buildEmptyTestSuite]