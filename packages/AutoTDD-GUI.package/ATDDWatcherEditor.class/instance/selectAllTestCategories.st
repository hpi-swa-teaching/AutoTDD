accessing-categories
selectAllTestCategories
	
	self
		selectedTestCategories: self testCategories asSet;
		changed: #allSelections