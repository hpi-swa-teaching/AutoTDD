as yet unclassified
testCategoryAt: anInteger put: aBoolean

	selectedTestCategories := self selectedTestCategories
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self testCategories at: anInteger ifAbsent: [ ^ self ]).
	self changed: #selectedTestCategories