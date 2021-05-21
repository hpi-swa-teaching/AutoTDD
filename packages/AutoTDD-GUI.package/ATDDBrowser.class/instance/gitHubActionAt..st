action
gitHubActionAt: anIndex
	
	^ self selectedGitHubActions includes: (self gitHubActions at: anIndex ifAbsent: [ ^ false ])