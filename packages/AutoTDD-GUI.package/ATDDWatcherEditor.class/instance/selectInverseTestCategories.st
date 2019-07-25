accessing-categories
selectInverseTestCategories
	
	self
		selectedTestCategories: (self testCategories asSet
				removeAll: self selectedTestCategories;
				yourself);
		changed: #allSelections