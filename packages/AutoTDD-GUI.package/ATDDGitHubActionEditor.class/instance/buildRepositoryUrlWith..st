building
buildRepositoryUrlWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: repositoryUrl;
		help: self repositoryUrlHelpLabel;
		getText: #contents;
		setText: #contents:;
		softLineWrap: true;
		yourself