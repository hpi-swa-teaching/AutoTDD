accessing-categories
testCategoryClassAt: anInteger put: aBoolean

	selectedTestCategoryClasses := self selectedTestCategoryClasses
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self testCategoryClasses at: anInteger ifAbsent: [ ^ self ]).
	self changed: #selectedTestCategoryClasses