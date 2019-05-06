building
buildButtonsWith: aBuilder
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
			add: (self buildAddButtonWith: aBuilder);
			add: (self buildStopButtonWith: aBuilder);
			add: (self buildResumeButtonWith: aBuilder);
			add: (self buildDeleteButtonWith: aBuilder);
			yourself);
		yourself.