building
buildGitHubActionsStatusButtonsWith: aBuilder
	
	^ aBuilder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: (OrderedCollection new
				add: (self buildAddGitHubActionsStatusButtonWith: aBuilder);
				add: (self buildPauseGitHubActionsStatusButtonWith: aBuilder);
				add: (self buildResumeGitHubActionsStatusButtonWith: aBuilder);
				add: (self buildRefreshGitHubActionsStatusButtonWith: aBuilder);
				add: (self buildEditGitHubActionsStatusButtonWith: aBuilder);
				add: (self buildInfoGitHubActionsStatusButtonWith: aBuilder);
				add: (self buildResultsGitHubActionsStatusButtonWith: aBuilder);
				add: (self buildRemoveGitHubActionsStatusButtonWith: aBuilder);
				yourself);
		yourself