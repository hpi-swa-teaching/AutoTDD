tests
testTravisPro

	| client |
	client := TravisCIClient new.
	self assert: client travisApiUrl equals: 'https://api.travis-ci.org/'.
	client useTravisPro: true.
	self assert: client travisApiUrl equals: 'https://api.travis-ci.com/'.
	client useTravisPro: false.
	self assert: client travisApiUrl equals: 'https://api.travis-ci.org/'