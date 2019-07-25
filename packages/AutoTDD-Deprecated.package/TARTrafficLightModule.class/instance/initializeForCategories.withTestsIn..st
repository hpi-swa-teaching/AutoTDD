initialization
initializeForCategories: categories withTestsIn: testCategories
	
	self
		categories: categories;
		testCategories: testCategories;
		data: (TARTestAutoRunner
				initializeForCategories: categories
				withTestsIn: testCategories)