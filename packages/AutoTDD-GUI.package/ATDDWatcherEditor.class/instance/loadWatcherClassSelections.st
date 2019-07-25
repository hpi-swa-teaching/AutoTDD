initialization
loadWatcherClassSelections
	
	self
		selectedCategoryClasses: (self
				findSelectedItemsForUpdatedCollection: self categoryClasses
				withSelected: self watcher classesToWatch);
		selectedTestCategoryClasses: (self
				findSelectedItemsForUpdatedCollection: self testCategoryClasses
				withSelected: self watcher classesToTest)