accessing
categoryMenu: aMenu
	
	^ aMenu
		title: self categoryMenuTitle;
		add: self menuSelectAllLabel action: #selectAllCategories;
		add: self menuSelectInversionLabel action: #selectInverseCategories;
		add: self menuSelectNoneLabel action: #selectNoCategories;
		addLine;
		add: self menuFilterLabel action: #filterCategories;
		addLine;
		add: self menuRefreshLabel action: #updateCategories;
		yourself