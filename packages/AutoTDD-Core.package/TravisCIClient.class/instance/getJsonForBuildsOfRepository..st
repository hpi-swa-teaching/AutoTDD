as yet unclassified
getJsonForBuildsOfRepository: aString
	
	^ self requestOn: 'repos/', aString, '/builds'