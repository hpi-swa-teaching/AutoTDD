initialization
loadWatcherClassSelections
	self
		selectedCategoryClasses: (self findSelectedClassesForCategoriesList: self categoryClasses withSelected: self watcher watchedClasses);
		selectedTestCategoryClasses: (self findSelectedClassesForCategoriesList: self testCategoryClasses withSelected: self watcher testClasses)