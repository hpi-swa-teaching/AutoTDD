accessing
testCategoryMenu: aMenu
	^ aMenu
		title: 'Test-Categories';
		add: 'Select all' action: #selectAllTestCategories;
		add: 'Select inversion' action: #selectInverseTestCategories;
		add: 'Select none' action: #selectNoTestCategories;
		addLine;
		add: 'Filter...' action: #filterTestCategories;
		addLine;
		add: 'Refresh' action: #updateTestCategories;
		yourself.