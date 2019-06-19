initialization
loadWatcherSpecs
	self
		classwiseCategorySelection: self watcher isWatchingClasswise;
		classwiseTestCategorySelection: self watcher isTestingClasswise;
		localTesting: (self watcher localTestRunner active);
		watcherName: self watcher name