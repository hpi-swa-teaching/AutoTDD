testing
testLogs

	| response |
	response := gitHubActionsClient getLogsForRepository: self repoURL logId: 1.
	self assert: response equals: ATDDGitHubActionMockAPI defaultLog