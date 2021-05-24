building
buildEditGitHubActionButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #editGitHubAction;
		label: 'Edit';
		enabled: true;
		yourself