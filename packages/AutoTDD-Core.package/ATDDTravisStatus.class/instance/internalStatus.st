accessing
internalStatus
	
	^ internalStatus ifNil: [ internalStatus := 'unknown' ]