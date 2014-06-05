building
buildTestCategoryWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #testCategoriesList;
		getSelected: #selectedTestCategory;
		setSelected: #selectedTestCategory:;
		yourself