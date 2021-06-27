testing
testWorkflowRunsForRepository

	| response |
	response := gitHubActionsClient getJsonForWorkflowRunsForRepository: self repoURL.
	self assert: response equals: (Json readFrom: ATDDGitHubActionMockAPI defaultRuns readStream)