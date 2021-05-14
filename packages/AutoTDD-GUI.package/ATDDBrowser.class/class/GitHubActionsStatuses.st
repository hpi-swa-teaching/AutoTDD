accessing
GitHubActionsStatuses
	
	^ GitHubActionsStatuses ifNil: [ GitHubActionsStatuses := OrderedCollection new ]