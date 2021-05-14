building
buildWatcherWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		children: (OrderedCollection new
			add: ((self buildWatcherListWith: aBuilder)
				frame: self listFrame
				yourself);
			add: ((self buildWatcherButtonsWith: aBuilder)
				frame: self buttonsFrame
				yourself);
			yourself);
		yourself