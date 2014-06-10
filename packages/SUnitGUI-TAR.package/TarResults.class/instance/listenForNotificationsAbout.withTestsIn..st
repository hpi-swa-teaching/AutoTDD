as yet unclassified
listenForNotificationsAbout: categoryName withTestsIn: testCategoryName

	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfItem: #method
		using: #methodChanged:.
	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfItem: #class
		using: #methodChanged:.
	self category: categoryName.
	self testCategory: testCategoryName