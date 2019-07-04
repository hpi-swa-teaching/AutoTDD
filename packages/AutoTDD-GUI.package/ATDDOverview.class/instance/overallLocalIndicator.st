calculation
overallLocalIndicator
	(self allWatchersWithLocalStatus: #executing) size > 0
		ifTrue: [^ ATDDWatcher colorDictionary at: #executing].
	(self allWatchersWithLocalStatus: #errored) size > 0
		ifTrue: [^ ATDDWatcher colorDictionary at: #errored].
	(self allWatchersWithLocalStatus: #failed) size > 0
		ifTrue: [^ ATDDWatcher colorDictionary at: #failed].
	(self allWatchersWithLocalStatus: #unexecuted)  size > 0
		ifTrue: [^ ATDDWatcher colorDictionary at: #unexecuted].
	^ ATDDWatcher colorDictionary at: #passed