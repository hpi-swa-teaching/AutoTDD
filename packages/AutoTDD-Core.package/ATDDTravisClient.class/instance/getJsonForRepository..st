data-processing
getJsonForRepository: aString
	
	^ self requestOn: 'repos/' , aString