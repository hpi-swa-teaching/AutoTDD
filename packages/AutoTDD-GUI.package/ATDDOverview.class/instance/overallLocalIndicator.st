calculation
overallLocalIndicator
	
	(self allWatchersWithLocalStatus: #executing) ifNotEmpty: [ ^ ATDDWatcher imageDictonary at: #executing ].
	(self allWatchersWithLocalStatus: #errored) ifNotEmpty: [ ^ ATDDWatcher imageDictonary at: #errored ].
	(self allWatchersWithLocalStatus: #failed) ifNotEmpty: [ ^ ATDDWatcher imageDictonary at: #failed ].
	(self allWatchersWithLocalStatus: #unexecuted) ifNotEmpty: [ ^ ATDDWatcher imageDictonary at: #unexecuted ].
	
	^ ATDDWatcher imageDictonary at: #passed