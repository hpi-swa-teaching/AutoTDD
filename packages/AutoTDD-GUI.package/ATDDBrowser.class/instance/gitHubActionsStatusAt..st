accessing
gitHubActionsStatusAt: anIndex
	
	^ self selectedGitHubActionsStatuses includes: (self gitHubActionsStatuses at: anIndex ifAbsent: [ ^ false ])