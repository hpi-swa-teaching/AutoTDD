tests
testApply
	
	sut settingsButtonClicked.
	self assert: sut travis travisSource equals: 'User/Repository'.
	self assert: sut travis token equals: 'YOUR TRAVIS ACCESS TOKEN'.
	sut travis slugField contents: 'A/B'.
	sut travis tokenField contents: 'foo'.
	sut travis applyButtonClicked.
	self assert: sut travis travisSource equals: 'A/B'.
	self assert: sut travis token equals: 'foo'