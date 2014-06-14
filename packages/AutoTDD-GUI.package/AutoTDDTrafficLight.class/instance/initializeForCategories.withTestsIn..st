initialize-release
initializeForCategories: categories withTestsIn: testCategories
	
	self
		categories: categories;
		testCategories: testCategories;
		localData: (TarTestAutoRunner
			initializeForCategories: categories
			withTestsIn: testCategories)