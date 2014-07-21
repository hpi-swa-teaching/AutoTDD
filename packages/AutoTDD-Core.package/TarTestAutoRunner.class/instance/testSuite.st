accessing
testSuite

	^ testSuite ifNil: [ 
		testSuite := TarProgressTestSuite named: 'Auto TestSuite'.
		self addTestCategoriesToSuite.
		testSuite ]