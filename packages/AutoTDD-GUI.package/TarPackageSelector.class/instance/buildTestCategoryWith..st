building
buildTestCategoryWith: aBuilder	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		menu: #testCategoryMenu:;
		list: #testCategoriesList;
		getIndex: #selectedTestCategory;
		setIndex: #selectedTestCategory:;
		getSelectionList: #testCategoryAt:;
		setSelectionList: #testCategoryAt:put:;
		yourself