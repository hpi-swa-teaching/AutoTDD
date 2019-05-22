initialization
loadWatcherSpecs
	self
		classwiseCategorySelection: self watcher watchClasses;
		classwiseTestCategorySelection: self watcher runTestClasses;
		watcherName: self watcher name