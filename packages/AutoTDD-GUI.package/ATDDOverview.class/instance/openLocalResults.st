action
openLocalResults
	
	^ self watchers collect: [ :each |
		ATDDWatcherResults openForTarget: each ]