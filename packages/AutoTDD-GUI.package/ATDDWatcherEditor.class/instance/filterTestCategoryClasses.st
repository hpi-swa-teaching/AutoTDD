accessing-categories
filterTestCategoryClasses
	self
		selectedTestCategoryClasses: (self filterFor: self testCategoryClasses withRequest: (self class menuFilterDialogLabelFor: self class testCategoryClassesMenuTitle));
		changed: #selectedTestCategoryClasses