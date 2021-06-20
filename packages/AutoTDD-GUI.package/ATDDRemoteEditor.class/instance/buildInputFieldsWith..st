building
buildInputFieldsWith: aBuilder
	
	^ OrderedCollection new
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