building
buildCategoryWith: aBuilder
	^ aBuilder pluggableListSpec new
		model: self;
		list: #categories;
		getSelected: #selectedCategory;
		setSelected: #selectedCategory:;
		yourself