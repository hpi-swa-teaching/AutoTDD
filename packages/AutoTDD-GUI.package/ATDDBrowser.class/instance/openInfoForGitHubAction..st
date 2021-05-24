action
openInfoForGitHubAction: aGitHubAction
	
	aGitHubAction notNil ifTrue: [ ^ ATDDGitHubActionInfo openForTarget: aGitHubAction ]