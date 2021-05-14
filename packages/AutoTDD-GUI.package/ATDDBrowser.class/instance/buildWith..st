building
buildWith: aBuilder
	
	| window |
	
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: self label;
		extent: self extent;
		children: (OrderedCollection new
			add: ((self buildGlobalButtonsWith: aBuilder)
				frame: self globalButtonsFrame;
				yourself);
			add: ((self buildListsAndButtonsWith: aBuilder)
				frame: self listsAndButtonsFrame;
				yourself);
			yourself);
		yourself.
	
	^ aBuilder build: window