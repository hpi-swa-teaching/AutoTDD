initialization
loadTarget
	super loadTarget.
	self
		updateCategories;
		updateTestCategories;
		loadWatcherCategorySelections;
		updateCategoryClasses;
		updateTestCategoryClasses;
		loadWatcherClassSelections