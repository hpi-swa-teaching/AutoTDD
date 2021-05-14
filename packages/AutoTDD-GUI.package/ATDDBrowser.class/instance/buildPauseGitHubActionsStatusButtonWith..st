building
buildPauseGitHubActionsStatusButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #pauseSelectedGitHubActionsStatuses;
		label: 'Pause';
		enabled: true;
		yourself