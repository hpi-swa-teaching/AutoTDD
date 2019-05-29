action
openEditorForWatcher: aWatcher
	^ (aWatcher notNil) 
		ifTrue: [ ATDDWatcherEditor openForWatcher: aWatcher ]