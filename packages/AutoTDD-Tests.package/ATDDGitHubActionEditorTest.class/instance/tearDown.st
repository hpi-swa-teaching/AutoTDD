as yet unclassified
tearDown

	super tearDown.
	mockApi destroy.
	browser gitHubActions removeAll.
	windowsToDelete do: [ :each | each changed: #close ]