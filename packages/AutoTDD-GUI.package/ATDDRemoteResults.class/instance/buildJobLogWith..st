building
buildJobLogWith: aBuilder
	
	^ ATDDPluggableScrollableTextSpec new
		model: self;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #log;
		vScrollBarPolicy: #whenNeeded;
		yourself