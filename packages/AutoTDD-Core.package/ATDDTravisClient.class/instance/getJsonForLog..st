data-processing
getJsonForLog: aString
	
	^ self requestOn: 'logs/' , aString