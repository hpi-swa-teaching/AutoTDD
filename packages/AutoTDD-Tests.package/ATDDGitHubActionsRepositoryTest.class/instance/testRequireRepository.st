tests
testRequireRepository
	
	repository client. 
	self assert: repository requireRepository equals: (Json readFrom: ATDDGitHubActionMockAPI defaultRuns readStream)