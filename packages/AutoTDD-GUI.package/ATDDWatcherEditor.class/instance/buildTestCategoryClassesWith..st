building
buildTestCategoryClassesWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #testCategoryClasses;
		getIndex: #selectedTestCategoryClass;
		setIndex: #selectedTestCategoryClass:;
		getSelectionList: #testCategoryClassAt:;
		setSelectionList: #testCategoryClassAt:put:;
		yourself