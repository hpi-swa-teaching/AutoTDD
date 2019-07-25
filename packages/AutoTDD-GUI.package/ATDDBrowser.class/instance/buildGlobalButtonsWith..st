building
buildGlobalButtonsWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
				add: (self buildGlobalPauseButtonWith: aBuilder);
				add: (self buildGlobalResumeButtonWith: aBuilder);
				add: (self buildGlobalRunButtonWith: aBuilder);
				add: (self buildGlobalOverviewButtonWith: aBuilder);
				add: (self buildGlobalSoundsButtonWith: aBuilder);
				yourself);
		yourself