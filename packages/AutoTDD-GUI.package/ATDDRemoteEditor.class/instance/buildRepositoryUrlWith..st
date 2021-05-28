accessing
buildRepositoryUrlWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: repositoryUrl;
		help: self class repositoryUrlHelpLabel;
		getText: #contents;
		setText: #contents:;
		softLineWrap: true;
		yourself