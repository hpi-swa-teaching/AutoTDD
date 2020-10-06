accessing
localStatus
	
	^ localStatus ifNil: [ localStatus := #unexecuted ]