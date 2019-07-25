accessing-categories
filterCategoryClasses
	
	self
		selectedCategoryClasses: (self
				filterFor: self categoryClasses
				withRequest: (self class
					menuFilterDialogLabelFor: self class categoryClassesMenuTitle));
		changed: #selectedCategoryClasses