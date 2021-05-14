building
buildWatcherWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: (OrderedCollection new
			add: ((self buildWatcherListWith: aBuilder)
				frame: self watcherListFrame
				yourself);
			add: ((self buildWatcherButtonsWith: aBuilder)
				frame: self watcherButtonsFrame
				yourself);
			yourself);
		yourself