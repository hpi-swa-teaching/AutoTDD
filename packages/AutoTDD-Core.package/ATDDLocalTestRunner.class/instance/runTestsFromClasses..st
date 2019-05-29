as yet unclassified
runTestsFromClasses: aClollection
	self flag: #todo.
	"remove asSet"
	self testSuite: (self buildTestSuiteFromClasses: aClollection asSet).
	self runTestSuite