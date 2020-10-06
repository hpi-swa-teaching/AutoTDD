building
buildLocalHeadingWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #localHeading;
		yourself