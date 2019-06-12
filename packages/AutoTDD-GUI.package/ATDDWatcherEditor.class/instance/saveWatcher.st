action
saveWatcher
	self flag: #todo. "add configuration of local/travis testing"
	watcherName changed: #acceptChanges.
	self watcher
		name: self watcherName;
		isWatchingClasswise: self classwiseCategorySelection;
		isTestingClasswise: self classwiseTestCategorySelection;
		classesToWatch: self selectedCategoryClasses;
		classesToTest: self selectedTestCategoryClasses;
		categoriesToWatch: self selectedCategories;
		categoriesToTest: self selectedTestCategories.
	self closeWindow.
	self watcher resume.
	^self watcher