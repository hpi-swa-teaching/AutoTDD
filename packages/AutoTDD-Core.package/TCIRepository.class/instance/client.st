accessing
client
	^ client	ifNil: [ client := TCIClient new ]