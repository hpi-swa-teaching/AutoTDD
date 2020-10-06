running
tearDown
	
	super tearDown.
	travisStatus delete.
	windowsToDelete do: [ :each | each changed: #close ]