running
setUp
	super setUp.
	travisStatus := ATDDTravisStatus new.
	windowsToDelete := OrderedCollection new.
	
	self flag: #todo. "load sample data to simulate travis status response"
	travisStatus
		pause;
		repositoryURL: self class repoURL.

    resultsWindow := ATDDTravisStatusResults openForTarget: travisStatus.
    windowsToDelete add: resultsWindow