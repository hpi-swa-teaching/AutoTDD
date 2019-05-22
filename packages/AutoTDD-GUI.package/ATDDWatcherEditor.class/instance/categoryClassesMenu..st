accessing
categoryClassesMenu: aMenu
	^ aMenu
		title: self categoryClassesMenuTitle;
		add: self menuSelectAllLabel action: #selectAllCategoryClasses;
		add: self menuSelectInversionLabel action: #selectInverseCategoryClasses;
		add: self menuSelectNoneLabel action: #selectNoCategoryClasses;
		addLine;
		add: self menuFilterLabel action: #filterCategoryClasses;
		addLine;
		add: self menuRefreshLabel action: #updateCategoryClasses;
		yourself.