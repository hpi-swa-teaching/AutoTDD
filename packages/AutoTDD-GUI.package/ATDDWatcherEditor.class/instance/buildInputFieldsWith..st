building
buildInputFieldsWith: aBuilder
	
	^ OrderedCollection new
		addAll: (self buildPackageSelectionWith: aBuilder);
		yourself