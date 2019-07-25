test-running
methodChanged: methodChangeEvent
	
	| changedCategory |
	
	changedCategory := methodChangeEvent itemClass category.
	(self isInTestCategories: changedCategory)
		ifTrue: [ self invalidateTestSuite ].
	(self isInListenedCategories: changedCategory) ifTrue: [ self update ]