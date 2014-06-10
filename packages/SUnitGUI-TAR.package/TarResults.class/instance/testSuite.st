accessing
testSuite

	^ testSuite
		ifNil: [ testSuite := ProgressTestSuite named: 'Auto TestSuite'.
			(Smalltalk organization listAtCategoryNamed: self testCategory)
				do: [ :each | ((Smalltalk at: each) isKindOf: TestCase class)
						ifTrue: [ TestCase addTestsFor: each toSuite: testSuite ] ].
			testSuite yourself ]