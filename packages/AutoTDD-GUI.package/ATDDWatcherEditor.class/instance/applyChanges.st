action
applyChanges
	
	super applyChanges.
	
	self watcher
		isWatchingClasswise: self classwiseCategorySelection;
		isTestingClasswise: self classwiseTestCategorySelection;
		classesToWatch: self selectedCategoryClasses;
		classesToTest: self selectedTestCategoryClasses;
		categoriesToWatch: self selectedCategories;
		categoriesToTest: self selectedTestCategories;
		yourself.
		
	self watcher resume