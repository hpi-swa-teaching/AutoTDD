building
buildAdditionalInputFieldsWith: aBuilder
	
	^ OrderedCollection new
		add: ((self buildRepositoryUrlWith: aBuilder)
				frame: self repositoryUrlFrame;
				yourself);
		add: ((self buildIntervalWith: aBuilder)
				frame: self intervalFrame;
				yourself);
		yourself