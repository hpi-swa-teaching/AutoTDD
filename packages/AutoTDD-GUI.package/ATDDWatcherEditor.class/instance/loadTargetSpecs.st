initialization
loadTargetSpecs
	self
		classwiseCategorySelection: self watcher isWatchingClasswise;
		classwiseTestCategorySelection: self watcher isTestingClasswise;
		targetName: self watcher name