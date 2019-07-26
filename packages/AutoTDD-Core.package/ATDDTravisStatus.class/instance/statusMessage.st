accessing
statusMessage
	
	^ statusMessage ifNil: [ statusMessage := 'not available' ]