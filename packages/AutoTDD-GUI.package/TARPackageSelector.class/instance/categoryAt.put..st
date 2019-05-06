accessing-categories
categoryAt: anInteger put: aBoolean

	self selectedCategories: (self selectedCategories
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self categories at: anInteger ifAbsent: [ ^ self ])).
	self changed: #selectedCategories