running
tearDown
	
	super tearDown.
	gitHubAction delete.
	mockApi destroy.
	windowsToDelete do: [ :each | each changed: #close ].
	super tearDown
	