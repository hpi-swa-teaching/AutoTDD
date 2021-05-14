building
buildWithOld: aBuilder
	
	| window |
	
	window := aBuilder pluggableWindowSpec new
		model: self;
		label: self label;
		extent: self extent;
		children: (OrderedCollection new
				add: ((self buildWatcherListWith: aBuilder)
						frame: self listFrame;
						yourself);
				add: ((self buildWatcherButtonsWith: aBuilder)
						frame: self watcherButtonsFrame;
						yourself);
				add: ((self buildGitHubActionsStatusListWith: aBuilder)
						frame: self listFrame;
						yourself);
				add: ((self buildTravisStatusListWith: aBuilder)
						frame: self listFrame;
						yourself);
				add: ((self buildTravisStatusButtonsWith: aBuilder)
						frame: self buttonsFrame;
						yourself);
				add: ((self buildGlobalButtonsWith: aBuilder)
						frame: self globalButtonsFrame;
						yourself);
				yourself);
		yourself.
	
	^ aBuilder build: window