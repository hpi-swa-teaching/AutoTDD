initialize-release
initializeForCategories: categories withTestsIn: testCategories
	
	self listenForNotificationsAbout: categories withTestsIn: testCategories.
	self class instances add: self