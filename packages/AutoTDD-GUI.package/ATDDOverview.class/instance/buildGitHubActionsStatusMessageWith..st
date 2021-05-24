building
buildGitHubActionsStatusMessageWith: aBuilder
	 
	^ aBuilder pluggableInputFieldSpec new
		model: gitHubActionMessage;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #contents;
		softLineWrap: true;
		yourself