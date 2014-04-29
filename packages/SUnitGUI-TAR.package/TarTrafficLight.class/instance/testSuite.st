accessing
testSuite
	^ testSuite
		ifNil: [ testSuite := ProgressTestSuite named: 'Auto TestSuite'.
			(Smalltalk organization listAtCategoryNamed: self testCategory)
				do: [ :each | (Smalltalk at: each) isTestCaseClass
						ifTrue: [ TestCase addTestsFor: each toSuite: testSuite ] ].
			testSuite yourself ]