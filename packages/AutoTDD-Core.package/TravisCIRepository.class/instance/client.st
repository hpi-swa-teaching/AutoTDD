accessing
client
	
	^ client	ifNil: [ client := TravisCIClient new ]