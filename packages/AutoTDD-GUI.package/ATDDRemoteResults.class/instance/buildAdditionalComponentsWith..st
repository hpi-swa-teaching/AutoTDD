building
buildAdditionalComponentsWith: aBuilder
	
	^ OrderedCollection new
		add: ((self buildJobsWith: aBuilder)
				frame: self jobsFrame;
				yourself);
		addAll: (self buildJobLogComponentsWith: aBuilder);
		yourself