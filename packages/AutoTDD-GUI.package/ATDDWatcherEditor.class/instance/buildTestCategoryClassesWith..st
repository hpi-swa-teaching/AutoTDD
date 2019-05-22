building
buildTestCategoryClassesWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #testCategoryClasses;
		menu: #testCategoryClassesMenu:;
		getIndex: #selectedTestCategoryClass;
		setIndex: #selectedTestCategoryClass:;
		getSelectionList: #testCategoryClassAt:;
		setSelectionList: #testCategoryClassAt:put:;
		yourself