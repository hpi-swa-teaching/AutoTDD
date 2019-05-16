action
saveWatcher
	self watcher
		watchClasses: self classwiseCategorySelection;
		runTestClasses: self classwiseTestCategorySelection;
		watchedClasses: self selectedCategoryClasses;
		testClasses: self selectedTestCategoryClasses;
		watchedPackages: self selectedCategories;
		testPackages: self selectedTestCategories.
	self closeWindow
	