building
buildTravisStatusHeadingWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #travisStatusHeading;
		yourself