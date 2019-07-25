accessing
selectedCategories: aCategoryCollection
	
	selectedCategories := aCategoryCollection.
	self
		changed: #selectedCategories;
		updateCategoryClasses