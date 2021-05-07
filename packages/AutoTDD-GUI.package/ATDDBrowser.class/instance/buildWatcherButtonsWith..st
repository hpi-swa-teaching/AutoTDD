building
buildWatcherButtonsWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
				add: (self buildAddWatcherButtonWith: aBuilder);
				add: (self buildPauseWatcherButtonWith: aBuilder);
				add: (self buildResumeWatcherButtonWith: aBuilder);
				add: (self buildRunWatcherButtonWith: aBuilder);
				add: (self buildEditWatcherButtonWith: aBuilder);
				add: (self buildInfoWatcherButtonWith: aBuilder);
				add: (self buildQuickOverviewWatcherButtonWith: aBuilder);
				add: (self buildResultsWatcherButtonWith: aBuilder);
				add: (self buildRemoveWatcherButtonWith: aBuilder);
				yourself);
		yourself