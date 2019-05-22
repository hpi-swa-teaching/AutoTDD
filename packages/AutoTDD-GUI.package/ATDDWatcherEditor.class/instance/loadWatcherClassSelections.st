initialization
loadWatcherClassSelections
	self
		selectedCategoryClasses: (self findSelectedItemsForUpdatedCollection: self categoryClasses withSelected: self watcher watchedClasses);
		selectedTestCategoryClasses: (self findSelectedItemsForUpdatedCollection: self testCategoryClasses withSelected: self watcher testClasses)