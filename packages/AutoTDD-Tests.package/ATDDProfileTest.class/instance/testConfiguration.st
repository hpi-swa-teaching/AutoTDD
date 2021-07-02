tests
testConfiguration

	profile travisToken: '1234'.
	self assert: profile travisToken = '1234'.
	
	profile gitHubToken: '5678'.
	self assert: profile gitHubToken = '5678'.
	
	self assert: (profile tokenFor: #travisStatus) = '1234'.
	self assert: (profile tokenFor: #gitHubAction) = '5678'