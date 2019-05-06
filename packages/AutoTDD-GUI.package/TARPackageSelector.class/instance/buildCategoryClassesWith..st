building
buildCategoryClassesWith: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #categoryClasses;
		getIndex: #selectedCategoryClass;
		setIndex: #selectedCategoryClass:;
		getSelectionList: #categoryClassAt:;
		setSelectionList: #categoryClassAt:put:;
		yourself