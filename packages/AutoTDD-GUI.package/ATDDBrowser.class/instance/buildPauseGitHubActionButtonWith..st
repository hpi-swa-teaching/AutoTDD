building
buildPauseGitHubActionButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		action: #pauseSelectedGitHubActions;
		label: 'Pause';
		enabled: true;
		yourself