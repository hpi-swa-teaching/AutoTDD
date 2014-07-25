data-processing
getJsonForBuild: aString

	^ self requestOn: 'builds/', aString