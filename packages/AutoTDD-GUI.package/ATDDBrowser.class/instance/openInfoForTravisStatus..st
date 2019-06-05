action
openInfoForTravisStatus: aTravisStatus
self flag: #todo.
	(aTravisStatus notNil) 
		ifTrue: [ ^ "ATDDWatcherInfo openForWatcher: aWatcher" self]