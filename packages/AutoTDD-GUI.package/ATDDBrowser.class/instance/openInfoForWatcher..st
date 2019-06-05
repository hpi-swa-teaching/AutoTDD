action
openInfoForWatcher: aWatcher
	(aWatcher notNil) 
		ifTrue: [ ^ ATDDWatcherInfo openForWatcher: aWatcher ]