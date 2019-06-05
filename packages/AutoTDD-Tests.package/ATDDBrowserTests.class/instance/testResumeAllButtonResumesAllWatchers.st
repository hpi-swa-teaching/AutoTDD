tests
testResumeAllButtonResumesAllWatchers
	self addEmptyWatchers: 5.
	browser pauseAllWatchers.
	self assert: (browser watchers allSatisfy: [:each | each paused]).
	browser resumeAllWatchers.
	self assert: (browser watchers allSatisfy: [:each | each paused not]).