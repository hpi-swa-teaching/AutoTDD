accessing-categories
selectInverseTestCategoryClasses
	
	self
		selectedTestCategoryClasses: (self testCategoryClasses asSet
				removeAll: self selectedTestCategoryClasses;
				yourself);
		changed: #allSelections