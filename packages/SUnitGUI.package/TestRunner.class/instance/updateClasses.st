updating
updateClasses
	| classesForCategories |
	classesForCategories := self findClassesForCategories: categoriesSelected.
	classes := classesForCategories asArray
		sort: [ :a :b | self sortClass: a before: b ].
	classIndex := 0.
	classesSelected := classesSelected isNil
		ifTrue: [ classesForCategories ]
		ifFalse: [ 
			classesSelected
				select: [ :each | classesForCategories includes: each ] ].
	self changed: #classList; changed: #classSelected; changed: #hasRunnable.