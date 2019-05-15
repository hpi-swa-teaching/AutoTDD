as yet unclassified
buildGlobalButtonsWith: aBuilder
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
			add: (self buildGlobalPauseButtonWith: aBuilder);
			add: (self buildGlobalRefreshButtonWith: aBuilder);
			yourself);
		yourself.