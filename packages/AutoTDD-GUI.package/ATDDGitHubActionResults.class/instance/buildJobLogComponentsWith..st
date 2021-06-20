building
buildJobLogComponentsWith: aBuilder
	
	^ OrderedCollection new
		add: ((self buildSimplifyLogCheckBoxWith: aBuilder)
			frame: self simplifyLogCheckBoxFrame;
			yourself);
		add: ((self buildJobLogTextWith: aBuilder)
			frame: self jobLogTextFrame;
			yourself);
		yourself