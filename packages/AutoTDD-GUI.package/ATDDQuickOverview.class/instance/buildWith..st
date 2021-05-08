initialization
buildWith: aBuilder
	
	| window |
	
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: self label;
		extent: self extent;
		children: (OrderedCollection new
				add: ((self buildOverviewList: aBuilder)
						frame: self overviewListFrame;
						yourself);
				yourself);
		yourself.
	
	^ aBuilder build: window