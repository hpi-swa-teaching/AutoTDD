tests
testTravisInfoButtonWorks
	
	| travisWindow infoWindow travisStatus selection repoURL |
	
	repoURL := 'hpi-swa-teaching/AutoTDD'.
	travisWindow := browser createTravisStatus.
	travisWindow repositoryUrl: repoURL.
	travisWindow refreshInterval: '20'.
	travisWindow save.
	travisStatus := travisWindow travisStatus.
	self assert: self fetchCopyOfTravisStatuses size = 1.
	selection := OrderedCollection new.
	selection add: travisStatus.
	browser selectedTravisStatuses: selection.
	infoWindow := (browser openInfoForSelectedTestingEntitiesOfType: #travisStatus) first.
	windowsToDelete add: infoWindow.
	self assert: infoWindow target == travisStatus.
	self assert: infoWindow repositoryURL = repoURL