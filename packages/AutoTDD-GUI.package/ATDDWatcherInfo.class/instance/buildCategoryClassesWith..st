building
buildCategoryClassesWith: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #categoryClasses;
		yourself