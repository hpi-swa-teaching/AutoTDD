action
openResultsForGitHubAction: aGitHubAction
	
	aGitHubAction notNil ifTrue: [ ^ ATDDGitHubActionResults openForTarget: aGitHubAction ]