calculation
overallLocalMessage
	
	| watcherCollection |
	
	(watcherCollection := self allWatchersWithLocalStatus: #executing) ifNotEmpty: [ ^ self messageFor: watcherCollection withStatus: 'Executing' ].
	(watcherCollection := self allWatchersWithLocalStatus: #errored) ifNotEmpty: [ ^ self messageFor: watcherCollection withStatus: 'Errors in' ].
	(watcherCollection := self allWatchersWithLocalStatus: #failed) ifNotEmpty: [ ^ self messageFor: watcherCollection withStatus: 'Failures in' ].
	(watcherCollection := self allWatchersWithLocalStatus: #unexecuted) ifNotEmpty: [ ^ self messageFor: watcherCollection withStatus: 'Has not yet executed' ].
	(watcherCollection := self allWatchersWithLocalStatus: #passed) ifNotEmpty: [ ^ 'All passed' ].
	
	^ 'unknown'