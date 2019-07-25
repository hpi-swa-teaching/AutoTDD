accessing
client
	^ client	ifNil: [ client := ATDDTravisClient new ]