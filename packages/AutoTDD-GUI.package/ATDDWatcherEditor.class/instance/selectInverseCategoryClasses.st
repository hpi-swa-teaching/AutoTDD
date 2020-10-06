accessing-categories
selectInverseCategoryClasses
	
	self
		selectedCategoryClasses: (self categoryClasses asSet
				removeAll: self selectedCategoryClasses;
				yourself);
		changed: #allSelections