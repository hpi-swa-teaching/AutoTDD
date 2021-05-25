action
editGitHubActions
	
	^ self selectedGitHubActions do: [ :gitHubAction | self openEditorForTestingEntity: gitHubAction ]