action
openEditorForWatcher: aWatcher
	^ (aWatcher notNil) 
		ifTrue: [ ATDDWatcherEditor openForTarget: aWatcher ]