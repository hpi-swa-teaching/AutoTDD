building
buildWith: aBuilder
	
	| window panel |
	
	panel := aBuilder pluggablePanelSpec new
		model: self;
		children: (OrderedCollection new
			add: ((self buildTestingEntitiesWith: aBuilder)
					frame: self testingEntitiesFrame;
					yourself);
			add: ((self buildGlobalButtonsWith: aBuilder)
					frame: self globalButtonsFrame;
					yourself);
			yourself);
		yourself.
		
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: self label;
		extent: self extent;
		children: (OrderedCollection new
			add: (panel
				frame: self fullFrame;
				yourself);
			yourself);
		yourself.
		
	ATDDHelper openTutorialIfNecessary.
	
	^ aBuilder build: window