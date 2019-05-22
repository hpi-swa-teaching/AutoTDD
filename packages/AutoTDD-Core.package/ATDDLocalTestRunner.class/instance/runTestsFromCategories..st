as yet unclassified
runTestsFromCategories: aClollection
	|testSuite|
	self flag: #todo.
	"remove asSet"
	
	testSuite := self buildTestSuiteFromCategories: aClollection asSet.
	self runTestSuite: testSuite