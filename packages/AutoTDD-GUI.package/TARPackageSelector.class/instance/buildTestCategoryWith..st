building
buildTestCategoryWith: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #testCategories;		
		menu: #testCategoryMenu:;
		getIndex: #selectedTestCategory;
		setIndex: #selectedTestCategory:;
		getSelectionList: #testCategoryAt:;
		setSelectionList: #testCategoryAt:put:;
		yourself