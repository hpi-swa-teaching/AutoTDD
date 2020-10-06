building
buildAdditionalInputFieldsWith: aBuilder
	
	^ OrderedCollection new
		add: (self buildRepositoryLabelWith: aBuilder);
		yourself