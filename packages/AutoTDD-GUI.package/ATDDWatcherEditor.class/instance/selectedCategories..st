accessing
selectedCategories: anObject
	
	selectedCategories := anObject.
	self
		changed: #selectedCategories;
		updateCategoryClasses