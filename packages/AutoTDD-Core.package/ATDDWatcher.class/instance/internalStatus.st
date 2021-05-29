accessing
internalStatus
	
	^ internalStatus ifNil: [ internalStatus := #unexecuted ]