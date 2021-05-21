building
buildRefreshGitHubActionButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #refreshSelectedGitHubActions;
		label: 'Refresh';
		enabled: true;
		yourself