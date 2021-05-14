building
buildResultsGitHubActionsStatusButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openResultsForSelectedGitHubActionsStatuses;
		label: 'Results';
		enabled: true;
		yourself