accessing-categories
filterCategories
	self
		selectedCategories: (self filterFor: self categories withRequest: (self class menuFilterDialogLabelFor: self class categoryMenuTitle));
		changed: #selectedCategories