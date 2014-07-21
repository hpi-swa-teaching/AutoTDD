building
buildCategoryWith: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #categories;
		getIndex: #selectedCategory;
		setIndex: #selectedCategory:;
		getSelectionList: #categoryAt:;
		setSelectionList: #categoryAt:put:;
		yourself