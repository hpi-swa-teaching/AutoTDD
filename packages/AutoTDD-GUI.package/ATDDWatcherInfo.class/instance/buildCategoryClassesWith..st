as yet unclassified
buildCategoryClassesWith: aBuilder
	
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #categoryClasses;
		yourself