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
			add: ((self buildWatcherWith: aBuilder)
				frame: self watcherFrame;
				yourself);
			add: ((self buildTravisStatusWith: aBuilder)
				frame: self travisStatusFrame;
				yourself);
			add: ((self buildGitHubActionsStatusWith: aBuilder)
				frame: self gitHubActionsStatusFrame;
				yourself);
			yourself);
		yourself.
	
	^ aBuilder build: window