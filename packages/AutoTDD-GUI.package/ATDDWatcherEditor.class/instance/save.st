action
save
	
	super save.
	self watcher
		name: self targetName;
		isWatchingClasswise: self classwiseCategorySelection;
		isTestingClasswise: self classwiseTestCategorySelection;
		classesToWatch: self selectedCategoryClasses;
		classesToTest: self selectedTestCategoryClasses;
		categoriesToWatch: self selectedCategories;
		categoriesToTest: self selectedTestCategories.
	self closeWindow.
	self watcher resume.
	
	^ self watcher