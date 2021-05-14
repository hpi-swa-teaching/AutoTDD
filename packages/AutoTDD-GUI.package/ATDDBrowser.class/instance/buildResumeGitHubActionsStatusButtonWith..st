building
buildResumeGitHubActionsStatusButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #resumeSelectedGitHubActionsStatuses;
		label: 'Resume';
		enabled: true;
		yourself