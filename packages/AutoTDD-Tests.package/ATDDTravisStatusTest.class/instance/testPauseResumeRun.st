as yet unclassified
testPauseResumeRun
	| travisStatus |
	travisStatus := ATDDTravisStatus new.
	travisStatus repositoryURL: self repoURL.
	
	self assert: (travisStatus asString isKindOf: String).
	self assert: travisStatus paused.
	self assert: travisStatus repository cache keys size > 0. "the cache should not be empty because we just requested the status (by calling asString)"
	
	travisStatus refreshInterval: (Time hour: 0 minute: 0 second: 1 ) asSeconds.
	travisStatus resume.
	
	(Delay forSeconds: 2) wait.
	self assert: travisStatus paused not.
	self assert: travisStatus repository cache keys size = 0. "the automatic refreshing should have cleared the cache after 1 seconds"
	
	travisStatus pause.
	self assert: travisStatus paused.