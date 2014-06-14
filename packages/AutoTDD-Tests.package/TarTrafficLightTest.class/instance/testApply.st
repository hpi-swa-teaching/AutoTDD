tests
testApply
	
	sut settingsButtonClicked.
	self assert: sut travisSource equals: 'User/Repository'.
	self assert: sut travisProAuthentificationCode equals: 'YOUR TRAVIS ACCESS TOKEN'.
	sut slugField contents: 'A/B'.
	sut authCodeField contents: 'foo'.
	sut applyButtonClicked.
	self assert: sut travisSource equals: 'A/B'.
	self assert: sut travisProAuthentificationCode equals: 'foo'