building
buildLocalMessageWith: aBuilder
	
	^ aBuilder pluggableInputFieldSpec new
		model: localMessage;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #contents;
		softLineWrap: true;
		yourself