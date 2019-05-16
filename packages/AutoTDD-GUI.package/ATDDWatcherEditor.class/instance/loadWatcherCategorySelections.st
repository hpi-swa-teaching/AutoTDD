initialization
loadWatcherCategorySelections
	self
		selectedCategories: (self findSelectedClassesForCategoriesList: self categories withSelected: self watcher watchedPackages);
		selectedTestCategories: (self findSelectedClassesForCategoriesList: self testCategories withSelected: self watcher testPackages)