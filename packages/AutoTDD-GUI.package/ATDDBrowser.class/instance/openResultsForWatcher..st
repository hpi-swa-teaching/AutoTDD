action
openResultsForWatcher: aWatcher
	
	aWatcher notNil ifTrue: [ ^ ATDDWatcherResults openForTarget: aWatcher ]