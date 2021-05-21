building
buildGitHubActionsButtonsWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
			add: (self buildAddGitHubActionButtonWith: aBuilder);
			add: (self buildPauseGitHubActionButtonWith: aBuilder);
			add: (self buildResumeGitHubActionButtonWith: aBuilder);
			add: (self buildRefreshGitHubActionButtonWith: aBuilder);
			add: (self buildEditGitHubActionButtonWith: aBuilder);
			add: (self buildInfoGitHubActionButtonWith: aBuilder);
			add: (self buildResultsGitHubActionButtonWith: aBuilder);
			add: (self buildRemoveGitHubActionButtonWith: aBuilder);
			yourself);
		yourself