as yet unclassified
buildAdditionalInputFieldsWith: aBuilder
	
	^ OrderedCollection new
		add: (self buildRepositoryLabelWith: aBuilder);
		yourself