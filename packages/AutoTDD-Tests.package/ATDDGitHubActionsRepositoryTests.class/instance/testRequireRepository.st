tests
testRequireRepository

	self assert: repository requireRepository equals: (Json readFrom: ATDDGitHubActionMockAPI defaultRuns readStream)