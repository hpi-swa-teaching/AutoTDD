running
tearDown
	
	super tearDown.
	gitHubAction delete.
	windowsToDelete do: [ :each | each changed: #close ]