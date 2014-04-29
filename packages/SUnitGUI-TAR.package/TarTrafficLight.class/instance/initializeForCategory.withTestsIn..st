initialize-release
initializeForCategory: categoryName withTestsIn: testCategoryName 
	self listenForNotificationsAbout: categoryName withTestsIn: testCategoryName.
	self position: self class instances size * 200 \\ (World width - 200) @ (self class instances size * 200 // (World width - 200) * 90 \\ (World height - 90) + 30).
	self class instances add: self