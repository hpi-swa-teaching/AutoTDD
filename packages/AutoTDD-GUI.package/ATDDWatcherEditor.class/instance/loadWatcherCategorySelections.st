initialization
loadWatcherCategorySelections
	
	self
		selectedCategories: (self findSelectedItemsForUpdatedCollection: self categories withSelected: self watcher categoriesToWatch);
		selectedTestCategories: (self findSelectedItemsForUpdatedCollection: self testCategories withSelected: self watcher categoriesToTest)