building
buildRepositoryLabelWith: aBuilder
	
	^ aBuilder pluggableTextSpec new
		model: repository;
		help: self repositoryLabelText;
		getText: #contents;
		setText: #contents:;
		readOnly: true;
		frame: self class repositoryFrame;
		yourself