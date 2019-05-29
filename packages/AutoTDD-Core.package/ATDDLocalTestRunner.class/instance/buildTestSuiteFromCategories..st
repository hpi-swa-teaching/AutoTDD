as yet unclassified
buildTestSuiteFromCategories: aCollection
	|testSuite |
	testSuite := TARProgressTestSuite new.
	aCollection do: [ :category |
			(Smalltalk organization listAtCategoryNamed: category) do: [ :each |
				((Smalltalk at: each) isKindOf: TestCase class)
					ifTrue: [ TestCase addTestsFor: each toSuite: testSuite ] ] ].
	^testSuite.