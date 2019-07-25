accessing
selectedTestCategories: anObject
	
	selectedTestCategories := anObject.
	self
		changed: #selectedTestCategories;
		updateTestCategoryClasses