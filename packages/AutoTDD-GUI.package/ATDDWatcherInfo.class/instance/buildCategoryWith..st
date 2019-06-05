as yet unclassified
buildCategoryWith: aBuilder
	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		list: #categories;
		yourself