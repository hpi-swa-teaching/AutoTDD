initialize-release
initializeForCategories: categories withTestsIn: testCategories
	
	self categories: categories.
	self testCategories: testCategories.
	self localData: (TarTestAutoRunner initializeForCategories: categories withTestsIn: testCategories)