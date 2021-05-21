building
buildInfoGitHubActionButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #openInfoForSelectedGitHubActions;
		label: 'Info';
		enabled: true;
		yourself