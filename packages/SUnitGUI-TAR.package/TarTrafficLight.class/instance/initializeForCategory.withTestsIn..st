initialize-release
initializeForCategory: categoryName withTestsIn: testCategoryName 
	
	self category: categoryName.
	self testCategory: testCategoryName.
	self localData: (TarResults initializeForCategory: categoryName withTestsIn: testCategoryName)