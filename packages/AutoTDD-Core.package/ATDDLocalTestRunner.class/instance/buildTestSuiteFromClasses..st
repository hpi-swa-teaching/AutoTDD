as yet unclassified
buildTestSuiteFromClasses: aCollection
	|testSuite |
	testSuite := self buildEmptyTestSuite.
	aCollection do: [:each | (each inheritsFrom: TestCase) ifTrue: [
			TestCase addTestsFor: each name asSymbol toSuite: testSuite ]].
	^ testSuite