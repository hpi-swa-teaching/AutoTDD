building
buildAdditionalComponentsWith: aBuilder
	
	^ OrderedCollection new
		add: ((self buildJobsWith: aBuilder)
				frame: self jobsFrame;
				yourself);
		add: ((self buildJobLogWith: aBuilder)
				frame: self jobLogFrame;
				yourself);
		yourself