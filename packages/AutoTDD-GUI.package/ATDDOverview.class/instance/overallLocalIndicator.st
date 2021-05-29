calculation
overallLocalIndicator
	
	(self allWatchersWithLocalStatus: 'executing') ifNotEmpty: [ ^ ATDDWatcher imageDictionary at: 'executing' ].
	(self allWatchersWithLocalStatus: 'errored') ifNotEmpty: [ ^ ATDDWatcher imageDictionary at: 'errored' ].
	(self allWatchersWithLocalStatus: 'failed') ifNotEmpty: [ ^ ATDDWatcher imageDictionary at: 'failed' ].
	(self allWatchersWithLocalStatus: 'unexecuted') ifNotEmpty: [ ^ ATDDWatcher imageDictionary at: 'unexecuted' ].
	
	^ ATDDWatcher imageDictionary at: 'passed'