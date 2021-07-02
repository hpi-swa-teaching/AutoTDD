building
buildGitHubTokenWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: gitHubToken;
		help: self class gitHubTokenHelpLabel;
		getText: #contents;
		setText: #contents:;
		softLineWrap: true;
		yourself