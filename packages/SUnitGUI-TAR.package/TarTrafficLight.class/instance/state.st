accessing
state

	^ state ifNil: [state := #unknown]