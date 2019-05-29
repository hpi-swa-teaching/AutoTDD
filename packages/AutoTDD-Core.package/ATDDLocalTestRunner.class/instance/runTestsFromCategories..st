as yet unclassified
runTestsFromCategories: aClollection
	self flag: #todo.
	"remove asSet"
	self testSuite: (self buildTestSuiteFromCategories: aClollection asSet).
	self runTestSuite