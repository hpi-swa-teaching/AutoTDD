event handling
methodChanged: methodChangeEvent 
	| changedCategory |
	changedCategory := methodChangeEvent itemClass category.
	changedCategory = self testCategory
		ifTrue: [ self invalidateTestSuite ].
	(changedCategory = self category or: changedCategory = self testCategory)
		ifTrue: [ self categoryChanged ]