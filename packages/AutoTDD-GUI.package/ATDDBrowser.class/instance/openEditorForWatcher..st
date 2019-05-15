as yet unclassified
openEditorForWatcher: aWatcher
	(aWatcher notNil) 
		ifTrue: [ ^ ATDDWatcherEditor openForWatcher: aWatcher ]