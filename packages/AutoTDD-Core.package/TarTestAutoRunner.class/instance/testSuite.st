accessing
testSuite

	^ testSuite ifNil: [ | suite |
		suite := TarProgressTestSuite named: 'Auto TestSuite'.
		self testCategories do: [ :testCategory |
		(Smalltalk organization listAtCategoryNamed: testCategory)
			do: [ :each | ((Smalltalk at: each) isKindOf: TestCase class)
				ifTrue: [ TestCase addTestsFor: each toSuite: suite ] ] ].
		testSuite := suite ]