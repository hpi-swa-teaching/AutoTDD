accessing
testCategoryMenu: aMenu
	^ aMenu
		title: self testCategoryMenuTitle;
		add: self menuSelectAllLabel action: #selectAllTestCategories;
		add: self menuSelectInversionLabel action: #selectInverseTestCategories;
		add: self menuSelectNoneLabel action: #selectNoTestCategories;
		addLine;
		add: self menuFilterLabel action: #filterTestCategories;
		addLine;
		add: self menuRefreshLabel action: #updateTestCategories;
		yourself