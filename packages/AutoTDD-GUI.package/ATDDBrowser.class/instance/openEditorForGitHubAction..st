action
openEditorForGitHubAction: aGitHubAction
	
	^ aGitHubAction notNil ifTrue: [ ATDDGitHubActionEditor openForTarget: aGitHubAction ]