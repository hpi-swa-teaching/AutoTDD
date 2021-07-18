running
tearDown
	
	super tearDown.
	gitHubAction delete.
	gitHubActionMockApi destroy