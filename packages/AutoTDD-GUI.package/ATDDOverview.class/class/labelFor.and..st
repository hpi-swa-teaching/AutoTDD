instance creation
labelFor: aWatcherCollection and: aStatusCollection 
	| watcherString statusString string |
	self flag:#todo. "Refactor?"
	watcherString := aWatcherCollection
				inject: ''
				into: [:s :e | s , e name, ', '].
	statusString := aStatusCollection
				inject: ''
				into: [:s :e | s , e name, ', '].
	string := 'Test Auto Runner: Overview for ', watcherString, statusString.
	^ string allButLast: 2