tests
testPauseAllButtonPausesAllWatchers
	self addEmptyWatchers: 5.
	self assert: (browser watchers allSatisfy: [:each | each paused not]).
	browser pauseAll.
	self assert: (browser watchers allSatisfy: [:each | each paused]).