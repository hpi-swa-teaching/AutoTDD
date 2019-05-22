building
buildCategoryClassesWith: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #categoryClasses;
		menu: #categoryClassesMenu:;
		getIndex: #selectedCategoryClass;
		setIndex: #selectedCategoryClass:;
		getSelectionList: #categoryClassAt:;
		setSelectionList: #categoryClassAt:put:;
		yourself