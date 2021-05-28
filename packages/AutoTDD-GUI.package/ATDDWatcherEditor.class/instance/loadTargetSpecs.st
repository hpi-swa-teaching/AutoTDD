initialization
loadTargetSpecs
	
	super loadTargetSpecs.
	
	self
		classwiseCategorySelection: self watcher isWatchingClasswise;
		classwiseTestCategorySelection: self watcher isTestingClasswise