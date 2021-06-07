building
buildWith: aBuilder
	
	| window |
	
	self hasSeenHelpPrompt ifFalse: [ self createSeenFile. self buildHelpMenu ].
	
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: self label;
		extent: self extent;
		children: (OrderedCollection new
			add: ((self buildGlobalButtonsWith: aBuilder)
				frame: self globalButtonsFrame;
				yourself);
			add: ((self buildTestingEntitiesWith: aBuilder)
				frame: self testingEntitiesFrame;
				yourself);
			yourself);
		yourself.
		
	^ aBuilder build: window