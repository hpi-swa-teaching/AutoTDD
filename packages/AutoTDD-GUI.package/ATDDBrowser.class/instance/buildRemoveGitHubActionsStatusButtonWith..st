building
buildRemoveGitHubActionsStatusButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #removeSelectedGitHubActionsStatus;
		label: 'Remove';
		enabled: true;
		yourself