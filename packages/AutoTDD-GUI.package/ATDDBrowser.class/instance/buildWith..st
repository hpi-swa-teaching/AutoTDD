building
buildWith: aBuilder
	
	| window |
	self builder: aBuilder.
	window := aBuilder pluggableWindowSpec new
		model: self; label: self label; extent: self extent;
		children: (OrderedCollection new 
			add: ((self buildWatcherListWith: aBuilder)
				frame: self watcherListFrame;
				yourself);
			add: ((self buildGlobalButtonsWith: aBuilder)
				frame: self globalButtonsFrame;
				yourself);
			add: ((self buildWatcherButtonsWith: aBuilder)
				frame: self watcherButtonsFrame;
				yourself);
			yourself);
		yourself.
	^ aBuilder build: window