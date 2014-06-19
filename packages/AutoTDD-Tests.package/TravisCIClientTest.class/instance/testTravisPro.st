tests
testTravisPro

	| client |
	client := TravisCIClient new.
	self assert: client travisApiUrl equals: 'https://api.travis-ci.org/'.
	client usePro: true.
	self assert: client travisApiUrl equals: 'https://api.travis-ci.com/'.
	client usePro: false.
	self assert: client travisApiUrl equals: 'https://api.travis-ci.org/'