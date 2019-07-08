instance creation
labelFor: aWatcherCollection and: aStatusCollection 
	| watcherString statusString string |
	watcherString := aWatcherCollection
				inject: ''
				into: [:s :e | s , e name].
	statusString := aStatusCollection
				inject: ''
				into: [:s :e | s , e name].
	string := 'Test Auto Runner: Overview'.
	watcherString isEmpty
		ifFalse: [string := string , ' for ' , watcherString].
	statusString isEmpty
		ifFalse: [string := string , ', ' , watcherString].
	^ string