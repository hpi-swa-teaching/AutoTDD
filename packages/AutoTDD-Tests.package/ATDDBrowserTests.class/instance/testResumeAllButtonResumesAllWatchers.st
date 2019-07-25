tests
testResumeAllButtonResumesAllWatchers
	
	self addEmptyWatchers: 5.
	browser pauseAll.
	self assert: (browser watchers allSatisfy: [ :each | each paused ]).
	browser resumeAll.
	self assert: (browser watchers allSatisfy: [ :each | each paused not ])