initialize-release
initializeForCategories: categories withTestsIn: testCategories
	
	self categories: categories.
	self testCategories: testCategories.
	self localData: (TarResults initializeForCategories: categories withTestsIn: testCategories)