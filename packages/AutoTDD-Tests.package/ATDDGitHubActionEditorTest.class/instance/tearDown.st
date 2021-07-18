running
tearDown

	super tearDown.
	mockApi destroy.
	browser removeGitHubActions: browser gitHubActions.
	pretestsGitHubActions
		do: [ :each | each valid: true.
			browser gitHubActions addLast: each ].
	windowsToDelete do: [ :each | each changed: #close ]