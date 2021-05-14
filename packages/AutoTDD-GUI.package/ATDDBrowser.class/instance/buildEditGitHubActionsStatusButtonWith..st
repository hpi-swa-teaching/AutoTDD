building
buildEditGitHubActionsStatusButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #editGitHubActionsStatus;
		label: 'Edit';
		enabled: true;
		yourself