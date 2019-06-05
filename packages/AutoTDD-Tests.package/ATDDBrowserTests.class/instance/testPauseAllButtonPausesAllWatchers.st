tests
testPauseAllButtonPausesAllWatchers
	self addEmptyWatchers: 5.
	self assert: (browser watchers allSatisfy: [:each | each paused not]).
	browser pauseAllWatchers.
	self assert: (browser watchers allSatisfy: [:each | each paused]).