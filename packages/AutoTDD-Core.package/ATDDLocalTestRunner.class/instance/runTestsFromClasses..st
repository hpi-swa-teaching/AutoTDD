as yet unclassified
runTestsFromClasses: aClollection
	self testSuite: (self buildTestSuiteFromClasses: aClollection).
	self runTestSuite