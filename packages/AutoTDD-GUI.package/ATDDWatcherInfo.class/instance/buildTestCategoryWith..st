building
buildTestCategoryWith: aBuilder
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #testCategories;
		yourself