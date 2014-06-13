as yet unclassified
travisApiUrl

	^ self useTravisPro
		ifTrue: [ 'https://api.travis-ci.com/' ]
		ifFalse: [ 'https://api.travis-ci.org/' ]