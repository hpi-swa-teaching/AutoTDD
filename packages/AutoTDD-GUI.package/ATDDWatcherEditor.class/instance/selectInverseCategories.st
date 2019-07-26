accessing-categories
selectInverseCategories
	
	self
		selectedCategories: (self categories asSet
				removeAll: self selectedCategories;
				yourself);
		changed: #allSelections