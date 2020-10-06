running
setUp
	
	super setUp.
	travisStatus := ATDDTravisStatus new.	
	windowsToDelete := OrderedCollection new.
	mockTravisClient := ATDDMockTravisClient new.
	
	travisStatus
		pause;
		repositoryURL: 'test/test'.
	travisStatus repository client: mockTravisClient.