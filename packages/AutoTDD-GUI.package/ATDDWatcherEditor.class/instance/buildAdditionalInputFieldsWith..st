building
buildAdditionalInputFieldsWith: aBuilder
	^ OrderedCollection new
		addAll: (self buildPackageSelectionWith: aBuilder);
		yourself