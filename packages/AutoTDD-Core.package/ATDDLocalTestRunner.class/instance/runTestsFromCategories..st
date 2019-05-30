as yet unclassified
runTestsFromCategories: aClollection
	self testSuite: (self buildTestSuiteFromCategories: aClollection).
	self runTestSuite