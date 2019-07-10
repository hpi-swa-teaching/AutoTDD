accessing-categories
filterTestCategories
	self
		selectedTestCategories: (self filterFor: self testCategories withRequest: (self class menuFilterDialogLabelFor: self class testCategoryMenuTitle));
		changed: #selectedTestCategories