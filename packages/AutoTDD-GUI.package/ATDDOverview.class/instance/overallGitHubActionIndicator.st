calculation
overallGitHubActionIndicator
	
	"red"
	(self allGitHubActionsWithStatus: 'action_required') ifNotEmpty: [ ^ ATDDGitHubAction imageDictionary at: 'action_required' ].
	(self allGitHubActionsWithStatus: 'cancelled') ifNotEmpty: [ ^ ATDDGitHubAction imageDictionary at: 'cancelled' ].
	(self allGitHubActionsWithStatus: 'timed_out') ifNotEmpty: [ ^ ATDDGitHubAction imageDictionary at: 'timed_out' ].
	
	"orange"
	(self allGitHubActionsWithStatus: 'failure') ifNotEmpty: [ ^ ATDDGitHubAction imageDictionary at: 'failure' ].
	
	"gray"
	(self allGitHubActionsWithStatus: 'stale') ifNotEmpty: [ ^ ATDDGitHubAction imageDictionary at: 'stale' ].
	(self allGitHubActionsWithStatus: 'neutral') ifNotEmpty: [ ^ ATDDGitHubAction imageDictionary at: 'neutral' ].
	
	"green"
	(self allGitHubActionsWithStatus: 'success') size = self gitHubActions size ifTrue: [ ^ ATDDGitHubAction imageDictionary at: 'success' ].
	(self allGitHubActionsWithStatus: 'skipped') size = self gitHubActions size ifTrue: [ ^ ATDDGitHubAction imageDictionary at: 'skipped' ].
	
	^ ATDDGitHubAction imageDictionary at: 'unknown'