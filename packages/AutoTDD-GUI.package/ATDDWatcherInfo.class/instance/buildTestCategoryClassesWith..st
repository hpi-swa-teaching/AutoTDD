building
buildTestCategoryClassesWith: aBuilder
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #testCategoryClasses;
		yourself