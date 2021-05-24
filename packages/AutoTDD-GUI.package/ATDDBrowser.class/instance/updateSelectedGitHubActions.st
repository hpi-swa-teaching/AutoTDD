updating
updateSelectedGitHubActions
	
	self
		selectedGitHubActions: (self findSelectedItemsForCollection: self gitHubActions withSelected: self selectedGitHubActions);
		changed: #selectedGitHubActions