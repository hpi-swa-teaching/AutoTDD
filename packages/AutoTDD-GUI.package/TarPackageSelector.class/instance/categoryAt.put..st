as yet unclassified
categoryAt: anInteger put: aBoolean

	selectedCategories := self selectedCategories
		perform: (aBoolean ifTrue: [ #copyWith: ] ifFalse: [ #copyWithout: ])
		with: (self categories at: anInteger ifAbsent: [ ^ self ]).
	self changed: #selectedCategories