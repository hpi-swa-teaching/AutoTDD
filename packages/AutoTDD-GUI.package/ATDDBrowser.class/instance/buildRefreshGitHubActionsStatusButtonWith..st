building
buildRefreshGitHubActionsStatusButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #refreshSelectedGitHubActionsStatuses;
		label: 'Refresh';
		enabled: true;
		yourself