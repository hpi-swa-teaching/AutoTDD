accessing
selectedCategories

	^ selectedCategories ifNil: [ selectedCategories := OrderedCollection new ]