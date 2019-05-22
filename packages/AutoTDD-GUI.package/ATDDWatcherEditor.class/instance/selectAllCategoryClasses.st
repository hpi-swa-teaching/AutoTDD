accessing-categories
selectAllCategoryClasses
	self 
		selectedCategoryClasses: self categoryClasses asSet;
		changed: #allSelections