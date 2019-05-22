accessing-categories
selectAllTestCategoryClasses
	self 
		selectedTestCategoryClasses: self testCategoryClasses asSet;
		changed: #allSelections