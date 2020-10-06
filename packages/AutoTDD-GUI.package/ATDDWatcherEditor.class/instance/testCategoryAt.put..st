accessing-categories
testCategoryAt: anInteger put: aBoolean
	
	self
		selectedTestCategories: (self selectedTestCategories
			perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
			with: (self testCategories at: anInteger ifAbsent: [ ^ self ])).
	self changed: #selectedTestCategories