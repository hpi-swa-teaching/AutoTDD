building
buildJobLogComponentsWith: aBuilder
	
	^ OrderedCollection new
		add: ((self buildJobLogTextWith: aBuilder)
				frame: self jobLogTextFrame;
				yourself);
		yourself