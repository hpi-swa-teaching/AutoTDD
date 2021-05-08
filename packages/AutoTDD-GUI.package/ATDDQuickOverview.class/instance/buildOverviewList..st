initialization
buildOverviewList: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
				add: (self buildLocalTestStatusWith: aBuilder);
				add: (self buildLocalTestStatusWith: aBuilder);
				add: (self buildLocalTestStatusWith: aBuilder);
				yourself);
		yourself