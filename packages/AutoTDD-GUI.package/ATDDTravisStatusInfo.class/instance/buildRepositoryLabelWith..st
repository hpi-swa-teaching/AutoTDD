building
buildRepositoryLabelWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #repositoryLabel;
		frame: self repositoryFrame;
		yourself