data-processing
getJsonForBuildsOfRepository: aString
	
	^ self requestOn: 'repos/', aString, '/builds'