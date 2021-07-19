running
setUp

	super setUp.
	browser := ATDDBrowser new.
	editor := browser openEditorForNewTestingEntityOfType: #gitHubAction.
	pretestsGitHubActions := browser gitHubActions copy.
	mockApi := ATDDGitHubActionMockAPI new.
	windowsToDelete := OrderedCollection new.
	windowsToDelete add: browser.
	windowsToDelete add: editor