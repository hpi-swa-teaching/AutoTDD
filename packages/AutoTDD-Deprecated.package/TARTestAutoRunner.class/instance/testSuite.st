accessing
testSuite

	^ testSuite ifNil: [ 
		testSuite := TARProgressTestSuite named: 'Auto TestSuite'.
		self addTestCategoriesToSuite.
		testSuite ]