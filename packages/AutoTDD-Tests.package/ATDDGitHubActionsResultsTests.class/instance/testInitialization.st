tests
testInitialization

	self assert: ATDDGitHubActionResults allInstances isEmpty = false.
	self assert: resultsWindow shouldSimplifyLog = true.
	self assert: resultsWindow simplifyLogCheckBoxState = true