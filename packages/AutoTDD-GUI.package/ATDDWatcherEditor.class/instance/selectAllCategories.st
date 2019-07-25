accessing-categories
selectAllCategories
	
	self
		selectedCategories: self categories asSet;
		changed: #allSelections