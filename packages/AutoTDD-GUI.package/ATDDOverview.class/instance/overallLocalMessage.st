calculation
overallLocalMessage
	| watcherCollection |
	(watcherCollection := self allWatchersWithLocalStatus: #executing) size > 0
		ifTrue: [^ self messageFor: watcherCollection withStatus: 'Executing'].
	(watcherCollection := self allWatchersWithLocalStatus: #errored) size > 0
		ifTrue: [^ self messageFor: watcherCollection withStatus: 'Errors in'].
	(watcherCollection := self allWatchersWithLocalStatus: #failed) size > 0
		ifTrue: [^ self messageFor: watcherCollection withStatus: 'Failures in'].
	(watcherCollection := self allWatchersWithLocalStatus: #unexecuted) size > 0
		ifTrue: [^ self messageFor: watcherCollection withStatus: 'Has not yet executed'].
	(watcherCollection := self allWatchersWithLocalStatus: #passed) size > 0
		ifTrue: [^ 'All passed'].
	^ 'unknown'