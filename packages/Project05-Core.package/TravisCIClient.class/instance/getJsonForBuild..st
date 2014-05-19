as yet unclassified
getJsonForBuild: aString

	^ self requestOn: 'builds?ids=', aString