initialization
initializeForCategories: categories withTestsIn: testCategories
	
	self
		categories: categories;
		testCategories: testCategories;
		data: (TarTestAutoRunner
			initializeForCategories: categories
			withTestsIn: testCategories)