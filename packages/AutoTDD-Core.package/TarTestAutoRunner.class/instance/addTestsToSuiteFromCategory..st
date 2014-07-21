as yet unclassified
addTestsToSuiteFromCategory: aCategory

	(Smalltalk organization listAtCategoryNamed: aCategory) do: [ :each |
		((Smalltalk at: each) isKindOf: TestCase class)
			ifTrue: [ TestCase addTestsFor: each toSuite: self testSuite ] ]