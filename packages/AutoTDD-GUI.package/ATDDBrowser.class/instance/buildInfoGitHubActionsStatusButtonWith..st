building
buildInfoGitHubActionsStatusButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openInfoForSelectedGitHubActionsStatuses;
		label: 'Info';
		enabled: true;
		yourself