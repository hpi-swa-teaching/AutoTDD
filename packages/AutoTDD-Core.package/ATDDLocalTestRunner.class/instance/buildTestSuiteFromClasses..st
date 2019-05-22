as yet unclassified
buildTestSuiteFromClasses: aCollection
	|testSuite |
	
	testSuite := TestSuite new.
	aCollection do: [:each | (each inheritsFrom: TestCase) ifTrue: [
			TestCase addTestsFor: each name asSymbol toSuite: testSuite ]].
	^ testSuite