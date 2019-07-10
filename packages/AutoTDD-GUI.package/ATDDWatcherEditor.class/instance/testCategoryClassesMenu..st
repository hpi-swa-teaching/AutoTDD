accessing
testCategoryClassesMenu: aMenu
	^ aMenu
		title: self testCategoryClassesMenuTitle;
		add: self menuSelectAllLabel action: #selectAllTestCategoryClasses;
		add: self menuSelectInversionLabel action: #selectInverseTestCategoryClasses;
		add: self menuSelectNoneLabel action: #selectNoTestCategoryClasses;
		addLine;
		add: self menuFilterLabel action: #filterTestCategoryClasses;
		addLine;
		add: self menuRefreshLabel action: #updateTestCategoryClasses;
		yourself