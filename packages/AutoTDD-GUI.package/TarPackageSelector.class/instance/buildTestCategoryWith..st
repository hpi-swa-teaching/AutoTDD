building
buildTestCategoryWith: aBuilder
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #testCategoriesList;
		getIndex: #selectedTestCategory;
		setIndex: #selectedTestCategory:;
		getSelectionList: #testCategoryAt:;
		setSelectionList: #testCategoryAt:put:;
		yourself