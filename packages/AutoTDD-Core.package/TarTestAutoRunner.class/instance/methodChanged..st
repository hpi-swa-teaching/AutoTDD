test-running
methodChanged: methodChangeEvent

	| changedCategory |
	changedCategory := methodChangeEvent itemClass category.
	(self testCategories includes: changedCategory)
		ifTrue: [ self invalidateTestSuite ].
	((self categories includes: changedCategory)
		or: [self testCategories includes: changedCategory])
		ifTrue: [ self update ]