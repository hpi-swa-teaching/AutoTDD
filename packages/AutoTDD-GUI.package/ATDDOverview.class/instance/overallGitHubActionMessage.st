calculation
overallGitHubActionMessage
	
	| actionCollection |
	
	(actionCollection := self allGitHubActionsWithStatus: #failure)
		ifNotEmpty: [ ^ self messageFor: actionCollection withStatus: 'Errors and failures in' ].
	(actionCollection := self allGitHubActionsWithStatus: #success)
		size = self gitHubActions size ifTrue: [ ^ 'All passed' ].
	
	^ 'unknown'