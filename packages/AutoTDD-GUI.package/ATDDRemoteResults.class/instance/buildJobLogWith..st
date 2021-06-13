building
buildJobLogWith: aBuilder
	
	^ ATDDPluggableTextSpecPlus new
		model: self;
		indicateUnacceptedChanges: false;
		readOnly: true;
		getText: #log;
		vScrollBarPolicy: #whenNeeded;
		yourself