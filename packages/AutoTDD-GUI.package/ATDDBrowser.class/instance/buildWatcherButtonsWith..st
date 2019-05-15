as yet unclassified
buildWatcherButtonsWith: aBuilder
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
			add: (self buildAddButtonWith: aBuilder);
			add: (self buildPauseButtonWith: aBuilder);
			add: (self buildRefreshButtonWith: aBuilder);
			add: (self buildEditButtonWith: aBuilder);
			add: (self buildRemoveButtonWith: aBuilder);
			yourself);
		yourself.