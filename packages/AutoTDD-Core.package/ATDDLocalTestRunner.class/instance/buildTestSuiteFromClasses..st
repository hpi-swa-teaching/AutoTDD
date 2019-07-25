action
buildTestSuiteFromClasses: aCollection
	
	| testSuite |
	
	testSuite := self buildEmptyTestSuite.
	aCollection
		do: [ :each |
			((each inheritsFrom: TestCase) and: [
					each isAbstract not ])
				ifTrue: [
					TestCase
						addTestsFor: each name asSymbol
						toSuite: testSuite ] ].
	
	^ testSuite