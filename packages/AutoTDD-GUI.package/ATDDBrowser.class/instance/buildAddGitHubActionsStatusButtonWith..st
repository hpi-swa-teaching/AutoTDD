building
buildAddGitHubActionsStatusButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #addGitHubActionsStatus;
		label: 'Add GitHub actions status';
		enabled: true;
		yourself