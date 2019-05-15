utilities
findClassesForCategories: aCollection
"copyyyied from Test runner"
	| environment items |
	aCollection isEmpty 
		ifTrue: [ ^Set new ].
	environment := self environment.
	items := aCollection gather: [ :category |
		((environment organization listAtCategoryNamed: category)
			collect: [ :each | environment valueOf: each ])
			select: [ :each | each includesBehavior: self baseClass ] ].
	^ items asSet.