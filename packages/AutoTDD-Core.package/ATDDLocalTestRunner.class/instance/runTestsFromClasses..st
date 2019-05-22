as yet unclassified
runTestsFromClasses: aClollection
	|testSuite|
	self flag: #todo.
	"remove asSet"
	testSuite := self buildTestSuiteFromClasses: aClollection asSet.
	self runTestSuite: testSuite