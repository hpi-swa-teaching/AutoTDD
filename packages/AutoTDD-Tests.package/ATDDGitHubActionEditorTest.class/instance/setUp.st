as yet unclassified
setUp

	super setUp.
	browser := ATDDBrowser new.
	editor := browser openEditorForNewTestingEntityOfType: #gitHubAction.
	mockApi := ATDDGitHubActionMockAPI new.
	windowsToDelete := OrderedCollection new.
	windowsToDelete add: browser.
	windowsToDelete add: editor