building
buildTravisStatusButtonsWith: aBuilder
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
			add: (self buildAddTravisStatusButtonWith: aBuilder);
			add: (self buildPauseTravisStatusButtonWith: aBuilder);
			add: (self buildResumeTravisStatusButtonWith: aBuilder);
			add: (self buildRunTravisStatusButtonWith: aBuilder);
			add: (self buildEditTravisStatusButtonWith: aBuilder);
			add: (self buildInfoTravisStatusButtonWith: aBuilder);
			add: (self buildResultsTravisStatusButtonWith: aBuilder);
			add: (self buildRemoveTravisStatusButtonWith: aBuilder);
			yourself);
		yourself.