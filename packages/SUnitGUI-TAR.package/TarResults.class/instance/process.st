accessing
process

	^ process
		ifNil: [ process := Process new ]