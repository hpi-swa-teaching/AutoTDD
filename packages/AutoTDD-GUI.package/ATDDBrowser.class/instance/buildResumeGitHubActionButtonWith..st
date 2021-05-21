building
buildResumeGitHubActionButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #resumeSelectedGitHubActions;
		label: 'Resume';
		enabled: true;
		yourself