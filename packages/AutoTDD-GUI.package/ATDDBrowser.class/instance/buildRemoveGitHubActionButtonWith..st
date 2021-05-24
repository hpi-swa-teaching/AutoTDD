building
buildRemoveGitHubActionButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #removeSelectedGitHubAction;
		label: 'Remove';
		enabled: true;
		yourself