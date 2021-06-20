building
buildJobLogComponentsWith: aBuilder
	
	^ OrderedCollection new
		add: ((self buildSimplifySmalltalkCiLogCheckBoxWith: aBuilder)
			frame: self simplifySmalltalkCiLogCheckBoxFrame;
			yourself);
		add: ((self buildJobLogTextWith: aBuilder)
			frame: self jobLogTextFrame;
			yourself);
		yourself