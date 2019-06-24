test-running
listenForNotificationsAbout: categories withTestsIn: testCategories

	SystemChangeNotifier uniqueInstance
		notify: self
		ofSystemChangesOfItem: #method
		using: #methodChanged:;
		notify: self
		ofSystemChangesOfItem: #class
		using: #methodChanged:.
	self
		categories: categories;
		testCategories: testCategories