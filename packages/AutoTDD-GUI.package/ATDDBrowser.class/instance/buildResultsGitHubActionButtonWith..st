building
buildResultsGitHubActionButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openResultsForSelectedGitHubActions;
		label: 'Results';
		enabled: true;
		yourself