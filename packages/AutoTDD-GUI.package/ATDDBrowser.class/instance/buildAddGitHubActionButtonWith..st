building
buildAddGitHubActionButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #addGitHubAction;
		label: 'Add GitHub Actions';
		enabled: true;
		yourself