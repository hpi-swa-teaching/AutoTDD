initialization
loadWatcherSpecs
	self
		classwiseCategorySelection: self watcher watchClasses;
		classwiseTestCategorySelection: self watcher runTestClasses;
		localTesting: (self watcher localTestRunner active);
		travisTesting: (self watcher travisTestRunner active);
		watcherName: self watcher name