initialization
loadWatcher
	self flag: #todo. "maybe dont call all -- depending on what is specified in watcher"
	self
		loadWatcherSpecs;
		updateCategories;
		updateTestCategories;
		loadWatcherCategorySelections;
		updateCategoryClasses;
		updateTestCategoryClasses;
		loadWatcherClassSelections