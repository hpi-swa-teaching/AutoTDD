initialization
loadWatcherCategorySelections
	self
		selectedCategories: (self findSelectedItemsForUpdatedCollection: self categories withSelected: self watcher watchedPackages);
		selectedTestCategories: (self findSelectedItemsForUpdatedCollection: self testCategories withSelected: self watcher categoriesToTest)