action
openResultsForWatcher: aWatcher
	(aWatcher notNil) 
		ifTrue: [ ^ TARStatusGUI openWithData: aWatcher localTestRunner ]