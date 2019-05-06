accessing-categories
categoryClassAt: anInteger put: aBoolean

	selectedCategoryClasses := self selectedCategoryClasses
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self categoryClasses at: anInteger ifAbsent: [ ^ self ]).
	self changed: #selectedCategoryClasses