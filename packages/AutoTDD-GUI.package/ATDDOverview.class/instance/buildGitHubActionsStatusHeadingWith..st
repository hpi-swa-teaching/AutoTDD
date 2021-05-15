building
buildGitHubActionsStatusHeadingWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #gitHubActionsStatusHeading;
		yourself