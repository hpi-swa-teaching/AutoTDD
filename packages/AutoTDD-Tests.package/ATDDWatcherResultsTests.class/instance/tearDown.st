running
tearDown
	
	super tearDown.
	watcher delete.
	windowsToDelete do: [ :each | each changed: #close ]