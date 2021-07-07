tests
testCreateGitHubAction

	| amount editor |
	
	amount := ATDDGitHubActionEditor allInstances size. 
	editor := browser createGitHubAction. 
	self assert: ATDDGitHubActionEditor allInstances size = (amount + 1).
	windowsToDelete add: editor