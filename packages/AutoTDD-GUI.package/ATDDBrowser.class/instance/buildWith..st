building
buildWith: aBuilder
	| window |
	window := aBuilder pluggableWindowSpec new
		model: self; label: self label; extent: self extent;
		children: (OrderedCollection new 
			add: ((self buildWatcherListWith: aBuilder)
				frame: self watcherListFrame;
				yourself);
			add: ((self buildWatcherButtonsWith: aBuilder)
				frame: self watcherButtonsFrame;
				yourself);
			add: ((self buildTravisStatusListWith: aBuilder)
				frame: self travisStatusListFrame;
				yourself);
			add: ((self buildTravisStatusButtonsWith: aBuilder)
				frame: self travisStatusButtonsFrame;
				yourself);
			add: ((self buildGlobalButtonsWith: aBuilder)
				frame: self globalButtonsFrame;
				yourself);
			yourself);
		yourself.
	^ aBuilder build: window