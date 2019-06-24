initialization
loadTarget
	super loadTarget.
	self flag: #todo. "maybe dont call all -- depending on what is specified in watcher"
	self
		updateCategories;
		updateTestCategories;
		loadWatcherCategorySelections;
		updateCategoryClasses;
		updateTestCategoryClasses;
		loadWatcherClassSelections