behavior
testClassesFromCategories
	
	| testClasses |
	
	testClasses := OrderedCollection new.
	self categoriesToTest
		do: [ :category |
			(Smalltalk organization listAtCategoryNamed: category)
				do: [ :each |
					((Smalltalk at: each) isKindOf: TestCase class)
						ifTrue: [
							testClasses add: (Smalltalk at: each) ] ] ].
	
	^ testClasses