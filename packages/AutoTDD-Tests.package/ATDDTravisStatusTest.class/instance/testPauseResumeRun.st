as yet unclassified
testPauseResumeRun
	| travisStatus time |
	travisStatus := ATDDTravisStatus new.
	travisStatus repositoryURL: self repoURL.
	
	self assert: (travisStatus asStringOrText isKindOf: Text).
	self assert: travisStatus paused.
	self assert: travisStatus repository cache keys size > 1. "the cache should not be empty because we just requested the status (by calling asString)"
	
	time := TimeStamp now asTime asSeconds.
	travisStatus refreshInterval: (Time hour: 0 minute: 0 second: 1 ) asSeconds.
	travisStatus resume.
	
	(Delay forSeconds: 2) wait.
	self assert: travisStatus paused not.
	self assert: (travisStatus repository cache at: #lastRefresh) > time.
	
	travisStatus pause.
	self assert: travisStatus paused.