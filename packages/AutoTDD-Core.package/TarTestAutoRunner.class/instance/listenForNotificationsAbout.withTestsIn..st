test-running
listenForNotificationsAbout: categories withTestsIn: testCategories

	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfItem: #method
		using: #methodChanged:.
	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfItem: #class
		using: #methodChanged:.
	self categories: categories.
	self testCategories: testCategories