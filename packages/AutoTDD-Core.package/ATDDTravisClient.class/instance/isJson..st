testing
isJson: aString
	
	^ (aString at: 1 ifAbsent: [ ^ false ]) = ${