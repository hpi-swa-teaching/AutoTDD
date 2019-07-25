calculation
overallLocalIndicator
	
	(self allWatchersWithLocalStatus: #executing)
		ifNotEmpty: [ ^ ATDDWatcher colorDictionary at: #executing ].
	(self allWatchersWithLocalStatus: #errored)
		ifNotEmpty: [ ^ ATDDWatcher colorDictionary at: #errored ].
	(self allWatchersWithLocalStatus: #failed)
		ifNotEmpty: [ ^ ATDDWatcher colorDictionary at: #failed ].
	(self allWatchersWithLocalStatus: #unexecuted)
		ifNotEmpty: [ ^ ATDDWatcher colorDictionary at: #unexecuted ].
	
	^ ATDDWatcher colorDictionary at: #passed