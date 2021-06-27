utility
findClassesForCategories: aCollection
	
	| environment items |
	
	aCollection isEmpty ifTrue: "copied from Test runner"
	[ ^ Set new ].
	environment := self environment.
	items := aCollection
		gather: [ :category |
			((environment organization listAtCategoryNamed: category) collect: [ :each | environment valueOf: each ])
				select: [ :each | each includesBehavior: self baseClass ] ].
	
	^ items asSet