running
tearDown
	super tearDown.
	browser watchers removeAll.
	browser watchers addAll: preTestWatchers.
	
	windowsToDelete do: [:each | each changed: #close].