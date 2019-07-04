running
tearDown
	super tearDown.
	watchers do: [:w | w delete].
	travisStatuses do: [:t | t delete].
	windowsToDelete
		do: [:each | each changed: #close]