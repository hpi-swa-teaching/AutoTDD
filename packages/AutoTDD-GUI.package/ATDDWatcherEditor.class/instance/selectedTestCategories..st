accessing
selectedTestCategories: aCategoryCollection
	
	selectedTestCategories := aCategoryCollection.
	self
		changed: #selectedTestCategories;
		updateTestCategoryClasses