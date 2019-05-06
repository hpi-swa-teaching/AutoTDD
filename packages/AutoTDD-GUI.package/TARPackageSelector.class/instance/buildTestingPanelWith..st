building
buildTestingPanelWith: aBuilder
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
			add: (self buildLocalTestingCheckboxWith: aBuilder);
			add: (self buildTravisTestingCheckboxWith: aBuilder);
			yourself);
		yourself.