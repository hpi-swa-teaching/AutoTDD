building
buildAdditionalInputFieldsWith: aBuilder
	
	^ OrderedCollection new
		add: ((self buildUseProCheckboxWith: aBuilder)
				frame: self useProCheckBoxFrame;
				yourself);
		add: ((self buildRepositoryUrlWith: aBuilder)
				frame: self repositoryUrlFrame;
				yourself);
		add: ((self buildTokenWith: aBuilder)
				frame: self tokenFrame;
				yourself);
		add: ((self buildIntervalWith: aBuilder)
				frame: self intervalFrame;
				yourself);
		yourself