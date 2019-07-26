constants
travisApiUrl
	
	^ self usePro ifTrue: [ 'https://api.travis-ci.com/' ] ifFalse: [ 'https://api.travis-ci.org/' ]