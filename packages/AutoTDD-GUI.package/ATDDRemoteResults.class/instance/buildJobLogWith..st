building
buildJobLogWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: self;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #log;
		yourself