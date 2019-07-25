action
openInfoForWatcher: aWatcher
	
	aWatcher notNil ifTrue: [ ^ ATDDWatcherInfo openForTarget: aWatcher ]