as yet unclassified
initializeForCategory: categoryName withTestsIn: testCategoryName 
	
	self listenForNotificationsAbout: categoryName withTestsIn: testCategoryName.
	self class instances add: self