building
buildWith: aBuilder
	
	| window |
	
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: self label;
		extent: self extent;
		children: (OrderedCollection new
				add: ((self buildContentPanelWith: aBuilder)
						frame: self contentFrame;
						yourself);
				add: ((self buildExpandButtonWith: aBuilder)
						frame: self expandButtonFrame;
						yourself);
				yourself);
		yourself.
	
	^ aBuilder build: window