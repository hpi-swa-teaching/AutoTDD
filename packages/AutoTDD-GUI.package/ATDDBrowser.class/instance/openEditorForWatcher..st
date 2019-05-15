as yet unclassified
openEditorForWatcher: aWatcher
	(aWatcher notNil) 
		ifTrue: [ ^ TARPackageSelector openForWatcher: aWatcher ]