accessing
repository

	^ self data 
		ifNil: [ String empty ]
		ifNotNil: [ self data repository ]